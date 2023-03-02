#include "app.hpp"

Stepper* stepper;
Encoder* encoder; 
uint8_t dir=antiClockWise;
uint32_t frequency=0;
uint32_t newFreq=0;
uint32_t currentMillis=0;
uint32_t previousMillis=0;
uint32_t diagTime=0;

uint8_t diagErr=0;
extern uint8_t diagErrIntr;

static appState state;
double position;

void App::setup()
{
    SYS_Initialize ( NULL );
    APP_Initialize();
    TC1_TimerStart();
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
            newFreq = 2*(dataIn.speed/0.01875);
//          dir = dataIn.direction;
            if(newFreq != frequency)
            {
                previousMillis = getMillis();
                frequency = newFreq;
            }
            currentMillis = getMillis();
            if ((currentMillis - previousMillis) < 1000*30)
            {
                stepper->run(newFreq,clockWise);
            }
            else if ((currentMillis - previousMillis) < 1000*60)
            {
                stepper->run(newFreq,antiClockWise);
            }
            else
            {
                previousMillis = currentMillis;
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

