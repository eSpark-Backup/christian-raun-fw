#include "tmc2130.hpp"
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
                PORT_PinWrite(DIR_PIN, dir);
                float timeSec = (1.0/freq) / 2;
                uint16_t period = timeSec / 0.0000000166667;
                TC1_Timer16bitPeriodSet(period);
                TC1_TimerStart();
            }
        }
    }    
}

void Tmc2130::run(float freq, direction dir)
{
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
