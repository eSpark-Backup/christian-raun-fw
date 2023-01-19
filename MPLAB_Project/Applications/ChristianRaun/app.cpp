#include "app.hpp"

Stepper* stepper;
Encoder* encoder; 
uint8_t dir=antiClockWise;
uint32_t frequency=0;
static appState state;
double position;

void App::setup()
{
    SYS_Initialize ( NULL );
    APP_Initialize();
    TC1_TimerStart();
    
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
            frequency = dataIn.speed;
            dir = dataIn.direction;
            stepper->run(frequency,dir);
            state = eStepperPosition;
            break;  

        case eStepperPosition:
            encoder->getAngleValue(position);
            state = eSendData;
            break;

         case eSendData:
            dataOut.position = position;
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

