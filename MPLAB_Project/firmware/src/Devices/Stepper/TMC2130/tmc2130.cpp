#include "tmc2130.hpp"

direction Tmc2130::dir = CLOCKWISE;
float Tmc2130::rpm = 0;

volatile uint32_t interruptCount=0;
uint32_t freqCount=0;
volatile uint32_t maxToggleCount=0;
volatile uint32_t toggleCounter=0;

bool runStatus = false;
bool runningRPMSequence = false;

float displacementRamp[rampSteps+1] = {0};
float rampRPMArr[rampSteps+1] = {0};

void Tmc2130::setup(Encoder* encoder)
{
    TC1_TimerCallbackRegister(pwm_callback, (uintptr_t) this);
    this->encoder = encoder;
}

void Tmc2130::loop()
{
    STEP_Toggle();
    toggleCounter++;
    if(toggleCounter == maxToggleCount)
    {
        toggleCounter =0;
        TC1_TimerStop();
    }
}

void Tmc2130::run(float rpm, uint32_t steps, float freq, direction dir)
{
    if(!isRunning())
    {
        this->rpm = rpm;
    }
    run(steps, freq, dir);
}

void Tmc2130::run(uint32_t steps, float freq, direction dir)
{    
    this->dir = dir;
    if(steps != maxToggleCount/2)
    {
        if (0 == toggleCounter)
        {
            if (!freq)
            {
                return;
            }
            maxToggleCount = steps * 2;
            if (maxToggleCount)
            {
                run(freq, dir);
            }
        }
    }    
}

void Tmc2130::run(float freq, direction dir)
{
    this->dir = dir;
    PORT_PinWrite(DIR_PIN, dir);
    float timeSec = (1.0/freq) / 2;
    uint16_t period = timeSec / 0.0000000166667;
    TC1_Timer16bitPeriodSet(period);
    TC1_TimerStart();
}

void Tmc2130::stop(void)
{
    toggleCounter =0;
    encoder->operationEnd = true;
    TC1_TimerStop();
}

void Tmc2130::resetMaxToggleCount(void)
{
    maxToggleCount =0;
}

void Tmc2130::calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement)
{
    uint32_t steps, frequency = 0;
    
    switch (mode)
    {      
        case CALIBRATION_SEQUENCE_01:        
            switch(out->deviceStatus)
            {
                case None:
                    frequency = ROTATIONS_PER_SEC(CALIBRATION_RPM) * STEPS_PER_REVOLUTION;
                    run(frequency, ANTICLOCKWISE);
                    out->deviceStatus = CALIBRATION_SEQUENCE_01_STARTED;  
                    break;

                case CALIBRATION_SEQUENCE_01_STARTED:
                    if (encoder->isMotorStalled(30))
                    {
                        stop();
                        out->deviceStatus = CALIBRATION_SEQUENCE_01_SUCCESS;
                        encoder->setZeroOffset();
                    }
                    break;  

                case CALIBRATION_SEQUENCE_01_SUCCESS:
                    break;

                default:
                    out->deviceStatus = None;
                    break;
            }
            break;
        
        case CALIBRATION_SEQUENCE_02:
            switch(out->deviceStatus)
            {
                case CALIBRATION_SEQUENCE_01_SUCCESS:
                    frequency = ROTATIONS_PER_SEC(CALIBRATION_RPM) * STEPS_PER_REVOLUTION;
                    steps = (displacement/ 3200.0) * STEPS_PER_REVOLUTION;
                    run(CALIBRATION_RPM, steps, frequency, CLOCKWISE);
                    out->deviceStatus = CALIBRATION_SEQUENCE_02_STARTED;
                    break;
                    
                case CALIBRATION_SEQUENCE_02_STARTED:
                    if (MOTOR_STALLED == out->motorDiagnostic)
                    {
                        out->deviceStatus = CALIBRATION_SEQUENCE_02_FAILED;
                    }  
                    else if (!isRunning())
                    {
                        resetMaxToggleCount();
                        out->deviceStatus = CALIBRATION_SEQUENCE_02_SUCCESS;
                    }
                    break;
                    
                default:
                    break;
            }
            break;
            
        default:
            break;   
    }
}
/* Timer Interrupt handler */
void pwm_callback(TC_TIMER_STATUS status, uintptr_t context)
{ 
    static uint32_t rampStepsCount = 0;
    Tmc2130* stepper = (Tmc2130*)context;
    stepper->loop();
    
    if(runningRPMSequence)
    {
        if (!stepper->isRunning())
        {
            stepper->run();
            rampStepsCount++;
            if(((rampSteps * 2)) == rampStepsCount )
            {
                rampStepsCount = 0;
                runningRPMSequence = false;
            }
        }
    }
}

bool Tmc2130::isRunning(void)
{
    return (TC1_REGS->COUNT16.TC_CTRLA & TC_CTRLA_ENABLE_Msk);
}

void Tmc2130::runRamp(float rampDelay, float time, float displacement, direction dir)
{  
    if (isRunning())
        return;
    
    if( (0 == rampDelay) | (0 == time))
        return;
    
    static float disp = 0;
    
    if (disp == displacement)
        return; 
    
    disp = displacement;
    
    if (0 == displacement)
        return;
    
    
    float requiredRotations = displacement / displacementFactor;
    float requiredRPM = (requiredRotations / time) * 60;
    float rampRPM = requiredRPM / rampSteps;
    float timePerStep = rampDelay / rampSteps;
    float displacementPerStep = timePerStep * (rampRPM / 60) * displacementFactor;
    float totalDisplacementPerRamp = 0;
    for (int j = 1; j <= rampSteps; j++)
    {
        displacementRamp[j-1] = displacementPerStep * j;
        totalDisplacementPerRamp += displacementRamp[j-1];
        rampRPMArr[j-1] = rampRPM *j;
    }
    float requiredDisplacementWithoutRamps = displacement - (totalDisplacementPerRamp * 2);
    displacementRamp[rampSteps] = requiredDisplacementWithoutRamps;
    float timeWithoutRamps = time - (rampDelay * 2);
    float requiredRotationsWithoutRamps = requiredDisplacementWithoutRamps / displacementFactor;
    float requiredRPMAfterWithoutRamps = (requiredRotationsWithoutRamps / timeWithoutRamps) * 60;
    rampRPMArr[rampSteps] = requiredRPMAfterWithoutRamps;
    
    this->dir = dir;
    run(true);
}

void Tmc2130::run(bool operationStart)
{
    runningRPMSequence =true;
    static uint32_t n;
    if (operationStart)
    {
        n = 0;
    }
    maxToggleCount =0;
    static bool downCount = false;
    float frequency = ROTATIONS_PER_SEC(rampRPMArr[n]) * STEPS_PER_REVOLUTION;
    uint32_t steps = displacementRamp[n] * STEPS_PER_MM;
    
    run(rampRPMArr[n], steps, frequency, this->dir);
    if(rampSteps == n)
    {
        downCount = true;
    }
    else if(0 == n)
    {
        downCount = false;
    }
    
    if(downCount)
        n--;
    else 
        n++;
}