#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Applications/ChristianRaun/app.cpp ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tc/plib_tc2.c ../src/config/default/peripheral/tc/plib_tc4.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/Devices/Encoder/TLE5012b/tle5012b.cpp ../src/Devices/Ethercat/Lan9255/Lan9255.cpp ../src/Libraries/SoftSPI/SoftSPIB.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/slave_stack/drv_lan9255.c ../src/Devices/Stepper/TMC2130/tmc2130.cpp ../src/Devices/Timer/timer.cpp ../src/main.cpp ../src/app_lan9255.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2029137180/app.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ${OBJECTDIR}/_ext/829342655/plib_tc4.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ${OBJECTDIR}/_ext/274937249/Lan9255.o ${OBJECTDIR}/_ext/112626930/SoftSPIB.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ${OBJECTDIR}/_ext/863837145/timer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2029137180/app.o.d ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d ${OBJECTDIR}/_ext/829342655/plib_tc2.o.d ${OBJECTDIR}/_ext/829342655/plib_tc4.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d ${OBJECTDIR}/_ext/274937249/Lan9255.o.d ${OBJECTDIR}/_ext/112626930/SoftSPIB.o.d ${OBJECTDIR}/_ext/1544482854/bootmode.o.d ${OBJECTDIR}/_ext/1544482854/coeappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d ${OBJECTDIR}/_ext/1544482854/emcy.o.d ${OBJECTDIR}/_ext/1544482854/foeappl.o.d ${OBJECTDIR}/_ext/1544482854/mailbox.o.d ${OBJECTDIR}/_ext/1544482854/objdef.o.d ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o.d ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d ${OBJECTDIR}/_ext/863837145/timer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2029137180/app.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ${OBJECTDIR}/_ext/829342655/plib_tc4.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ${OBJECTDIR}/_ext/274937249/Lan9255.o ${OBJECTDIR}/_ext/112626930/SoftSPIB.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ${OBJECTDIR}/_ext/863837145/timer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o

