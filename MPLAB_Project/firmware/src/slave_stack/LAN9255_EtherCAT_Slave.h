/*
* This source file is part of the EtherCAT Slave Stack Code licensed by Beckhoff Automation GmbH & Co KG, 33415 Verl, Germany.
* The corresponding license agreement applies. This hint shall not be removed.
*/

/**
 * \addtogroup LAN9255_EtherCAT_Slave LAN9255_EtherCAT_Slave
 * @{
 */

/**
\file LAN9255_EtherCAT_Slave.h
\brief LAN9255_EtherCAT_Slave function prototypes and defines

\version 1.0.0.11
 */

 
 #ifndef _LAN9255__ETHER_CAT__SLAVE_H_
#define _LAN9255__ETHER_CAT__SLAVE_H_


/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/
#include "ecat_def.h"

#include "ecatappl.h"

/*-----------------------------------------------------------------------------------------
------
------    Defines and Types
------
-----------------------------------------------------------------------------------------*/
typedef struct {
    REAL32 rpm;
    REAL32 displacement;
    REAL32 time;
    REAL32 rampDelay;
    UINT32 mode;
    UINT8 direction;   
} dataInPacket;

typedef struct {
    REAL32 position; 
    REAL32 temperature; 
    UINT32 motorDiagnostic; 
    UINT32 deviceStatus; 
    UINT32 diag3; 
} dataOutPacket;

#endif //_LAN9255__ETHER_CAT__SLAVE_H_

//include custom application object dictionary 
#include "LAN9255_EtherCAT_SlaveObjects.h"


#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
    #define PROTO
#else
    #define PROTO extern
#endif


PROTO void APPL_Application(void);
#if EXPLICIT_DEVICE_ID
PROTO UINT16 APPL_GetDeviceID(void);
#endif

void BL_FOE_Application(void);
void APP_FW_startDownload(void);
void APP_FW_StateBOOTtoINIT(void);
BOOL APP_FW_GetDownloadStateFinished(void);

#if (ETHERCAT_EEPROM_EMULATION_SUPPORT == true)
#define ESC_EEPROM_CONTROL_OFFSET                 0x0502
/**
EEPROM_READ_SIZE: Only required if EEPROM emulation is active. This value defines the number of bytes which will be read per opertion. */
#ifndef EEPROM_READ_SIZE
#define EEPROM_READ_SIZE                          0x8
#endif

/*Number of bytes - needs to be calculate checksum*/
#define ESC_EEPROM_CONFIG_BYTES                   0x0E

PROTO void Emulation_Init();
#endif

PROTO UINT16 HW_EepromReload ();
PROTO UINT16 HW_EepromWrite(UINT32 wordaddr);

PROTO void   APPL_AckErrorInd(UINT16 stateTrans);
PROTO UINT16 APPL_StartMailboxHandler(void);
PROTO UINT16 APPL_StopMailboxHandler(void);
PROTO UINT16 APPL_StartInputHandler(UINT16 *pIntMask);
PROTO UINT16 APPL_StopInputHandler(void);
PROTO UINT16 APPL_StartOutputHandler(void);
PROTO UINT16 APPL_StopOutputHandler(void);

PROTO UINT16 APPL_GenerateMapping(UINT16 *pInputSize,UINT16 *pOutputSize);
PROTO void APPL_InputMapping(UINT16* pData);
PROTO void APPL_OutputMapping(UINT16* pData);

#undef PROTO
/** @}*/

