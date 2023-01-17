#ifndef STEPPER
#define STEPPER

class Stepper
{
    private:
        
    public:
        virtual void run(uint32_t freq, uint8_t dir) {} 
        virtual void setup() {}
        virtual void loop() {}

};
#endif