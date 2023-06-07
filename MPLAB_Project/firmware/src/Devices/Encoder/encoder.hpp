#ifndef ENCODER
#define ENCODER

class Encoder
{
    private:
        
    public:
        virtual void setup() {}
        virtual void loop() {}
        virtual void getAngleValue(double &angleValue) {}
        virtual float calculateDisplacement(double angle, bool dir) { return 0;}
};
#endif