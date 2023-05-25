#include "app.hpp"
#define min2 2*1000*60
#define min4 4*1000*60

Stepper* stepper;
Encoder* encoder; 
uint8_t dir=antiClockWise;
uint32_t stepCount=0;
uint32_t newStepCount=0;
uint32_t currentMillis=0;
uint32_t previousMillis=0;
uint32_t diagTime=0;
extern bool runStatus;

uint8_t diagErr=0;
extern uint8_t diagErrIntr;

static appState state;
double position;

void App::setup()
{
    SYS_Initialize ( NULL );
    APP_Initialize();
//    TC1_TimerStart();
    TC2_TimerStart();
    
    state = eTasks;

    stepper = new Tmc2130;
    encoder = new Tle5012b;
    encoder->setup();
}

void App::loop()
{      

    bool status;
    switch (state)
    {                
        case eTasks:
            APP_Tasks();
            state = eStepper;
            break;
            
        case eStepper:
            newStepCount = dataIn.speed;
            dir = dataIn.direction;
            if(newStepCount != stepCount)
            {
                if (false == runStatus)
                {
                    stepCount = newStepCount;
                    if (stepCount)
                    {
                        runStatus = true;
                        stepper->run(stepCount,dir);
                    }
                    
                }
            }
            
            
            state = eStepperPosition;
            break;  

        case eStepperPosition:
            encoder->getAngleValue(position);
            state = eSendData;
            break;

         case eSendData:
            dataOut.position = position*1000;
            dataOut.diag1 = diagErr;
            #ifdef TEST_INPUTS
                dataOut.position = rand()%1000;
                dataOut.temperature = rand()%1000;
                dataOut.diag1 = rand()%1000;
                dataOut.diag2 = rand()%1000;
                dataOut.diag3 = rand()%1000;
            #endif 
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
    stepper->loop();
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

