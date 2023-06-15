#include "tmc2130.hpp"

direction Tmc2130::dir = CLOCKWISE;

volatile uint32_t interruptCount=0;
uint32_t freqCount=0;
volatile uint32_t maxToggleCount=0;
volatile uint32_t toggleCounter=0;

bool runStatus = false;

void Tmc2130::setup()
{
    TC1_TimerCallbackRegister(pwm_callback, (uintptr_t) this);
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
    TC1_TimerStop();
}

void Tmc2130::resetMaxToggleCount(void)
{
    maxToggleCount =0;
}

void Tmc2130::calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement)
{
    static float calibPosition =0;
    static uint32_t calibPreviousMillis =0, calibCurrentMillis =0;
    uint32_t steps, frequency = 0;
    
    switch (mode)
    {      
        case CALIBRATION_SEQUENCE_01:        
            switch(out->deviceStatus)
            {
                case None:
                    frequency = ROTATIONS_PER_SEC(CALIBRATION_RPM) * STEPS_PER_REVOLUTION;
                    run(frequency, ANTICLOCKWISE);
                    calibPreviousMillis = millis();
                    calibPosition = out->position;
                    out->deviceStatus = CALIBRATION_SEQUENCE_01_STARTED;  
                    break;

                case CALIBRATION_SEQUENCE_01_STARTED:
                    calibCurrentMillis = millis();
                    if ((calibCurrentMillis - calibPreviousMillis) > TO_MS(5))
                    {
                        if (fabs(calibPosition - out->position) < 1.0)
                        {
                            stop();
                            out->deviceStatus = CALIBRATION_SEQUENCE_01_SUCCESS;
                        }
                        else
                        {
                            calibPosition = out->position;
                        }  
                        calibPreviousMillis = calibCurrentMillis;
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
                    run(steps, frequency, CLOCKWISE);
                    out->deviceStatus = CALIBRATION_SEQUENCE_02_STARTED;
                    break;
                    
                case CALIBRATION_SEQUENCE_02_STARTED:
                    if (!isRunning())
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
    Tmc2130* stepper = (Tmc2130*)context;
    stepper->loop();
}

bool Tmc2130::isRunning(void)
{
    return (TC1_REGS->COUNT16.TC_CTRLA & TC_CTRLA_ENABLE_Msk);
}
