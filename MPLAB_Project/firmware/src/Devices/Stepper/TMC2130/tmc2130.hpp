#ifndef TMC2130
#define TMC2130

#include "basicDef.h"
#include "../stepper.hpp"

class Tmc2130 : public Stepper
{
    private:
        
    public:
        static direction dir;
        static direction getDirection(void);
        
        void setup(void) override;
        void loop(void) override;
        void run(uint32_t steps, float freq, direction dir) override; 
        void run(float freq, direction dir) override; 
        void stop(void) override;
        bool isRunning(void) override;
        void resetMaxToggleCount(void) override;
        void calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement= 0) override;
};

void pwm_callback(TC_TIMER_STATUS status, uintptr_t context);
#endif