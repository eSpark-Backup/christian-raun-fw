#ifndef ENCODER
#define ENCODER

#include "../Stepper/stepper.hpp"
class Encoder
{
    private:
        
    public:
        virtual void setup() {}
        virtual void loop() {}
        virtual void getAngleValue(double &angleValue) {}
        virtual float calculateDisplacement(double angle, direction dir) { return 0;}
};
#endif