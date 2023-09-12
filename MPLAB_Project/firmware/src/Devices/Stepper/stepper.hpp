#ifndef STEPPER
#define STEPPER

#include<stdint.h>
#include "../../slave_stack/LAN9255_EtherCAT_Slave.h"
#include "../Observer/observer.h"
#include "../Encoder/Interface/IEncoder.hpp"
#include "math.h"
#include <vector>
#include <algorithm>

class Encoder;

#define DIAG0_INTERRUPT_PIN EIC_PIN_5

typedef enum
{
    CLOCKWISE,
    ANTICLOCKWISE,
} direction_t;

enum motorDiagnostic
{
    NO_ERROR,
    TEMPERATURE_LIMIT_EXCEEDED,
    MOTOR_STALLED,
};

struct rampSettings
{
    float rampDelay;
    float time;
    float displacement;
    direction_t dir;
};

#define STEPS_PER_REVOLUTION 3115 //if error otherwise 3200
#define STEPS_PER_MM (STEPS_PER_REVOLUTION / 2)
#define CALIBRATION_RPM 30.0f
#define ROTATIONS_PER_SEC(rpm) (rpm/60.0f)

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
    RAMP
};

class Stepper
{
    private:
        std::vector<Observer*> observers;
        
    protected:
        direction_t dir;
        void notifyObservers(float rpm, bool dir)
        {
            for (Observer* observer : observers)
            {
                observer->update(rpm, dir);
            }
        }
    
    public: 
        virtual void setup(IEncoder* encoder) {}
        virtual void setRPMSequenceStatus(bool status) {}
        virtual bool isRPMSequenceRunning(void) { return false; }
        virtual void loop(void) {}
        virtual void run(rampSettings* rs) {}
        virtual void run(float rpm, direction_t dir, uint32_t steps) {} 
        virtual void run(float rpm, direction_t dir) {}
        virtual void run(bool operationStart = false) {}
        virtual void stop(void) {}
        virtual bool isRunning(void) { return false;}
        virtual void resetMaxToggleCount(void) {}
        virtual void calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement = 0) {}
        virtual void calculateRamp(rampSettings* rs) {}
        void addObserver(Observer* observer)
        {
            observers.push_back(observer);
        }
        
        void removeObserver(Observer* observer)
        {
            // Remove the observer from the vector
            observers.erase(std::remove(observers.begin(), observers.end(), observer), observers.end());
        }
        
        float toFrequency(float rpm)
        {
            return (ROTATIONS_PER_SEC(rpm) * STEPS_PER_REVOLUTION);
        }
};

#endif