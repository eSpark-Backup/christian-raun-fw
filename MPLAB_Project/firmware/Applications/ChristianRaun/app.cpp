#include "app.hpp"
#include "../../src/Devices/Stepper/TMC2130/tmc2130.hpp"
#include "../../src/Devices/Stepper/TMCStepper/TMCStepper.hpp"
#include "../../src/Devices/Encoder/TLE5012b/tle5012b.hpp"
#include "../../src/Devices/Ethercat/Lan9255/Lan9255.hpp"
#include "../../src/Devices/Timer/timer.hpp"
#include "../../src/Version/firmware_version.h"


#define R_SENSE 0.075f // Match to your driver
                      // SilentStepStick series use 0.11
                      // UltiMachine Einsy and Archim2 boards use 0.2
                      // Panucatt BSD2660 uses 0.1
                      // Watterott TMC5160 uses 0.075
#define CS_PIN           DRV_CS_PIN // Chip select

TMC2160Stepper* stepperDriver;
Stepper* stepper;
Encoder* encoder; 
Ethercat* ethercat;
Timer* timer;


uint32_t steps = 0;
uint32_t stopTime = 0;

static appState state;
double position;

void App::setup()
{
    SYS_Initialize ( NULL );
    APP_Initialize();
    
    EIC_CallbackRegister(DIAG0_INTERRUPT_PIN, temperatureError, (uintptr_t)&dataOut);
    EIC_InterruptEnable(DIAG0_INTERRUPT_PIN);
    
    state = eTasks;

    stepperDriver = new TMC2160Stepper(CS_PIN, R_SENSE);
    stepper = new Tmc2130;
    encoder = new Tle5012b;
    ethercat = new Lan9255;
    timer = new Timer;
    
    timer->setup();
    encoder->setup();
    stepper->setup(stepperDriver, encoder, &dataOut);
    stepper->addObserver(encoder);
    encoder->setZeroOffset();
    dataOut.diag3 = FIRMWARE_VERSION;
    dataOut.temperature = 350; // For Testing

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
            
        case eRunRPM:
            {
                rampSettings rs;
                rs.rampDelay    = dataIn.rampDelay;
                rs.time         = dataIn.time;
                rs.displacement = dataIn.displacement;
                rs.dir          = (direction_t) dataIn.direction;
                stepper->run(&rs);
            }
            state = eSendData;
            break;
            
        case eStepper:  
            steps = dataIn.displacement * STEPS_PER_MM;
            stepper->run(dataIn.rpm, (direction_t) dataIn.direction, steps);
            state = eSendData;
            break;

         case eSendData:
            if (stepper->isRunning())
            {
                dataOut.position = encoder->calculateDisplacement();
                stopTime = millis();
            }
            else
            {
                uint32_t elapsedTime = millis() - stopTime;
                if (elapsedTime <= 2000U) {
                    // Calculate displacement for 5 seconds after motor stopped
                    dataOut.position = encoder->calculateDisplacement();
                }
            }
            state = eErrorHandling;
            break;  
            
        case eErrorHandling:
            if (stepper->isRunning())
            {
                if(ethercat->isLinkDown())
                {
                    stepper->stop();
                    stepper->setRPMSequenceStatus(false);
                }
                
                if(CALIBRATION_SEQUENCE_01_STARTED != dataOut.deviceStatus)
                {
                    if(stepper->isRunning())
                    {
                        if(encoder->isMotorStalled())
                        {
                            stepper->stop();
                            stepper->setRPMSequenceStatus(false);
                            dataOut.motorDiagnostic = MOTOR_STALLED;
                        }
                    }
                }
            }
            
            
            state = eTasks;
            break;        
    }
    
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

        case RAMP:
            state = eRunRPM;
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
            stepper->setRPMSequenceStatus(false);
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
    /* Diag0 Interrupt handler */
    void temperatureError(uintptr_t context)
    {
        dataOutPacket* out = (dataOutPacket*)context;
        out->motorDiagnostic = TEMPERATURE_LIMIT_EXCEEDED;
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
