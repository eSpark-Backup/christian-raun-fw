/*
* This source file is part of the EtherCAT Slave Stack Code licensed by Beckhoff Automation GmbH & Co KG, 33415 Verl, Germany.
* The corresponding license agreement applies. This hint shall not be removed.
*/

/**
* \addtogroup LAN9255_EtherCAT_Slave LAN9255_EtherCAT_Slave
* @{
*/

/**
\file LAN9255_EtherCAT_SlaveObjects
\author ET9300Utilities.ApplicationHandler (Version 1.6.4.0) | EthercatSSC@beckhoff.com

\brief LAN9255_EtherCAT_Slave specific objects<br>
\brief NOTE : This file will be overwritten if a new object dictionary is generated!<br>
*/

#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
#define PROTO
#else
#define PROTO extern
#endif
/******************************************************************************
*                    Object 0x1600 : Outputs process data mapping
******************************************************************************/
/**
* \addtogroup 0x1600 0x1600 | Outputs process data mapping
* @{
* \brief Object 0x1600 (Outputs process data mapping) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Reference to 0x7010.1<br>
* SubIndex 2 - Reference to 0x7010.2<br>
* SubIndex 3 - Reference to 0x7010.3<br>
* SubIndex 4 - Reference to 0x7010.4<br>
* SubIndex 5 - Reference to 0x7010.5<br>
* SubIndex 6 - Reference to 0x7010.6<br>
* SubIndex 7 - Padding entry (1Bit)<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1600[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex1 - Reference to 0x7010.1 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex2 - Reference to 0x7010.2 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex3 - Reference to 0x7010.3 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex4 - Reference to 0x7010.4 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex5 - Reference to 0x7010.5 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex6 - Reference to 0x7010.6 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex7 - Padding entry (1Bit) */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1600[] = "Outputs process data mapping\000"
"SubIndex 001\000"
"SubIndex 002\000"
"SubIndex 003\000"
"SubIndex 004\000"
"SubIndex 005\000"
"SubIndex 006\000"
"SubIndex 007\000\377";
#endif //#ifdef _OBJD_

#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 - Reference to 0x7010.1 */
UINT32 SI2; /* Subindex2 - Reference to 0x7010.2 */
UINT32 SI3; /* Subindex3 - Reference to 0x7010.3 */
UINT32 SI4; /* Subindex4 - Reference to 0x7010.4 */
UINT32 SI5; /* Subindex5 - Reference to 0x7010.5 */
UINT32 SI6; /* Subindex6 - Reference to 0x7010.6 */
UINT32 SI7; /* Subindex7 - Padding entry (1Bit) */
} OBJ_STRUCT_PACKED_END
TOBJ1600;
#endif //#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1600 OutputsProcessDataMapping0x1600
#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
={7,0x70100120,0x70100220,0x70100320,0x70100420,0x70100520,0x70100601,0x00000001}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1A00 : Inputs process data mapping
******************************************************************************/
/**
* \addtogroup 0x1A00 0x1A00 | Inputs process data mapping
* @{
* \brief Object 0x1A00 (Inputs process data mapping) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Reference to 0x6000.1<br>
* SubIndex 2 - Reference to 0x6000.2<br>
* SubIndex 3 - Reference to 0x6000.3<br>
* SubIndex 4 - Reference to 0x6000.4<br>
* SubIndex 5 - Reference to 0x6000.5<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1A00[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex1 - Reference to 0x6000.1 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex2 - Reference to 0x6000.2 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex3 - Reference to 0x6000.3 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex4 - Reference to 0x6000.4 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex5 - Reference to 0x6000.5 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1A00[] = "Inputs process data mapping\000"
"SubIndex 001\000"
"SubIndex 002\000"
"SubIndex 003\000"
"SubIndex 004\000"
"SubIndex 005\000\377";
#endif //#ifdef _OBJD_

#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 - Reference to 0x6000.1 */
UINT32 SI2; /* Subindex2 - Reference to 0x6000.2 */
UINT32 SI3; /* Subindex3 - Reference to 0x6000.3 */
UINT32 SI4; /* Subindex4 - Reference to 0x6000.4 */
UINT32 SI5; /* Subindex5 - Reference to 0x6000.5 */
} OBJ_STRUCT_PACKED_END
TOBJ1A00;
#endif //#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1A00 InputsProcessDataMapping0x1A00
#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
={5,0x60000120,0x60000220,0x60000320,0x60000420,0x60000520}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1C12 : SyncManager 2 assignment
******************************************************************************/
/**
* \addtogroup 0x1C12 0x1C12 | SyncManager 2 assignment
* @{
* \brief Object 0x1C12 (SyncManager 2 assignment) definition
*/
#ifdef _OBJD_
/**
* \brief Entry descriptions<br>
* 
* Subindex 0<br>
* Subindex 1 - n (the same entry description is used)<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1C12[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }};

/**
* \brief Object name definition<br>
* For Subindex 1 to n the syntax 'Subindex XXX' is used
*/
OBJCONST UCHAR OBJMEM aName0x1C12[] = "SyncManager 2 assignment\000\377";
#endif //#ifdef _OBJD_

