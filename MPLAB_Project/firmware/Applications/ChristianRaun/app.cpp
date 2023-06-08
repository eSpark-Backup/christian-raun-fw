#include "app.hpp"
#define min2 2*1000*60
#define min4 4*1000*60

Stepper* stepper;
Encoder* encoder; 
uint8_t dir=antiClockWise;
float frequency=0;
uint32_t diagTime=0;
uint32_t steps =0;

uint8_t diagErr=0;
extern uint8_t diagErrIntr;

static appState state;
double position;

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
            state = eStepper;
            break;
            
        case eStepper:
            frequency = (dataIn.rpm/60.0) * 3200;
            steps = (dataIn.displacement/ 3200) * STEPS_PER_REVOLUTION;
            dir = dataIn.direction;
            stepper->run(steps, frequency, dir);
            
            state = eStepperPosition;
            break;

        case eStepperPosition:
            encoder->getAngleValue(position);
            state = eSendData;
            break;

         case eSendData:
            dataOut.position = encoder->calculateDisplacement(position, dir);
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

