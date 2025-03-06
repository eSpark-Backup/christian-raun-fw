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
        dataOutPacket* dataOut;
        IEncoder* encoder;
        float displacementRamp[rampSteps+1] = {0};
        float rampRPMArr[rampSteps+1] = {0};
        bool rpmSequenceStatus = false;
        uint32_t rampStepsCount = 0;
         
    public:       
        bool isRPMSequenceRunning(void) override;
        void setRPMSequenceStatus(bool status) override;
        void incrementRampCount(void) override;
        void resetRampCount(void) override;
        uint32_t getRampCount(void) override;
        void setup(IEncoder* encoder, dataOutPacket* dataOut) override;
        void loop(void) override;
        void run(rampSettings* rs) override;
        void run(float rpm, direction_t dir, uint32_t steps) override; 
        void run(float rpm, direction_t dir) override; 
        void run(bool operationStart = false) override;
        void stop(void) override;
        bool isRunning(void) override;
        void resetMaxToggleCount(void) override;
        void calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement= 0) override;
        bool calculateRamp(rampSettings* rs) override;
        
};

typedef struct {
    Tmc2130* stepper;
    dataOutPacket* dataOut;
} PWMCallbackArgs;

void pwm_callback(TC_TIMER_STATUS status, uintptr_t context);
#endif