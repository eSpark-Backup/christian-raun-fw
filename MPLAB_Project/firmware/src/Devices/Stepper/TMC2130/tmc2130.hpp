#ifndef TMC2130
#define TMC2130

#include "basicDef.h"
#include "../stepper.hpp"
#include "../../Encoder/Interface/IEncoder.hpp"

// Fixed Params
#define displacementFactor 2
#define maxRPM 200
#define minRPM 1
#define rampSteps 10

class Tmc2130 : public Stepper
{
    private:
        IEncoder* encoder;
        float displacementRamp[rampSteps+1] = {0};
        float rampRPMArr[rampSteps+1] = {0};
        
    public:       
        void setup(IEncoder* encoder) override;
        void loop(void) override;
        void run(rampSettings* rs) override;
        void run(float rpm, direction_t dir, uint32_t steps) override; 
        void run(float rpm, direction_t dir) override; 
        void run(bool operationStart = false) override;
        void stop(void) override;
        bool isRunning(void) override;
        void resetMaxToggleCount(void) override;
        void calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement= 0) override;
        void calculateRamp(rampSettings* rs) override;
        
};

void pwm_callback(TC_TIMER_STATUS status, uintptr_t context);
#endif