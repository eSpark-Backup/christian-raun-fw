#include "timer.hpp"

static uint32_t ms_count =0;

void Timer::setup()
{
    TC2_TimerCallbackRegister(msCounter, (uintptr_t)NULL);
    TC2_TimerStart();
}

/* Timer Interrupt handler 1ms */
void Timer::msCounter(TC_TIMER_STATUS status, uintptr_t context)
{ 
    ms_count++;
}

extern "C" 
{
    uint32_t millis(void)
    {
        return ms_count;
    }
}