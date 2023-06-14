#include "app.hpp"

Stepper* stepper;
Encoder* encoder; 
direction dir=ANTICLOCKWISE;
float frequency=0;
uint32_t diagTime=0;
uint32_t steps =0;

uint8_t diagErr=0;
extern uint8_t diagErrIntr;

static appState state;
double position;

uint32_t ms_count =0;

void App::setup()
{
    SYS_Initialize ( NULL );
    APP_Initialize();

    TC2_TimerCallbackRegister(msCounter, (uintptr_t)NULL);
    TC2_TimerStart();
    
    state = eTasks;

    stepper = new Tmc2130;
    encoder = new Tle5012b;
    encoder->setup();
    stepper->setup();
}

void App::loop()
{      
    bool status;
    switch (state)
    {                
        case eTasks:
            APP_Tasks();
            state = eModeSelection;
            break;
            
        case eModeSelection:
            switch(dataIn.mode) 
            {
                case DISPLACEMENT:
                   dataOut.deviceStatus = None;
                   state = eStepper;
                   break;
                   
                case TIME:
                    state = eStepper;
                    break;
                    
                case CALIBRATION_SEQUENCE_01:
                    state = eCalibration_01;
                    break;
                    
                case CALIBRATION_SEQUENCE_02:
                    state = eCalibration_02;
                    break;
                    
                default:
                    state = eStepperPosition;
                    break;
            }
            
            break;
            
        case eCalibration_01:
            dir=ANTICLOCKWISE;
            stepper->calibrate(CALIBRATION_SEQUENCE_01, &dataOut);
            state = eStepperPosition;
            break;
            
        case eCalibration_02:
            stepper->calibrate(CALIBRATION_SEQUENCE_02, &dataOut, dataIn.displacement);
            state = eStepperPosition;
            break;
            
        case eStepper:
            frequency = ROTATIONS_PER_SEC(dataIn.rpm) * STEPS_PER_REVOLUTION;
            steps = (dataIn.displacement/ 3200.0) * STEPS_PER_REVOLUTION;
            dir = (direction) dataIn.direction;
            stepper->run(steps, frequency, dir);
            
            state = eStepperPosition;
            break;

        case eStepperPosition:
            encoder->getAngleValue(position);
            state = eSendData;
            break;

         case eSendData:
            dataOut.position = encoder->calculateDisplacement(position, dir);
            dataOut.motorDiagnostic = diagErr;

            state = eTasks;
            break;
    }     
    if (getDiagErr())
    {
        diagErrIntr=0;
        diagTime = millis();
        diagErr=1;
    }
    if(millis() - diagTime > TO_MS(60))
    {
        diagErr =0;
    }
    
//    stepper->loop();
}

extern "C" 
{
    /* Timer Interrupt handler */
    void msCounter(TC_TIMER_STATUS status, uintptr_t context)
    { 
        ms_count++;
    }

    uint32_t millis(void)
    {
        return ms_count;
    }
    App * create_App() // wrapper function
    {
        return new App;
    }

    void App_setup(App* pApp) // wrapper function
    {
        return pApp->setup();
    }

    void App_loop(App* pApp) // wrapper function
    {
        return pApp->loop();
    }
}