#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16   u16SubIndex0;  /**< \brief Subindex 0 */
UINT16 aEntries[1];  /**< \brief Subindex 1 - 1 */
} OBJ_STRUCT_PACKED_END
TOBJ1C12;
#endif //#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1C12 sRxPDOassign
#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
={1,{0x1600}}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1C13 : SyncManager 3 assignment
******************************************************************************/
/**
* \addtogroup 0x1C13 0x1C13 | SyncManager 3 assignment
* @{
* \brief Object 0x1C13 (SyncManager 3 assignment) definition
*/
#ifdef _OBJD_
/**
* \brief Entry descriptions<br>
* 
* Subindex 0<br>
* Subindex 1 - n (the same entry description is used)<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1C13[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }};

/**
* \brief Object name definition<br>
* For Subindex 1 to n the syntax 'Subindex XXX' is used
*/
OBJCONST UCHAR OBJMEM aName0x1C13[] = "SyncManager 3 assignment\000\377";
#endif //#ifdef _OBJD_

#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16   u16SubIndex0;  /**< \brief Subindex 0 */
UINT16 aEntries[1];  /**< \brief Subindex 1 - 1 */
} OBJ_STRUCT_PACKED_END
TOBJ1C13;
#endif //#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1C13 sTxPDOassign
#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
={1,{0x1A00}}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x6000 : Inputs
******************************************************************************/
/**
* \addtogroup 0x6000 0x6000 | Inputs
* @{
* \brief Object 0x6000 (Inputs) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Position<br>
* SubIndex 2 - Temperature<br>
* SubIndex 3 - MotorDiagnostic<br>
* SubIndex 4 - DeviceStatus<br>
* SubIndex 5 - Diag3<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x6000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_REAL32 , 0x20 , ACCESS_READ | OBJACCESS_TXPDOMAPPING }, /* Subindex1 - Position */
{ DEFTYPE_REAL32 , 0x20 , ACCESS_READ | OBJACCESS_TXPDOMAPPING }, /* Subindex2 - Temperature */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ | OBJACCESS_TXPDOMAPPING }, /* Subindex3 - MotorDiagnostic */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ | OBJACCESS_TXPDOMAPPING }, /* Subindex4 - DeviceStatus */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ | OBJACCESS_TXPDOMAPPING }}; /* Subindex5 - Diag3 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x6000[] = "Inputs\000"
"Position\000"
"Temperature\000"
"MotorDiagnostic\000"
"DeviceStatus\000"
"Diag3\000\377";
#endif //#ifdef _OBJD_

#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
REAL32 Position; /* Subindex1 - Position */
REAL32 Temperature; /* Subindex2 - Temperature */
UINT32 MotorDiagnostic; /* Subindex3 - MotorDiagnostic */
UINT32 DeviceStatus; /* Subindex4 - DeviceStatus */
UINT32 Diag3; /* Subindex5 - Diag3 */
} OBJ_STRUCT_PACKED_END
TOBJ6000;
#endif //#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ6000 Inputs0x6000
#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
={5,0,0,0x00000000,0x00000000,0x00000000}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x7010 : Outputs
******************************************************************************/
/**
* \addtogroup 0x7010 0x7010 | Outputs
* @{
* \brief Object 0x7010 (Outputs) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - RPM<br>
* SubIndex 2 - Displacement<br>
* SubIndex 3 - Time<br>
* SubIndex 4 - RampDelay<br>
* SubIndex 5 - Mode<br>
* SubIndex 6 - Direction<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x7010[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_REAL32 , 0x20 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex1 - RPM */
{ DEFTYPE_REAL32 , 0x20 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex2 - Displacement */
{ DEFTYPE_REAL32 , 0x20 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex3 - Time */
{ DEFTYPE_REAL32 , 0x20 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex4 - RampDelay */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex5 - Mode */
{ DEFTYPE_BOOLEAN , 0x01 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }}; /* Subindex6 - Direction */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x7010[] = "Outputs\000"
"RPM\000"
"Displacement\000"
"Time\000"
"RampDelay\000"
"Mode\000"
"Direction\000\377";
#endif //#ifdef _OBJD_

#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
REAL32 RPM; /* Subindex1 - RPM */
REAL32 Displacement; /* Subindex2 - Displacement */
REAL32 Time; /* Subindex3 - Time */
REAL32 RampDelay; /* Subindex4 - RampDelay */
UINT32 Mode; /* Subindex5 - Mode */
BOOLEAN(Direction); /* Subindex6 - Direction */
} OBJ_STRUCT_PACKED_END
TOBJ7010;
#endif //#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ7010 Outputs0x7010
#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
={6,0,0,0,0,0x00000000,0x00}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0xF000 : Modular Device Profile
******************************************************************************/
/**
* \addtogroup 0xF000 0xF000 | Modular Device Profile
* @{
* \brief Object 0xF000 (Modular Device Profile) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Index distance <br>
* SubIndex 2 - Maximum number of modules <br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0xF000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }, /* Subindex1 - Index distance  */
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }}; /* Subindex2 - Maximum number of modules  */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0xF000[] = "Modular Device Profile\000"
"Index distance \000"
"Maximum number of modules \000\377";
#endif //#ifdef _OBJD_

