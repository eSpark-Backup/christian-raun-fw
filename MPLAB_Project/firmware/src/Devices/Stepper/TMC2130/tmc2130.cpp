#include "tmc2130.hpp"
uint32_t interruptCount=0;
uint32_t freqCount=0;
bool runStatus = false;

void Tmc2130::setup()
{
    
}

void Tmc2130::loop()
{
    static uint16_t delay = 0;
    if (delay > 3)
    {
        if (runStatus)
        {
            interruptCount++;
            STEP_Toggle();
        }

        if(interruptCount >= freqCount * 2)
        {
            interruptCount = 0;
            runStatus = false;
        }  
        delay = 0;
    }
    delay++;
}

void Tmc2130::run(uint32_t freq, uint8_t dir)
{    
    PORT_PinWrite(DIR_PIN, dir);
    if (!freq)
    {
        return;
    }
    freqCount = freq;
    
  
}

/* Timer Interrupt handler */
// Timer interrupts after every 1 microseconds
extern "C" void TC1_TimerInterruptHandler( void )
{
    if (TC1_REGS->COUNT16.TC_INTENSET != 0U)
    {
        TC_TIMER_STATUS status;
        status = (TC_TIMER_STATUS) TC1_REGS->COUNT16.TC_INTFLAG;
        /* Clear interrupt flags */
        TC1_REGS->COUNT16.TC_INTFLAG = (uint8_t)TC_INTFLAG_Msk;
        if((status != TC_TIMER_STATUS_NONE)){}
    }
    
   
}

