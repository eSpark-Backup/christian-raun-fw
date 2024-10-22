#ifndef TMC2130
#define TMC2130

#include "basicDef.h"
#include "../stepper.hpp"
#include "../TMCStepper/TMCStepper.hpp"
#include "../../Encoder/Interface/IEncoder.hpp"

// Fixed Params
#define displacementFactor 2
#define maxRPM 200
#define minRPM 1
#define rampSteps 10
#define tcc1BaseClkFreq 60000000U
#define motorStallFlagPosition      0
#define motorOvertempFlagPos        1

class Tmc2130 : public Stepper
{
    private:
        IEncoder* encoder;
        float displacementRamp[rampSteps+1] = {0};
        float rampRPMArr[rampSteps+1] = {0};
        bool rpmSequenceStatus;
        // volatile ErrorFlags errors;

        WorkerThread* worker;

    public:
        TMC2160Stepper* driver;

        bool isRPMSequenceRunning(void) override;
        void setRPMSequenceStatus(bool status) override;
        void setup(TMC2160Stepper* driver, IEncoder* encoder, dataOutPacket* dataOut, WorkerThread* thread) override;
        void loop(void) override;
        void run(rampSettings* rs) override;
        void run(float rpm, direction_t dir, uint32_t steps) override;
        void run(float rpm, direction_t dir) override;
        void run(bool operationStart = false) override;
        void stop(void) override;
        bool isRunning(void) override;
        void setStallFlag(uint8_t flag)    override;
        void setOvertempFlag(uint8_t flag) override;
        uint8_t isErrorPresent(void) override;
        void resetMaxToggleCount(void) override;
        void calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement= 0) override;
        void calculateRamp(rampSettings* rs) override;
        
};

typedef struct {
    Tmc2130* stepper;
    dataOutPacket* dataOut;
} PWMCallbackArgs;

void calculatePrescaler(float time, uint32_t* scaler, uint32_t* tc4Period);             // calculates prescaler and period of TC4 timer which turns off motor PWM
void tc4PrescalerSet(uint32_t scaler);
void tc4Callback(TC_TIMER_STATUS status, uintptr_t context);
void pwmCallback(TC_TIMER_STATUS status, uintptr_t context);

#endif