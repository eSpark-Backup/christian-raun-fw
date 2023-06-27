#ifndef TMC2130
#define TMC2130

#include "basicDef.h"
#include "../stepper.hpp"

// Fixed Params
#define displacementFactor 2
#define maxRPM 200
#define minRPM 1
#define rampSteps 10

class Tmc2130 : public Stepper
{
    private:
        Encoder* encoder;
        
    public:
        static direction dir;
        static float rpm;
        
        void setup(Encoder* encoder) override;
        void loop(void) override;
        void run(float rpm, uint32_t steps, float freq, direction dir) override;
        void run(uint32_t steps, float freq, direction dir) override; 
        void run(float freq, direction dir) override; 
        void run(void) override;
        void stop(void) override;
        bool isRunning(void) override;
        void resetMaxToggleCount(void) override;
        void calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement= 0) override;
        void calculateRamp(float rampDelay, float time, float displacement) override;
};

void pwm_callback(TC_TIMER_STATUS status, uintptr_t context);
#endif