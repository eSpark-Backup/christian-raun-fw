#ifndef ENCODER
#define ENCODER

#include "../Observer/observer.h"
#include "Interface/IEncoder.hpp"

class Encoder : public Observer, public IEncoder
{
    protected:
        float rpm;
        bool dir;
        
    public:
        virtual void setup() {}
        virtual void loop() {}
        virtual void getAngleValue(double &angleValue) {}
        virtual float calculateDisplacement(void) { return 0;}
        bool isMotorStalled() override { return false;}
        void setZeroOffset(void) override {}
        void update(float rpm, bool dir) override
        {
            // Update the stored rpm and direction when notified by the Stepper
            this->rpm = rpm;
            this->dir = dir;
        }
};

#endif