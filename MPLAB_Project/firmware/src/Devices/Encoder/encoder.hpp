#ifndef ENCODER
#define ENCODER

class Encoder
{
    private:
        
    public:
        bool operationEnd = true;
        virtual void setup() {}
        virtual void loop() {}
        virtual void getAngleValue(double &angleValue) {}
        virtual float calculateDisplacement(void) { return 0;}
        virtual bool isMotorStalled(void) { return false;}
        virtual void setZeroOffset(void) {}
};
#endif