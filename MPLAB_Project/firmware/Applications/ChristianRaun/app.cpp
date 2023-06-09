#include "app.hpp"
#define min2 2*1000*60
#define min4 4*1000*60

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

float calibPosition =0;
uint32_t calibPreviousMillis =0, calibCurrentMillis =0;

void App::setup()
{
    SYS_Initialize ( NULL );
    APP_Initialize();

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
                   state = eStepper;
                   break;
                   
                case TIME:
                    state = eStepper;
                    break;
                    
                case CALIBRATION:
                    state = eCalibration;
                    break;
                    
                default:
                    state = eStepperPosition;
                    break;
            }
            
            break;
            
        case eCalibration:
            switch(dataOut.deviceStatus)
            {
                case None:
                    frequency = ROTATIONS_PER_SEC(CALIBRATION_RPM) * STEPS_PER_REVOLUTION;
                    dir = ANTICLOCKWISE;
                    stepper->run(frequency, ANTICLOCKWISE);
                    dataOut.deviceStatus = CALIBRATION_SEQUENCE_01_STARTED;
                    calibPreviousMillis = getMillis();
                    break;
                    
                case CALIBRATION_SEQUENCE_01_STARTED:
                    calibCurrentMillis = getMillis();
                    if ((calibCurrentMillis - calibPreviousMillis) > (1000 * 10))
                    {
                        if ((dataOut.position - calibPosition) > -2.0)
                        {
                            stepper->stop();
                            dataOut.deviceStatus = CALIBRATION_SEQUENCE_01_SUCCESS;
                        }
                        else
                        {
                            calibPosition = dataOut.position;
                        }  
                        calibPreviousMillis = calibCurrentMillis;
                    }
                    
                    break;            
            }
            state = eStepperPosition;
            break;
            
        case eStepper:
            frequency = (dataIn.rpm/60.0) * STEPS_PER_REVOLUTION;
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
        diagTime = getMillis();
        diagErr=1;
    }
    if(getMillis() - diagTime > 1000*60)
    {
        diagErr =0;
    }
    
//    stepper->loop();
}

extern "C" App * create_App() // wrapper function
{
    return new App;
}

extern "C" void App_setup(App* pApp) // wrapper function
{
    return pApp->setup();
}

extern "C" void App_loop(App* pApp) // wrapper function
{
    return pApp->loop();
}

