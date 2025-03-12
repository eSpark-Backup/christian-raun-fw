/*******************************************************************************
  System Initialization File

  File Name:
    initialization.c

  Summary:
    This file contains source code necessary to initialize the system.

  Description:
    This file contains source code necessary to initialize the system.  It
    implements the "SYS_Initialize" function, defines the configuration bits,
    and allocates any necessary global system resources,
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "definitions.h"
#include "device.h"


// ****************************************************************************
// ****************************************************************************
// Section: Configuration Bits
// ****************************************************************************
// ****************************************************************************




// *****************************************************************************
// *****************************************************************************
// Section: Driver Initialization Data
// *****************************************************************************
// *****************************************************************************
/* Following MISRA-C rules are deviated in the below code block */
/* MISRA C-2012 Rule 11.1 */
/* MISRA C-2012 Rule 11.3 */
/* MISRA C-2012 Rule 11.8 */
// <editor-fold defaultstate="collapsed" desc="EtherCAT Main Initialization Data">

/* SQI PLIB Interface Initialization for ethercat LAN driver */
const DRV_LAN9255_UTIL_SQI_PLIB_INTERFACE drvLAN9255SQIPlibAPI = {
	/* SQI PLIB Command Write function */
	.sqiCommandWrite = (DRV_LAN9255_SQI_PLIB_CMD_WRITE)QSPI_CommandWrite,

	/* SQI PLIB Register Read function */
	.sqiRegisterRead = (DRV_LAN9255_SQI_PLIB_REG_READ)QSPI_RegisterRead,
	
	/* SQI PLIB Register Write function */
	.sqiRegisterWrite = (DRV_LAN9255_SQI_PLIB_REG_WRITE)QSPI_RegisterWrite,

	/* SQI PLIB Memory Read Transfer Status function */
	.sqiMemoryRead = (DRV_LAN9255_SQI_PLIB_MEM_READ)QSPI_MemoryRead,

	/* SQI PLIB Callback Register */
	.sqiMemoryWrite = (DRV_LAN9255_SQI_PLIB_MEM_WRITE)QSPI_MemoryWrite,
};
const DRV_LAN9255_UTIL_TMR_PLIB_INTERFACE drvLAN9255TimerPlibAPI = {

	.timerCallbackSet = (DRV_LAN9255_TMR_PLIB_CALLBACK_REGISTER)TC0_TimerCallbackRegister,
	
	.timerStart = (DRV_LAN9255_TMR_PLIB_START)TC0_TimerStart,
	
	.timerStop = (DRV_LAN9255_TMR_PLIB_STOP)TC0_TimerStop,
};

/* LAN9255 Driver Initialization Data */
const DRV_LAN9255_UTIL_INIT drvLAN9255InitData = {
	/* SPI PLIB API  interface*/
	.sqiPlib = &drvLAN9255SQIPlibAPI,
	
	/* Timer PLIB API Interface */
	.timerPlib = &drvLAN9255TimerPlibAPI,

};

// </editor-fold>



// *****************************************************************************
// *****************************************************************************
// Section: System Data
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// *****************************************************************************
// Section: Library/Stack Initialization Data
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: System Initialization
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************
// *****************************************************************************
// Section: Local initialization functions
// *****************************************************************************
// *****************************************************************************

/* MISRAC 2012 deviation block end */

/*******************************************************************************
  Function:
    void SYS_Initialize ( void *data )

  Summary:
    Initializes the board, services, drivers, application and other modules.

  Remarks:
 */

void SYS_Initialize ( void* data )
{

    /* MISRAC 2012 deviation block start */
    /* MISRA C-2012 Rule 2.2 deviated in this file.  Deviation record ID -  H3_MISRAC_2012_R_2_2_DR_1 */

    NVMCTRL_Initialize( );

  
    PORT_Initialize();

    CLOCK_Initialize();




    SERCOM1_SPI_Initialize();

    EVSYS_Initialize();

    SERCOM0_USART_Initialize();

    SERCOM4_SPI_Initialize();

    EIC_Initialize();

    TC0_TimerInitialize();

    TC2_TimerInitialize();

    TC4_TimerInitialize();

    TCC1_PWMInitialize();

    QSPI_Initialize();



    /* MISRAC 2012 deviation block start */
    /* Following MISRA-C rules deviated in this block  */
    /* MISRA C-2012 Rule 11.3 - Deviation record ID - H3_MISRAC_2012_R_11_3_DR_1 */
    /* MISRA C-2012 Rule 11.8 - Deviation record ID - H3_MISRAC_2012_R_11_8_DR_1 */

	ECAT_Util_Initialize(0, (void *)&drvLAN9255InitData);



    /* MISRAC 2012 deviation block end */
    NVIC_Initialize();


    /* MISRAC 2012 deviation block end */
}

/*******************************************************************************
 End of File
*/
