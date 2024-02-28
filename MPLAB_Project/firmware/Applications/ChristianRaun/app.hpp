#ifndef APP
#define APP

#include "basicDef.h"
#include "app_lan9255.h"
#include "../../src/slave_stack/LAN9255_EtherCAT_Slave.h"

enum appState {
    eTasks,
    eModeSelection,        
    eCalibration_01,
    eCalibration_02,
    eStepper,
    eSendData,
    eErrorHandling,
    eRunRPM
};

extern dataInPacket dataIn;
extern dataOutPacket dataOut;

#ifdef __cplusplus 
class App
{   

    public:
       App() {}
       void setup();
       appState selectMode();
       void loop();
   
    
};
#endif
#else
struct App* create_App();
void App_setup(struct App* pApp); // wrapper function
void App_loop(struct App* pApp); // wrapper function
#endif

#ifdef __cplusplus 
extern "C" {
#endif
/* Timer Interrupt handler */
void msCounter(TC_TIMER_STATUS status, uintptr_t context);
/* Diag0 Interrupt handler */
void temperatureError(uintptr_t context);
#ifdef __cplusplus 
}
#endif
