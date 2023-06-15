#ifndef ENCODER
#define ENCODER

#include "../Stepper/TMC2130/tmc2130.hpp"
class Encoder
{
    private:
        
    public:
        virtual void setup() {}
        virtual void loop() {}
        virtual void getAngleValue(double &angleValue) {}
        virtual float calculateDisplacement(void) { return 0;}
        virtual bool isMotorStalled(void) { return false;}
};
#endif