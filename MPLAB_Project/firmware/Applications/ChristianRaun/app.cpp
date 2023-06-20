#include "app.hpp"

Stepper* stepper;
Encoder* encoder; 
Ethercat* ethercat;
float frequency=0;
uint32_t diagTime=0;
uint32_t steps =0;

uint8_t diagErr=0;

static appState state;
double position;

uint32_t ms_count =0;
uint32_t previousMillis = 0;
uint32_t previousCount = 0;

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
    ethercat = new Lan9255;
    encoder->setup();
    stepper->setup(encoder);
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
            state = selectMode();
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
            stepper->run(dataIn.rpm, steps, frequency, (direction) dataIn.direction);
            
            state = eSendData;
            break;

         case eSendData:
            dataOut.position = encoder->calculateDisplacement();
            state = eErrorHandling;
            break;
            
        case eErrorHandling:
            if ((millis() - previousMillis) > TO_MS(1))
            {
                previousMillis = millis();
//                if (ethercat->isLinkDown(0))
//                {
//                    stepper->stop();
//                    stepper->resetMaxToggleCount();
//                }
                if (getConnectionCounter() == previousCount)
                {    
                    stepper->stop();
                    stepper->resetMaxToggleCount();
                }
                else
                {
                    previousCount = getConnectionCounter();
                }
            }
            
            if(CALIBRATION_SEQUENCE_01_STARTED != dataOut.deviceStatus)
            {
                if(stepper->isRunning())
                {
                    if(encoder->isMotorStalled(Tmc2130::rpm))
                    {
                        stepper->stop();
                        stepper->resetMaxToggleCount();
                        dataOut.motorDiagnostic = MOTOR_STALLED;
                    }
                }
                else
                {
                    encoder->operationEnd = true;
                }
            }
            state = eTasks;
            break;        
    }
    
//    stepper->loop();
}

appState App::selectMode()
{
    appState state;
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
            state = eSendData;
            break;

        default:
            state = eSendData;
            break;
    }
    return state;
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
