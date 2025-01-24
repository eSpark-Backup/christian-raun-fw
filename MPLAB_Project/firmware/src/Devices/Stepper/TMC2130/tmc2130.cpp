#include "tmc2130.hpp"
#include "../../Encoder/TLE5012b/tle5012b.hpp"

volatile uint32_t maxToggleCount=0;
volatile uint32_t toggleCounter=0; 

void Tmc2130::setup(IEncoder* encoder, dataOutPacket* dataOut)
{
    PWMCallbackArgs* args = new PWMCallbackArgs;
    args->stepper = this;
    args->dataOut = dataOut;
    
    this->dataOut = dataOut;

    TC4_TimerCallbackRegister(pwm_callback, (uintptr_t) args);
    this->encoder = encoder;
}

bool Tmc2130::isRPMSequenceRunning() {
    return rpmSequenceStatus;
}

void Tmc2130::setRPMSequenceStatus(bool status) {
    this->rpmSequenceStatus = status;
}

void Tmc2130::loop()
{
    STEP_Toggle();
    toggleCounter++;
    if(toggleCounter == maxToggleCount)
    {
        stop();
    }
}

void Tmc2130::run(float rpm, direction_t dir, uint32_t steps)
{    
    if(steps != maxToggleCount/2)
    {
        if (!isRunning())
        {   
            if (!rpm)
            {
                return;
            }       
            maxToggleCount = steps * 2;
            if (maxToggleCount)
            {
                run(rpm, dir);
            }
        }
    } 
}

void Tmc2130::run(float rpm, direction_t dir)
 {
    PORT_PinWrite(DIR_PIN, dir);
    float frequency = toFrequency(rpm);
    float timeSec = (1.0/frequency) / 2;
    uint32_t period = timeSec / 0.0000000166667;
    TC4_TimerStop();
    TC4_Timer32bitPeriodSet(period);
    TC4_TimerStart();
    
    notifyObservers(rpm, dir);
}

void Tmc2130::stop(void)
{
    toggleCounter =0;
    encoder->motorStopped();
    TC4_TimerStop();
}

void Tmc2130::resetMaxToggleCount(void)
{
    maxToggleCount = 0;
}

void Tmc2130::calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement)
{
    uint32_t steps = 0;
    
    switch (mode)
    {      
        case CALIBRATION_SEQUENCE_01:        
            switch(out->deviceStatus)
            {
                case None:
                    resetMaxToggleCount();
                    run(CALIBRATION_RPM, ANTICLOCKWISE);
                    out->deviceStatus = CALIBRATION_SEQUENCE_01_STARTED;  
                    break;

                case CALIBRATION_SEQUENCE_01_STARTED:
                    if (encoder->isMotorStalled())
                    {
                        stop();
                        out->deviceStatus = CALIBRATION_SEQUENCE_01_SUCCESS;
//                        encoder->setZeroOffset();
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
                case None:
                    resetMaxToggleCount();
                    steps = displacement * STEPS_PER_MM;
                    run(CALIBRATION_RPM, CLOCKWISE, steps);
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
                        encoder->setZeroOffset();
                        out->deviceStatus = CALIBRATION_SEQUENCE_02_SUCCESS;
                    }
                    break;
                   
                case CALIBRATION_SEQUENCE_02_SUCCESS:
                    break;
                    
                default:
                    out->deviceStatus = None;
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
    PWMCallbackArgs* args = (PWMCallbackArgs*)context;
    Tmc2130* stepper = args->stepper;
    dataOutPacket* dataOut = args->dataOut;
    stepper->loop();
    
    if(stepper->isRPMSequenceRunning())
    {
        if (!stepper->isRunning())
        {    
            stepper->run();
            rampStepsCount++;
            if(((rampSteps * 2)) == rampStepsCount )
            {
                rampStepsCount = 0;
                stepper->setRPMSequenceStatus(false);
                dataOut->deviceStatus = RAMP_SEQUENCE_COMPLETED;
            }
        }
    }
}

bool Tmc2130::isRunning(void)
{
    return (TC4_REGS->COUNT16.TC_CTRLA & TC_CTRLA_ENABLE_Msk);
}

bool Tmc2130::calculateRamp(rampSettings* rs)
{
    bool isRampValid = true;
    
    float requiredRotations = rs->displacement / displacementFactor;
    float requiredRPM = (requiredRotations / rs->time) * 60;
    float rampRPM = requiredRPM / rampSteps;
    float timePerStep = rs->rampDelay / rampSteps;
    float displacementPerStep = timePerStep * (rampRPM / 60) * displacementFactor;
    float totalDisplacementPerRamp = 0;
    for (int j = 1; j <= rampSteps; j++)
    {
        displacementRamp[j-1] = displacementPerStep * j;
        totalDisplacementPerRamp += displacementRamp[j-1];
        rampRPMArr[j-1] = rampRPM *j;
    }
    float requiredDisplacementWithoutRamps = rs->displacement - (totalDisplacementPerRamp * 2);
    displacementRamp[rampSteps] = requiredDisplacementWithoutRamps;
    float timeWithoutRamps = rs->time - (rs->rampDelay * 2);
    float requiredRotationsWithoutRamps = requiredDisplacementWithoutRamps / displacementFactor;
    float requiredRPMAfterWithoutRamps = (requiredRotationsWithoutRamps / timeWithoutRamps) * 60;
    rampRPMArr[rampSteps] = requiredRPMAfterWithoutRamps;
    
    for(int i = 0; i<=rampSteps; i++)
    {
        if((rampRPMArr[i] > 200) || (rampRPMArr[i] < 0))
        {
            this->dataOut->motorDiagnostic = INVALID_RAMP_SEQUENCE;
            isRampValid = false;
        }
    }
    
    return isRampValid;
}

void Tmc2130::run(rampSettings* rs)
{  
    if (isRunning())
        return;
    
    if( (0 == rs->rampDelay) | (0 == rs->time))
        return;
        
    if (0 == rs->displacement)
        return;
    
    if(!calculateRamp(rs))
        return;
    
    this->dir = rs->dir;
    run(true);
}

void Tmc2130::run(bool operationStart)
{   
    setRPMSequenceStatus(true);
    static uint32_t n;
    if (operationStart)
    {
        n = 0;
    }
    maxToggleCount =0;
    static bool downCount = false;
    uint32_t steps = displacementRamp[n] * STEPS_PER_MM;
    
    run(rampRPMArr[n], this->dir, steps);
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
