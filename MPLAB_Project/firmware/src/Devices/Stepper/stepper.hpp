#ifndef STEPPER
#define STEPPER

#define STEPS_PER_REVOLUTION 3115 //if error otherwise 3200

class Stepper
{
    private:
        
    public:
        virtual void run(uint32_t steps, float freq, uint8_t dir) {} 
        virtual void setup() {}
        virtual void loop() {}

};
#endif