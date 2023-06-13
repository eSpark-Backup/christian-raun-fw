#ifndef STEPPER
#define STEPPER

enum direction
{
    CLOCKWISE,
    ANTICLOCKWISE,
};

#define STEPS_PER_REVOLUTION 3115 //if error otherwise 3200
#define CALIBRATION_RPM 30
#define ROTATIONS_PER_SEC(rpm) (rpm/60.0)

enum deviceStatus 
{
    None=0,
    CALIBRATION_SEQUENCE_01_STARTED,
    CALIBRATION_SEQUENCE_01_FAILED,
    CALIBRATION_SEQUENCE_01_SUCCESS,
    CALIBRATION_SEQUENCE_02_STARTED,
    CALIBRATION_SEQUENCE_02_FAILED,
    CALIBRATION_SEQUENCE_02_SUCCESS,
};

class Stepper
{
    private:
        
    public:
        virtual void setup(void) {}
        virtual void loop(void) {}
        virtual void run(uint32_t steps, float freq, direction dir) {} 
        virtual void run(float freq, direction dir) {}
        virtual void stop(void) {}
        virtual bool isRunning(void) { return false;}
        virtual void resetMaxToggleCount(void) {}
};
#endif