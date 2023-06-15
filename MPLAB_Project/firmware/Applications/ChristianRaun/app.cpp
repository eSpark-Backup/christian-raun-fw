#include "app.hpp"

Stepper* stepper;
Encoder* encoder; 
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
    
    EIC_CallbackRegister(DIAG0_INTERRUPT_PIN, temperatureError, (uintptr_t)&dataOut);
    EIC_InterruptEnable(DIAG0_INTERRUPT_PIN);
    
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
                    
                case ABORT_OPERATION:
                    dataOut.motorDiagnostic = NO_ERROR;
                    stepper->stop();
                    stepper->resetMaxToggleCount();
                    break;
                    
                default:
                    state = eSendData;
                    break;
            }
            
            break;
            
        case eCalibration_01:
            stepper->calibrate(CALIBRATION_SEQUENCE_01, &dataOut);
            state = eSendData;
            break;
            
        case eCalibration_02:
            stepper->calibrate(CALIBRATION_SEQUENCE_02, &dataOut, dataIn.displacement);
            state = eSendData;
            break;
            
        case eStepper:
            frequency = ROTATIONS_PER_SEC(dataIn.rpm) * STEPS_PER_REVOLUTION;
            steps = (dataIn.displacement/ 3200.0) * STEPS_PER_REVOLUTION;
            stepper->run(steps, frequency, (direction) dataIn.direction);
            
            state = eSendData;
            break;

         case eSendData:
            dataOut.position = encoder->calculateDisplacement();

            state = eTasks;
            break;
    }
    
    if(CALIBRATION_SEQUENCE_01_STARTED != dataOut.deviceStatus)
    {
        if(stepper->isRunning())
        {
            if(encoder->isMotorStalled())
            {
                dataOut.motorDiagnostic = MOTOR_STALLED;
            }
        }
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
    
    /* Diag0 Interrupt handler */
    void temperatureError(uintptr_t context)
    {
        dataOutPacket* out = (dataOutPacket*)context;
        out->motorDiagnostic = TEMPERATURE_LIMIT_EXCEEDED;
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