# Source Files
SOURCEFILES=../Applications/ChristianRaun/app.cpp ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tc/plib_tc2.c ../src/config/default/peripheral/tc/plib_tc4.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/Devices/Encoder/TLE5012b/tle5012b.cpp ../src/Devices/Ethercat/Lan9255/Lan9255.cpp ../src/Libraries/SoftSPI/SoftSPIB.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/slave_stack/drv_lan9255.c ../src/Devices/Stepper/TMC2130/tmc2130.cpp ../src/Devices/Timer/timer.cpp ../src/main.cpp ../src/app_lan9255.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=LAN9255ZMX018
ProjectDir="D:\.Embedded\.GITHUB\ChristianRaun-FirmwareDevelopment\MPLAB_Project\firmware\LAN9255.X"
ProjectName=LAN9255
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [${MP_CC_DIR}/xc32-objcopy -I ihex -O binary "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf" "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.bin"]"
	@${MP_CC_DIR}/xc32-objcopy -I ihex -O binary "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf" "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.bin"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=LAN9255ZMX018
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\LAN9255ZMX018.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/3d3f4d3a72acb5f6962ef77f89ac82cc849aff63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/fd7473303a2bda3c288d8b6f1d0b837749194a66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/b24101d140dd94eeb4b8f6a8820b799cd9aca409 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/d7cf2f28f53dbc7c1dbb540ebb960c6965669258 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/6c30b9a9629a8e42124cf0a99e8c1a2791a65ddb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/c608b621cb5b96133858b29d456525600b67e4e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/20ca2f203fa60f0ea3ab2990f4cf33cdbb6bd37f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/d2592fc5ec7eeaad7dfbaf641154bb9e593dc202 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/d879636f947bce4dd740a578288413bb7c1b9b4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c  .generated_files/flags/default/ca68d4e4960f535a79d5f1e6b1672b6cc31935da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/365b437d010a9afd9b7e7229712ce0e1716b3369 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/29dafa68feff177d98b414d974d613d36108112b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc2.o: ../src/config/default/peripheral/tc/plib_tc2.c  .generated_files/flags/default/f65954d0d7672b909ff689b7ff06636374228c6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc2.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ../src/config/default/peripheral/tc/plib_tc2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc4.o: ../src/config/default/peripheral/tc/plib_tc4.c  .generated_files/flags/default/60f7a7b5e2ff50ddf6209c4330d28d0526ba146f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc4.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc4.o ../src/config/default/peripheral/tc/plib_tc4.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/2a3c2c41c8902b9a34194c7a73e3b1b706dfd26c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/4293dfb161da4ee4228551a9034fed318d39250a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/4c96ed56c5c8e01a06a427d73d84a34f57eb9c2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/d07c62c9295abd7e42fb8d8751e446fcbe698ac8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/66e036897393a44c4caa641df8e033d981c9500e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/c3e4e581b3d6dcaccaeb1a259b3ef343a78cfdfb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/10ec3b50c3ce0545905192fdcd6d1006828fbea0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/5783a966e2f25a6e92a6858481d4e769ef732796 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/d131976a628b5cc85d49cc242ae4c93d5ea47a7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/15c6155ced39f6d7cfa41a746082118f0a786cbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/d1a9e426ae00c9e872ae5517c776fbb6d1a3e9e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/fdd1ef3e061616b150d9f443ad6c36433d42c340 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/5c981a78d83eb0eff46959a221af26bef5df6e54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/9f2ee72e939aee07f795588057d05c1a1b62b6ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/40ecd0e7208c1f0f8bd0ec832c722b250b23daac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/8541fe6327b57c2d3bd619608aa934aad3eb0edb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/eac0c133277dfc35b2e7d4cd6789877966f940a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/2b1c81c0fbac8f96f9134521644c55bf5be70d54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/drv_lan9255.o: ../src/slave_stack/drv_lan9255.c  .generated_files/flags/default/10cf78ed89c82b3229ac530b3dba98b9ec531536 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o ../src/slave_stack/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/2ea0c3f85802a3951e2b4be78f2c376c8a183694 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/6dc2752a40aaccceba254d4f2a7c70d9b461f3ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/ff6af4cc3a164a3bdadd83daab1a00e4db9438b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/8e0fc11c966b13ef90d2e3c08f30fcf82d1fe235 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/b879ebea4c2f319516b6fec07d7fcccb857c47b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/521522b6289089d38a1a24b9b6431a867ecb3f48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/d78baac4e6932793bc13fa3fd9085fa1e55fd198 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/1cdf57b45f0d970534ea05973761f35be8bbdf12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/dd3cd9a27b62b1a72a397f4449c575eb89a4701e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/ca89f303ebe97e830b3e2dca4ba9d014b55ff4b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c  .generated_files/flags/default/c5cc67c0300472a963933a4b5d1ce06d796bcd39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/3b65d1e0da906663db401686625f9d003454a614 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/3de029e7766ad2e0750c33f0aab49a1a3f3fffb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc2.o: ../src/config/default/peripheral/tc/plib_tc2.c  .generated_files/flags/default/1093909d48312c7f4990377d4e279a2d0a6fc9bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc2.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ../src/config/default/peripheral/tc/plib_tc2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc4.o: ../src/config/default/peripheral/tc/plib_tc4.c  .generated_files/flags/default/962fafb3f4634b718187250d6ad0bf35a2d46ca0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc4.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc4.o ../src/config/default/peripheral/tc/plib_tc4.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/d0efe0e0e23fafd754b7368b2b94bc3a207b7c7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/a3ec3bd35ef358a288fef4f7a6bad7c2254884e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/bbf3fa705e50c75616e9cf72b6cf28d71842f635 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/bf846edbe4bdc919bd3cddfdd11ac5ea36ba3dbd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/90e1a4b3f25c95b0eb9805318f8f6592651f5326 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/7f1922dfa2b7b7f6da76a75cf96dbc818a6ad813 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/ca0df203be04f967613246b70877e532e1b2dae1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/b59c66911c4615a543c4cb5e0060140f58b6c0d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/99cda0c07c677b9041c10371ee8e4ec42bb69048 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/e8050d1c912f3d8085e9589a1760427a6f1c0c5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/189cc40110ead901b182cb1ed449eac6043477ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/55a5610a45e76c7a324c333f10d5eac9c7bbc25b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/b80bb6ed250da468928be74ed73a172859543d7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/65195485bec981baf2e140ddf5e0e66b9e2f73ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/786b749f21435ca460e5b7a544d327e4b8519c53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/1aca8095bc651a504ad0910fb0f5f1bd211228a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/a6bab62b64c9a4aa42404cdfb151095dc23c91b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/ddbbd7aa74a2b4f4688af6306e12c46aa5b272ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/drv_lan9255.o: ../src/slave_stack/drv_lan9255.c  .generated_files/flags/default/82887fce322c2e1487c583dfdc9953faa3f41136 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/1544482854/drv_lan9255.o ../src/slave_stack/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/5d9926f171537b0f4b596dc12cdc3d8869fbabb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2029137180/app.o: ../Applications/ChristianRaun/app.cpp  .generated_files/flags/default/d8b5a3dd14382a98219141acbb2122a49e7df0f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2029137180" 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2029137180/app.o.d" -o ${OBJECTDIR}/_ext/2029137180/app.o ../Applications/ChristianRaun/app.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923152968/tle5012b.o: ../src/Devices/Encoder/TLE5012b/tle5012b.cpp  .generated_files/flags/default/20172a12b8bf236f6c914208f1ba3d91e3df0308 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1923152968" 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1923152968/tle5012b.o.d" -o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ../src/Devices/Encoder/TLE5012b/tle5012b.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/274937249/Lan9255.o: ../src/Devices/Ethercat/Lan9255/Lan9255.cpp  .generated_files/flags/default/529205f1840463df9b8f0b3d7cf6e84ccd0be4d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/274937249" 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/274937249/Lan9255.o.d" -o ${OBJECTDIR}/_ext/274937249/Lan9255.o ../src/Devices/Ethercat/Lan9255/Lan9255.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/112626930/SoftSPIB.o: ../src/Libraries/SoftSPI/SoftSPIB.cpp  .generated_files/flags/default/c697650e9139f8f77f63c4cda2c1d98125f7f7ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/112626930" 
	@${RM} ${OBJECTDIR}/_ext/112626930/SoftSPIB.o.d 
	@${RM} ${OBJECTDIR}/_ext/112626930/SoftSPIB.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/112626930/SoftSPIB.o.d" -o ${OBJECTDIR}/_ext/112626930/SoftSPIB.o ../src/Libraries/SoftSPI/SoftSPIB.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2111973148/tmc2130.o: ../src/Devices/Stepper/TMC2130/tmc2130.cpp  .generated_files/flags/default/1cf49a54d6ce7967324f2f9927ba7eab65f3b196 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2111973148" 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2111973148/tmc2130.o.d" -o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ../src/Devices/Stepper/TMC2130/tmc2130.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/863837145/timer.o: ../src/Devices/Timer/timer.cpp  .generated_files/flags/default/fc7d9584c4cec6a5036634c55cbbc571b5d862fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/863837145" 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/863837145/timer.o.d" -o ${OBJECTDIR}/_ext/863837145/timer.o ../src/Devices/Timer/timer.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/ef0578998263ec32846ea81a23e14e28c7b8c283 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2029137180/app.o: ../Applications/ChristianRaun/app.cpp  .generated_files/flags/default/aab67338ef66bca9191d81e1d88c548b28fe29a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2029137180" 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2029137180/app.o.d" -o ${OBJECTDIR}/_ext/2029137180/app.o ../Applications/ChristianRaun/app.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923152968/tle5012b.o: ../src/Devices/Encoder/TLE5012b/tle5012b.cpp  .generated_files/flags/default/2d3b3d9d7c80b90e24d5f4c2e29706b50322a364 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1923152968" 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1923152968/tle5012b.o.d" -o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ../src/Devices/Encoder/TLE5012b/tle5012b.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/274937249/Lan9255.o: ../src/Devices/Ethercat/Lan9255/Lan9255.cpp  .generated_files/flags/default/898110845de5bae0760fcc37c27fe7575fb2e361 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/274937249" 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/274937249/Lan9255.o.d" -o ${OBJECTDIR}/_ext/274937249/Lan9255.o ../src/Devices/Ethercat/Lan9255/Lan9255.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/112626930/SoftSPIB.o: ../src/Libraries/SoftSPI/SoftSPIB.cpp  .generated_files/flags/default/893f7e54924ce66fcb2a740ef5ff6d2f80d7f1ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/112626930" 
	@${RM} ${OBJECTDIR}/_ext/112626930/SoftSPIB.o.d 
	@${RM} ${OBJECTDIR}/_ext/112626930/SoftSPIB.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/112626930/SoftSPIB.o.d" -o ${OBJECTDIR}/_ext/112626930/SoftSPIB.o ../src/Libraries/SoftSPI/SoftSPIB.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2111973148/tmc2130.o: ../src/Devices/Stepper/TMC2130/tmc2130.cpp  .generated_files/flags/default/c18bd16d169c34a82f22ea841559dfd7e203020b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2111973148" 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2111973148/tmc2130.o.d" -o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ../src/Devices/Stepper/TMC2130/tmc2130.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/863837145/timer.o: ../src/Devices/Timer/timer.cpp  .generated_files/flags/default/d8dd95bf9490e909901252b5c048447040a73e60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/863837145" 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/863837145/timer.o.d" -o ${OBJECTDIR}/_ext/863837145/timer.o ../src/Devices/Timer/timer.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/368943e1cfc7f19438f093ca35b80c25a5d7ba9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX018_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/LAN9255ZMX018.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/LAN9255ZMX018.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [${Sh} "../src/Version/fw_version_gen.sh"]"
	@${Sh} "../src/Version/fw_version_gen.sh"
	@echo "--------------------------------------"

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
