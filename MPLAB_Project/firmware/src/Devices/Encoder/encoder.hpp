#ifndef ENCODER
#define ENCODER

#include "../Observer/observer.h"

class Encoder : public Observer
{
    protected:
        float rpm;
        bool dir;
        
    public:
        bool operationEnd = true;
        virtual void setup() {}
        virtual void loop() {}
        virtual void getAngleValue(double &angleValue) {}
        virtual float calculateDisplacement(void) { return 0;}
        virtual bool isMotorStalled() { return false;}
        virtual void setZeroOffset(void) {}
        void update(float rpm, bool dir) override
        {
            // Update the stored rpm and direction when notified by the Stepper
            this->rpm = rpm;
            this->dir = dir;
        }
};

#endif