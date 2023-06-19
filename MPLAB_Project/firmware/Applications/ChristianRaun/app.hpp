#ifndef APP
#define APP

#include "basicDef.h"
#include "app_lan9255.h"
#include "../../src/Devices/Stepper/TMC2130/tmc2130.hpp"
#include "../../src/Devices/Encoder/TLE5012b/tle5012b.hpp"
#include "../../src/Devices/Ethercat/Lan9255/Lan9255.hpp"
#include "../../src/slave_stack/LAN9255_EtherCAT_Slave.h"

enum appState {
    eTasks,
    eModeSelection,        
    eCalibration_01,
    eCalibration_02,
    eStepper,
    eSendData,
    eErrorHandling,
};

extern struct dataInPacket dataIn;
extern struct dataOutPacket dataOut;

#ifdef __cplusplus 
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

#ifdef __cplusplus 
extern "C" {
#endif
/* Timer Interrupt handler */
void msCounter(TC_TIMER_STATUS status, uintptr_t context);
/* Diag0 Interrupt handler */
void temperatureError(uintptr_t context);
uint32_t millis(void);
#ifdef __cplusplus 
}
#endif