#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 IndexDistance; /* Subindex1 - Index distance  */
UINT16 MaximumNumberOfModules; /* Subindex2 - Maximum number of modules  */
} OBJ_STRUCT_PACKED_END
TOBJF000;
#endif //#ifndef _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJF000 ModularDeviceProfile0xF000
#if defined(_LAN9255__ETHER_CAT__SLAVE_) && (_LAN9255__ETHER_CAT__SLAVE_ == 1)
={2,0x0010,0}
#endif
;
/** @}*/







#ifdef _OBJD_
TOBJECT    OBJMEM ApplicationObjDic[] = {
/* Object 0x1600 */
{NULL , NULL ,  0x1600 , {DEFTYPE_PDOMAPPING , 7 | (OBJCODE_REC << 8)} , asEntryDesc0x1600 , aName0x1600 , &OutputsProcessDataMapping0x1600 , NULL , NULL , 0x0000 },
/* Object 0x1A00 */
{NULL , NULL ,  0x1A00 , {DEFTYPE_PDOMAPPING , 5 | (OBJCODE_REC << 8)} , asEntryDesc0x1A00 , aName0x1A00 , &InputsProcessDataMapping0x1A00 , NULL , NULL , 0x0000 },
/* Object 0x1C12 */
{NULL , NULL ,  0x1C12 , {DEFTYPE_UNSIGNED16 , 1 | (OBJCODE_ARR << 8)} , asEntryDesc0x1C12 , aName0x1C12 , &sRxPDOassign , NULL , NULL , 0x0000 },
/* Object 0x1C13 */
{NULL , NULL ,  0x1C13 , {DEFTYPE_UNSIGNED16 , 1 | (OBJCODE_ARR << 8)} , asEntryDesc0x1C13 , aName0x1C13 , &sTxPDOassign , NULL , NULL , 0x0000 },
/* Object 0x6000 */
{NULL , NULL ,  0x6000 , {DEFTYPE_RECORD , 5 | (OBJCODE_REC << 8)} , asEntryDesc0x6000 , aName0x6000 , &Inputs0x6000 , NULL , NULL , 0x0000 },
/* Object 0x7010 */
{NULL , NULL ,  0x7010 , {DEFTYPE_RECORD , 6 | (OBJCODE_REC << 8)} , asEntryDesc0x7010 , aName0x7010 , &Outputs0x7010 , NULL , NULL , 0x0000 },
/* Object 0xF000 */
{NULL , NULL ,  0xF000 , {DEFTYPE_RECORD , 2 | (OBJCODE_REC << 8)} , asEntryDesc0xF000 , aName0xF000 , &ModularDeviceProfile0xF000 , NULL , NULL , 0x0000 },
{NULL,NULL, 0xFFFF, {0, 0}, NULL, NULL, NULL, NULL}};
#endif    //#ifdef _OBJD_

#undef PROTO

/** @}*/
#define _LAN9255__ETHER_CAT__SLAVE_OBJECTS_H_
