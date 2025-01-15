
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <string.h>
#include <stdarg.h>                     // For va_list, va_start, va_end
#include <stdio.h>                      // For vsnprintf
#include "../src/Devices/TMCStepper/TMCStepper.hpp"
#include "../src/Devices/Timer/timer.hpp"

#include "basicDef.h"
#include "app_lan9255.h"
#include "slave_stack/LAN9255_EtherCAT_Slave.h"
#include "Devices/Ethercat/ethercat.hpp"
#include "Devices/Ethercat/Lan9255/Lan9255.hpp"

#define FULLSTEP        256
#define MICROSTEP       16
#define VMAX(rpm)       (((rpm)/60.0) * (MICROSTEP * (360.0/1.8)) * (16777216.0/12000000.0))
#define TSTEP_CALC(rpm) (((16777216.0/VMAX(rpm)) * (MICROSTEP/(double)FULLSTEP)))
#define tcc1BaseClkFreq 60000000U

#define STEPS_PER_REVOLUTION 3200 //if error otherwise 3200
#define STEPS_PER_MM (STEPS_PER_REVOLUTION / 2)
#define CALIBRATION_RPM 30.0f
#define ROTATIONS_PER_SEC(rpm) (rpm/60.0f)

#define DIAG0_INTERRUPT_PIN EIC_PIN_5
#define DIAG1_INTERRUPT_PIN EIC_PIN_6

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
#define STALL_VALUE     5
#define R_SENSE         0.075f  // Match to your driver
                                // SilentStepStick series use 0.11
                                // UltiMachine Einsy and Archim2 boards use 0.2
                                // Panucatt BSD2660 uses 0.1
                                // Watterott TMC5160 uses 0.075
#define CS_PIN           DRV_CS_PIN // Chip select
#define EN_PIN           DRV_EN_PIN // Chip select

TMC2160Stepper driver(CS_PIN, R_SENSE);
Timer timer;

extern dataInPacket dataIn;
extern dataOutPacket dataOut;

#define PRINT_BUFFER_SIZE 256

void ITM_Printf(uint8_t port, const char *format, ...)
{
    char buffer[PRINT_BUFFER_SIZE];  // Buffer to hold the formatted string
    va_list args;                    // Argument list for format specifiers

    va_start(args, format);          // Initialize the argument list
    vsnprintf(buffer, sizeof(buffer), format, args);  // Format the string
    va_end(args);                    // Clean up the argument list

    // Send each character via ITM
    for (char *ptr = buffer; *ptr != '\0'; ptr++)
    {
        ITM_SendChar((uint32_t)*ptr, port);  // Send character via ITM
    }
}

void delayMicroseconds(int delay)
{
    for(int i = 0; i<delay; i++)
    {
        asm volatile("nop");
    }
}


extern "C" 
{
    /* Diag0 Interrupt handler */
    void temperatureError(uintptr_t context)
    {
        ITM_Printf(3, "Over Temprature.\n");
    }
    /* Diag1 Interrupt handler */
    void stallError(uintptr_t context)
    {
        ITM_Printf(3, "STALL Occurred.\n");
//        TCC1_PWMStop();
    }

}

void setRPM(int rpm)
{
    uint32_t tStep = TSTEP_CALC(rpm);
    float frequency = ROTATIONS_PER_SEC(rpm) * STEPS_PER_REVOLUTION;
    // float frequency = toFrequency(rpm);
    uint32_t periodPWM = ((tcc1BaseClkFreq)/(frequency)) - 1;

    uint32_t val = ((tStep+20)>0xFFFFF) ? 0xFFFFF : (tStep+20);
    driver.TCOOLTHRS(val);
    // val = ((tStep-20)<0) ? 0 : (tStep-20);
    // driver.TPWMTHRS(val);                       // upper velocity of stealthchop

    TCC1_REGS->TCC_CC[2] = periodPWM/2;
    TCC1_REGS->TCC_PER = periodPWM;
}

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    APP_Initialize();
    
    timer.setup();
    
    dataOut.temperature = 350; // For Testing

    EIC_CallbackRegister(DIAG0_INTERRUPT_PIN, temperatureError, NULL);
    EIC_InterruptEnable(DIAG0_INTERRUPT_PIN);
    EIC_CallbackRegister(DIAG1_INTERRUPT_PIN, stallError, NULL);
    EIC_InterruptEnable(DIAG1_INTERRUPT_PIN);

    DRV_EN_Set();
    delay(100);
    DRV_EN_Clear();
//    DRV_DIR_Set();

    driver.begin();
    driver.toff(5);
    driver.blank_time(24);
    driver.microsteps(16);
    driver.rms_current(1100);
    driver.en_pwm_mode(true);           // StealthChop2 activated
    driver.pwm_autoscale(true);
    driver.THIGH(0);
    driver.semin(5);
    driver.semax(2);
    driver.diag0_otpw(true);
    driver.sedn(0b01);
    driver.sgt(STALL_VALUE);

    TMC2130_n::DRV_STATUS_t drv_status{0};
    GCONF_t cofiguration{0};
    GSTAT_t gstat{0};
    IOIN_t ioin{0};
    SHORT_CONF_t shortConf{0};
    DRV_CONF_t drvConf{0};
    COOLCONF_t coolConf{0};
    uint32_t TSTEPvar, TPWMTHRSvar;
    uint8_t TOFFvar = driver.toff();

    driver.diag0_stall(true);
    driver.diag1_stall(true);

    setRPM(60);

    TCC1_PWMStart();

    while ( true )
    {
        SYS_Tasks ( );
        APP_Tasks();

        static uint32_t last_time=0;
        uint32_t ms = millis();

        if((ms-last_time) > 1000) { //run every 1s
            last_time = ms;

            drv_status.sr = driver.DRV_STATUS();
            cofiguration.sr = driver.GCONF();
            gstat.sr = driver.GSTAT();
            ioin.sr = driver.IOIN();
            shortConf.sr = driver.SHORT_CONF();
            drvConf.sr = driver.DRV_CONF();
            coolConf.sr = driver.COOLCONF();

            TSTEPvar = driver.TSTEP();
            TPWMTHRSvar = driver.TPWMTHRS();
            ITM_Printf(0, "DRV_STATUS: %X\t{sg_result: %d, cs_actual: %d, stallGuard: %d, ot: %d, otpw: %d, s2ga: %d, s2gb: %d, ola: %d, olb: %d, stst: %d }\n",
                           drv_status.sr, drv_status.sg_result, drv_status.cs_actual, drv_status.stallGuard, drv_status.ot, drv_status.otpw, drv_status.s2ga, drv_status.s2gb, drv_status.ola, drv_status.olb, drv_status.stst);
            ITM_Printf(0, "TSTEP (%ld) : TPWMTHRS (%d)\n", TSTEPvar, TPWMTHRSvar);
            ITM_Printf(0, "GCONF (0x%X)\n", cofiguration.sr);
            ITM_Printf(0, "gstat (0x%X)\n", gstat.sr);
            ITM_Printf(0, "ioin (0x%X)\n", ioin.sr);
            ITM_Printf(0, "shortConf (0x%X)\n", shortConf.sr);
            ITM_Printf(0, "drvConf (0x%X)\n", drvConf.sr);
            ITM_Printf(0, "coolConf (0x%X)\n", coolConf.sr);
            ITM_Printf(0, "tstep (0x%X)\n", driver.TSTEP());
            ITM_Printf(0, "tcoolthrs (0x%X)\n", driver.TCOOLTHRS());
            ITM_Printf(0, "TOFFvar (0x%X)\n", driver.toff());
        }
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

