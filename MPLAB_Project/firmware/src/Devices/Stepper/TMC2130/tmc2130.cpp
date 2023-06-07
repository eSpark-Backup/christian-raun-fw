#include "tmc2130.hpp"
volatile uint32_t interruptCount=0;
uint32_t freqCount=0;
volatile uint32_t totalSteps=0;
volatile uint32_t toggleCounter=0;

bool runStatus = false;

void Tmc2130::setup()
{
    TC1_TimerCallbackRegister(pwm_callback, (uintptr_t) this);
    TC1_TimerStart();
}

void Tmc2130::loop()
{
    if (runStatus)
    {
        if (freqCount ==0 )
        {
            return;
        }
        interruptCount++;

        if (interruptCount == freqCount)
        {
            STEP_Toggle();
            interruptCount=0;
            toggleCounter++;
            if(toggleCounter == (totalSteps*2))
            {
                toggleCounter =0;
                runStatus = false;
            }
        }
    }
}

void Tmc2130::run(uint32_t steps, uint32_t freq, uint8_t dir)
{    
    if(steps != totalSteps)
    {
        if (false == runStatus)
        {
            if (!freq)
            {
                freqCount=0;
                return;
            }
            totalSteps = steps;
            if (totalSteps)
            {
                PORT_PinWrite(DIR_PIN, dir);
                uint32_t timeNs = float( (1.0/freq) ) * 1000000;
                freqCount = timeNs/ 2;
                runStatus = true;
            }
        }
    }    
}

/* Timer Interrupt handler */
// Timer interrupts after every 1 microseconds
void pwm_callback(TC_TIMER_STATUS status, uintptr_t context)
{ 
    Tmc2130* stepper = (Tmc2130*)context;
    stepper->loop();
}
