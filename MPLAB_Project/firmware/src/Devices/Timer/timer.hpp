#ifndef TIMER
#define TIMER

#include "basicDef.h"

#define TO_MS(seconds)  (seconds * 1000)

class Timer
{       
    private: 
        static void msCounter(TC_TIMER_STATUS status, uintptr_t context);
        
    public:
        void setup();

};

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

uint32_t millis(void);
void delay(uint16_t period);

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // TIMER