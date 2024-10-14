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
#define TCC1_BASE_CLK_FREQ 60000000U

class Tmc2130 : public Stepper
{
    private:
        IEncoder* encoder;
        float displacementRamp[rampSteps+1] = {0};
        float rampRPMArr[rampSteps+1] = {0};
        bool rpmSequenceStatus;

        TMC2160Stepper* driver;
        // static Tmc2130* instance;
         
        // Tmc2130()
        // {        }

    public:
        // static Tmc2130* getInstance() {
        //     if (instance == nullptr) {
        //         instance = new Tmc2130();  // Create the instance if it doesn't exist
        //     }
        //     return instance;
        // }
        // ~Tmc2130()
        // {        }
        bool isRPMSequenceRunning(void) override;
        void setRPMSequenceStatus(bool status) override;
        void setup(TMC2160Stepper* driver, IEncoder* encoder, dataOutPacket* dataOut) override;
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

typedef struct {
    Tmc2130* stepper;
    dataOutPacket* dataOut;
} PWMCallbackArgs;

void calculatePrescaler(float time, uint32_t* scaler, uint32_t* tc4Period);             // calculates prescaler and period of TC4 timer which turns off motor PWM
void tc4PrescalerSet(uint32_t scaler);
void tc4Callback(TC_TIMER_STATUS status, uintptr_t context);
void pwmCallback(TC_TIMER_STATUS status, uintptr_t context);
#endif