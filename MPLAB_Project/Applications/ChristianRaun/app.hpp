#ifdef __cplusplus 
#ifndef APP
#define APP

#include "basicDef.h"
#include "app_lan9255.h"
#include "../../src/Devices/Stepper/TMC2130/tmc2130.hpp"
#include "../../src/Devices/Encoder/TLE5012b/tle5012b.hpp"
#include "../../src/slave_stack/LAN9255_EtherCAT_Slave.h"

enum appState {
    eTasks,
    eStepper,
    eStepperPosition,
    eSendData
};

extern struct dataInPacket dataIn;
extern struct dataOutPacket dataOut;

class App
{   

    public:
       App() {}
       void setup();
       void loop();
   
    
};

#endif
#else
struct App* create_App();
void App_setup(struct App* pApp); // wrapper function
void App_loop(struct App* pApp); // wrapper function
#endif


