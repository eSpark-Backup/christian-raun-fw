#ifndef TMC2130
#define TMC2130

#include "basicDef.h"
#include "../stepper.hpp"

#define clockWise                                          0
#define antiClockWise                                      1 

class Tmc2130 : public Stepper
{
    private:
        
    public:
        void run(uint32_t steps, uint32_t freq, uint8_t dir) override; 
        void setup() override;
        void loop() override;

};

void pwm_callback(TC_TIMER_STATUS status, uintptr_t context);
#endif