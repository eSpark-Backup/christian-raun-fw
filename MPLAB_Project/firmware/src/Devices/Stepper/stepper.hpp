#ifndef STEPPER
#define STEPPER

#include "../../slave_stack/LAN9255_EtherCAT_Slave.h"
#include "../Encoder/TLE5012b/tle5012b.hpp"
#include "math.h"

#define DIAG0_INTERRUPT_PIN EIC_PIN_5

enum direction
{
    CLOCKWISE,
    ANTICLOCKWISE,
};

enum motorDiagnostic
{
    NO_ERROR,
    TEMPERATURE_LIMIT_EXCEEDED,
    MOTOR_STALLED,
};

#define STEPS_PER_REVOLUTION 3115 //if error otherwise 3200
#define CALIBRATION_RPM 30
#define ROTATIONS_PER_SEC(rpm) (rpm/60.0)
#define TO_MS(seconds)  (seconds * 1000)

enum deviceStatus 
{
    None=0,
    CALIBRATION_SEQUENCE_01_STARTED,
    CALIBRATION_SEQUENCE_01_FAILED,
    CALIBRATION_SEQUENCE_01_SUCCESS,
    CALIBRATION_SEQUENCE_02_STARTED,
    CALIBRATION_SEQUENCE_02_FAILED,
    CALIBRATION_SEQUENCE_02_SUCCESS,
    ETHERCAT_LINK_DOWN,
};

enum stepperAppModes
{
    DISPLACEMENT,
    TIME,
    CALIBRATION_SEQUENCE_01,
    CALIBRATION_SEQUENCE_02,
    ABORT_OPERATION,
};

class Stepper
{
    private:
        
    public:        
        virtual void setup(Encoder* encoder) {}
        virtual void loop(void) {}
        virtual void run(uint32_t steps, float freq, direction dir) {} 
        virtual void run(float freq, direction dir) {}
        virtual void stop(void) {}
        virtual bool isRunning(void) { return false;}
        virtual void resetMaxToggleCount(void) {}
        virtual void calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement = 0) {}
};

#ifdef __cplusplus
extern "C" {
#endif
uint32_t millis(void);
#ifdef __cplusplus
}
#endif
#endif