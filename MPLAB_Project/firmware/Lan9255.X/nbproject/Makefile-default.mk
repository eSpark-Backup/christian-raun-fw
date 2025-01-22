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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/tc/plib_tc2.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tcc/plib_tcc1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/exceptions.c ../src/config/default/libc_syscalls.c ../src/config/default/initialization.c ../src/config/default/startup_xc32.c ../src/config/default/interrupts.c ../src/Devices/Ethercat/Lan9255/Lan9255.cpp ../src/Devices/Timer/timer.cpp ../src/Devices/TMCStepper/CHOPCONF.cpp ../src/Devices/TMCStepper/COOLCONF.cpp ../src/Devices/TMCStepper/DRVCONF.cpp ../src/Devices/TMCStepper/DRVCTRL.cpp ../src/Devices/TMCStepper/DRVSTATUS.cpp ../src/Devices/TMCStepper/DRV_CONF.cpp ../src/Devices/TMCStepper/DRV_STATUS.cpp ../src/Devices/TMCStepper/ENCMODE.cpp ../src/Devices/TMCStepper/GCONF.cpp ../src/Devices/TMCStepper/IHOLD_IRUN.cpp ../src/Devices/TMCStepper/Motor_Driver.cpp ../src/Devices/TMCStepper/PWMCONF.cpp ../src/Devices/TMCStepper/RAMP_STAT.cpp ../src/Devices/TMCStepper/SHORT_CONF.cpp ../src/Devices/TMCStepper/SMARTEN.cpp ../src/Devices/TMCStepper/SW_SPI.cpp ../src/Devices/TMCStepper/TMC2130Stepper.cpp ../src/Devices/TMCStepper/TMC2160Stepper.cpp ../src/Devices/TMCStepper/TMCStepper.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/main.cpp ../src/app_lan9255.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/60181570/plib_tcc1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/274937249/Lan9255.o ${OBJECTDIR}/_ext/863837145/timer.o ${OBJECTDIR}/_ext/106383955/CHOPCONF.o ${OBJECTDIR}/_ext/106383955/COOLCONF.o ${OBJECTDIR}/_ext/106383955/DRVCONF.o ${OBJECTDIR}/_ext/106383955/DRVCTRL.o ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o ${OBJECTDIR}/_ext/106383955/DRV_CONF.o ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o ${OBJECTDIR}/_ext/106383955/ENCMODE.o ${OBJECTDIR}/_ext/106383955/GCONF.o ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o ${OBJECTDIR}/_ext/106383955/Motor_Driver.o ${OBJECTDIR}/_ext/106383955/PWMCONF.o ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o ${OBJECTDIR}/_ext/106383955/SMARTEN.o ${OBJECTDIR}/_ext/106383955/SW_SPI.o ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o ${OBJECTDIR}/_ext/106383955/TMCStepper.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d ${OBJECTDIR}/_ext/829342655/plib_tc2.o.d ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d ${OBJECTDIR}/_ext/60181570/plib_tcc1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/274937249/Lan9255.o.d ${OBJECTDIR}/_ext/863837145/timer.o.d ${OBJECTDIR}/_ext/106383955/CHOPCONF.o.d ${OBJECTDIR}/_ext/106383955/COOLCONF.o.d ${OBJECTDIR}/_ext/106383955/DRVCONF.o.d ${OBJECTDIR}/_ext/106383955/DRVCTRL.o.d ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o.d ${OBJECTDIR}/_ext/106383955/DRV_CONF.o.d ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o.d ${OBJECTDIR}/_ext/106383955/ENCMODE.o.d ${OBJECTDIR}/_ext/106383955/GCONF.o.d ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o.d ${OBJECTDIR}/_ext/106383955/Motor_Driver.o.d ${OBJECTDIR}/_ext/106383955/PWMCONF.o.d ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o.d ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o.d ${OBJECTDIR}/_ext/106383955/SMARTEN.o.d ${OBJECTDIR}/_ext/106383955/SW_SPI.o.d ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o.d ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o.d ${OBJECTDIR}/_ext/106383955/TMCStepper.o.d ${OBJECTDIR}/_ext/1544482854/bootmode.o.d ${OBJECTDIR}/_ext/1544482854/coeappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d ${OBJECTDIR}/_ext/1544482854/emcy.o.d ${OBJECTDIR}/_ext/1544482854/foeappl.o.d ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d ${OBJECTDIR}/_ext/1544482854/mailbox.o.d ${OBJECTDIR}/_ext/1544482854/objdef.o.d ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/60181570/plib_tcc1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/274937249/Lan9255.o ${OBJECTDIR}/_ext/863837145/timer.o ${OBJECTDIR}/_ext/106383955/CHOPCONF.o ${OBJECTDIR}/_ext/106383955/COOLCONF.o ${OBJECTDIR}/_ext/106383955/DRVCONF.o ${OBJECTDIR}/_ext/106383955/DRVCTRL.o ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o ${OBJECTDIR}/_ext/106383955/DRV_CONF.o ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o ${OBJECTDIR}/_ext/106383955/ENCMODE.o ${OBJECTDIR}/_ext/106383955/GCONF.o ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o ${OBJECTDIR}/_ext/106383955/Motor_Driver.o ${OBJECTDIR}/_ext/106383955/PWMCONF.o ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o ${OBJECTDIR}/_ext/106383955/SMARTEN.o ${OBJECTDIR}/_ext/106383955/SW_SPI.o ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o ${OBJECTDIR}/_ext/106383955/TMCStepper.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o

# Source Files
SOURCEFILES=../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/tc/plib_tc2.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tcc/plib_tcc1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/exceptions.c ../src/config/default/libc_syscalls.c ../src/config/default/initialization.c ../src/config/default/startup_xc32.c ../src/config/default/interrupts.c ../src/Devices/Ethercat/Lan9255/Lan9255.cpp ../src/Devices/Timer/timer.cpp ../src/Devices/TMCStepper/CHOPCONF.cpp ../src/Devices/TMCStepper/COOLCONF.cpp ../src/Devices/TMCStepper/DRVCONF.cpp ../src/Devices/TMCStepper/DRVCTRL.cpp ../src/Devices/TMCStepper/DRVSTATUS.cpp ../src/Devices/TMCStepper/DRV_CONF.cpp ../src/Devices/TMCStepper/DRV_STATUS.cpp ../src/Devices/TMCStepper/ENCMODE.cpp ../src/Devices/TMCStepper/GCONF.cpp ../src/Devices/TMCStepper/IHOLD_IRUN.cpp ../src/Devices/TMCStepper/Motor_Driver.cpp ../src/Devices/TMCStepper/PWMCONF.cpp ../src/Devices/TMCStepper/RAMP_STAT.cpp ../src/Devices/TMCStepper/SHORT_CONF.cpp ../src/Devices/TMCStepper/SMARTEN.cpp ../src/Devices/TMCStepper/SW_SPI.cpp ../src/Devices/TMCStepper/TMC2130Stepper.cpp ../src/Devices/TMCStepper/TMC2160Stepper.cpp ../src/Devices/TMCStepper/TMCStepper.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/main.cpp ../src/app_lan9255.c

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
Device=LAN9255ZMX019
ProjectDir="C:\.Embedded\.GITHUB\ChristianRaun-FirmwareDevelopment\MPLAB_Project\firmware\LAN9255.X"
ProjectName=Lan9255
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [${MP_CC_DIR}/xc32-objcopy -I ihex -O binary "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.hex" "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.bin"]"
	@${MP_CC_DIR}/xc32-objcopy -I ihex -O binary "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.hex" "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.bin"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=LAN9255ZMX019
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ethercat_foe.ld"
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
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/c0794041f1094bbb3b1a4f7fb649d7d0d7298693 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/c123db95a6d6e0a9d1f5c29a962ca3c59fa01145 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/1a828959ee91780651c79a556c181b745d293d66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/7fd2cdc9dc4f2f7d179f1f3ee08f3d8671e3a1c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/a636a937f87dfc39d6706f57e195b0094ea548f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/4085ab83d96f8f4d550f0e04f559aa21b4477ddb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/13192b4454c82b2200d45505851d33d9f5a71046 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/795894c58a49904608406e577961bcb39d73c8fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/536fb5039afe14dd0919309f00d01128f6dfa58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/45a45135a03926d810f8464633c2a32ab3a4974e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/default/2fa7e15d472380f4548fc0b752b38602fb6018b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc2.o: ../src/config/default/peripheral/tc/plib_tc2.c  .generated_files/flags/default/7dccc3d7f19c283722af6e930616595b1996371b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc2.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ../src/config/default/peripheral/tc/plib_tc2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/ddda475b2c17eadc132a6c075a6c0aa613068769 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60181570/plib_tcc1.o: ../src/config/default/peripheral/tcc/plib_tcc1.c  .generated_files/flags/default/a571c7af47fca3e7a1c1d37cfa9823b17d7410cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181570" 
	@${RM} ${OBJECTDIR}/_ext/60181570/plib_tcc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181570/plib_tcc1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181570/plib_tcc1.o.d" -o ${OBJECTDIR}/_ext/60181570/plib_tcc1.o ../src/config/default/peripheral/tcc/plib_tcc1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/69931fa4be0e9b31c1d1fa7204c1c5b46dc03d46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/ebd2fe8e593c7607a51a14f22c7b764c99ae57be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/2ef59293c285de72ccc7b61907279837100b6563 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/7cd4c1ade0feaa065137a27b35005a31bfaf554f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/526dd011d35b1f3f95f839d1051e5f84aa1a0591 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/50e4b9c319ceb9fe6a9c83b7355cb1cca4c8d5b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/3c828719e60a3ab23a8722be1dfc7f2487ddf18c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/1a4d7bbc2734373047578842a2df80a44eda4610 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/2a0f32dc4a457c75c1207e7af86c44cb1876098d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/7d66ce57a59b589ab704aba01d25c883f20c13ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/8fb300c59fc8d6819653d522066ae9c6852d0a9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/fd7d980fa4aa0f9132f812f1cc428d7f2f479ecb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/4d5e80c0868987d5060621ad3e71ced53de8ffdf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/1dbba61b0ca594f03aed5999ce237bc8fc1a0311 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/a16922e402bfaaef170d6b3e3347b1ccda2dd3f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/d5f1d66068f377f3d6a7f3954ef9e9381fac1157 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/123d9a3e3a3f89e98e6f2df6be3834cd98334a29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/c75c47c6f502d1a489dadbaf5ae7064bc61e20ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/2582bbe5f8aed84bdd431ceaa58c40f5f0ac2d8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/6cb418e98378c9e5f0eee53dd1eac0f99c5c64ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/bdacf2d5889c71d3c73fd479a734eb0e56cf0dd8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/837bed4dec6783b96d5085144dbe4400ec74c1b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/57230ec80f815c494f6f8585e6dfdac60cddd050 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/8e6242a2a3a5e5d4f23cd1b949e29e6c9ff10d82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/9694b7c6185f0cb174dc6c966069422c9af4ad7e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/397fa149245677c4e981417f1ed957e7d785164f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/67096437dd0a61a62ccdbd59f8e21eb8a952827c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/c5302b1582d4f82ca8d44896250e7c4fdc53d871 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/e7865f8128697e3fd88377f853056fc09cb3ec31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/default/7dd4bcedfe47b28d981236db0f8607f13cfc5a4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc2.o: ../src/config/default/peripheral/tc/plib_tc2.c  .generated_files/flags/default/c265b06e7571b347ad7b46e96e7f1e96255430b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc2.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ../src/config/default/peripheral/tc/plib_tc2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/fa0fe706e80e464b78e5ae1613282b6f1d9100c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60181570/plib_tcc1.o: ../src/config/default/peripheral/tcc/plib_tcc1.c  .generated_files/flags/default/9235928bdef07a23e8ea6cb6a7237e783741a421 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181570" 
	@${RM} ${OBJECTDIR}/_ext/60181570/plib_tcc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181570/plib_tcc1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181570/plib_tcc1.o.d" -o ${OBJECTDIR}/_ext/60181570/plib_tcc1.o ../src/config/default/peripheral/tcc/plib_tcc1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/f298aef4d1efbae9d905c047f597a29c2facbc83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/1424bc1b0f62f773e8ba70e488e752792dfd50e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/5feb96927e8f78fd10bdf8aa6b4e009cc9297c75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/75aaa3d5a277f82c1dd510a67de3648d48c1fbe8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/aca89b9d39feafbd54b54c0279378552f8fb871 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/cfdf6ebf7f2465e817525d64390dfc69123f947 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/7a97550c4b814b8ab63300fc8b3f603de53bcd06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/e005f5118d95cbc7ebfbdd58722ef332552d6287 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/fe6ce4ad07993536758cadaff0911a2fc4b167a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/b780dcd0a43380a507bdb58434b77de790fc6212 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/1aea2d81b364c854e794de3c1c007e1013598a80 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/565c657f79d5c09e21520fc54c9b1a613c7d3e05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/dfe8ad8bb31197e18b00c712530557737af7a4ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/e8128d10aaca5debe7e419f5335c5aa8e01931ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/b21c2b8e5b6e7659ca7e821511afea8df86388fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/ec67d342638de5337cfea019b4f0f7d10cdcc67d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/647f18e43aafac6394e8249dcfa706c949466915 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/dc3b31b403296f43f72815c8694e2dbd4adba45c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/589244bd634356cf1ce843b1f75c85d6e8493479 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/274937249/Lan9255.o: ../src/Devices/Ethercat/Lan9255/Lan9255.cpp  .generated_files/flags/default/51e96b031b8935c1f8734e9e3d041c932e8e9a0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/274937249" 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/274937249/Lan9255.o.d" -o ${OBJECTDIR}/_ext/274937249/Lan9255.o ../src/Devices/Ethercat/Lan9255/Lan9255.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/863837145/timer.o: ../src/Devices/Timer/timer.cpp  .generated_files/flags/default/b9f879baf08c948228ce0bde9a17eb05b6c8a6c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/863837145" 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/863837145/timer.o.d" -o ${OBJECTDIR}/_ext/863837145/timer.o ../src/Devices/Timer/timer.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/CHOPCONF.o: ../src/Devices/TMCStepper/CHOPCONF.cpp  .generated_files/flags/default/cfcc32337e088263b1ac287276decf85b3076ea2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/CHOPCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/CHOPCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/CHOPCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/CHOPCONF.o ../src/Devices/TMCStepper/CHOPCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/COOLCONF.o: ../src/Devices/TMCStepper/COOLCONF.cpp  .generated_files/flags/default/40954d95a82665b3b66e9e3021bc0575d0a34ee6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/COOLCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/COOLCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/COOLCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/COOLCONF.o ../src/Devices/TMCStepper/COOLCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRVCONF.o: ../src/Devices/TMCStepper/DRVCONF.cpp  .generated_files/flags/default/e00e4146ffd0f2130bf9205de1ad9994184e4cb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRVCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/DRVCONF.o ../src/Devices/TMCStepper/DRVCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRVCTRL.o: ../src/Devices/TMCStepper/DRVCTRL.cpp  .generated_files/flags/default/100cd452713949832c3e6de91c6e9bce383b1487 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCTRL.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCTRL.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRVCTRL.o.d" -o ${OBJECTDIR}/_ext/106383955/DRVCTRL.o ../src/Devices/TMCStepper/DRVCTRL.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRVSTATUS.o: ../src/Devices/TMCStepper/DRVSTATUS.cpp  .generated_files/flags/default/d404ee3385f7c2862eaa0da6371eaecab51e328b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRVSTATUS.o.d" -o ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o ../src/Devices/TMCStepper/DRVSTATUS.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRV_CONF.o: ../src/Devices/TMCStepper/DRV_CONF.cpp  .generated_files/flags/default/9c04a0e192e337c50cd2cade8815c10816c6a3e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_CONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_CONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRV_CONF.o.d" -o ${OBJECTDIR}/_ext/106383955/DRV_CONF.o ../src/Devices/TMCStepper/DRV_CONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRV_STATUS.o: ../src/Devices/TMCStepper/DRV_STATUS.cpp  .generated_files/flags/default/6bc2afd8c59ed9812d5926068db87e8449b5e632 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRV_STATUS.o.d" -o ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o ../src/Devices/TMCStepper/DRV_STATUS.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/ENCMODE.o: ../src/Devices/TMCStepper/ENCMODE.cpp  .generated_files/flags/default/83ce08f04c86a2900393adf5278af2040882a409 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/ENCMODE.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/ENCMODE.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/ENCMODE.o.d" -o ${OBJECTDIR}/_ext/106383955/ENCMODE.o ../src/Devices/TMCStepper/ENCMODE.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/GCONF.o: ../src/Devices/TMCStepper/GCONF.cpp  .generated_files/flags/default/9aa712cd0cf652246a8e9aaaaa1a784cc8578241 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/GCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/GCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/GCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/GCONF.o ../src/Devices/TMCStepper/GCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o: ../src/Devices/TMCStepper/IHOLD_IRUN.cpp  .generated_files/flags/default/ea022b32123899580a988c3c71b5d0a9b56df732 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o.d" -o ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o ../src/Devices/TMCStepper/IHOLD_IRUN.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/Motor_Driver.o: ../src/Devices/TMCStepper/Motor_Driver.cpp  .generated_files/flags/default/3f4a4596027d6ad027ac724ba7f6592b3b39ac5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/Motor_Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/Motor_Driver.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/Motor_Driver.o.d" -o ${OBJECTDIR}/_ext/106383955/Motor_Driver.o ../src/Devices/TMCStepper/Motor_Driver.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/PWMCONF.o: ../src/Devices/TMCStepper/PWMCONF.cpp  .generated_files/flags/default/4c432de7acd1522576d4b1a53e66697aadf175e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/PWMCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/PWMCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/PWMCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/PWMCONF.o ../src/Devices/TMCStepper/PWMCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/RAMP_STAT.o: ../src/Devices/TMCStepper/RAMP_STAT.cpp  .generated_files/flags/default/b2512bd3572c01d04c8006233020d277ee8eb07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/RAMP_STAT.o.d" -o ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o ../src/Devices/TMCStepper/RAMP_STAT.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/SHORT_CONF.o: ../src/Devices/TMCStepper/SHORT_CONF.cpp  .generated_files/flags/default/7a4d5c7584767b60c7fb5cd9fd88cd4535a36ebd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/SHORT_CONF.o.d" -o ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o ../src/Devices/TMCStepper/SHORT_CONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/SMARTEN.o: ../src/Devices/TMCStepper/SMARTEN.cpp  .generated_files/flags/default/a73368845726090e2d2713872bb605c799fd3231 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/SMARTEN.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/SMARTEN.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/SMARTEN.o.d" -o ${OBJECTDIR}/_ext/106383955/SMARTEN.o ../src/Devices/TMCStepper/SMARTEN.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/SW_SPI.o: ../src/Devices/TMCStepper/SW_SPI.cpp  .generated_files/flags/default/2063addf474a9cf4107fbb83162531172eba032 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/SW_SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/SW_SPI.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/SW_SPI.o.d" -o ${OBJECTDIR}/_ext/106383955/SW_SPI.o ../src/Devices/TMCStepper/SW_SPI.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o: ../src/Devices/TMCStepper/TMC2130Stepper.cpp  .generated_files/flags/default/59c981131db449c03751b585b064340886b40938 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o.d" -o ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o ../src/Devices/TMCStepper/TMC2130Stepper.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o: ../src/Devices/TMCStepper/TMC2160Stepper.cpp  .generated_files/flags/default/d0f5f56e17a7b671793e6fdb54914948ae0c37a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o.d" -o ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o ../src/Devices/TMCStepper/TMC2160Stepper.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/TMCStepper.o: ../src/Devices/TMCStepper/TMCStepper.cpp  .generated_files/flags/default/608c7a18616afa825fccb6e89a085034ecc717e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMCStepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMCStepper.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/TMCStepper.o.d" -o ${OBJECTDIR}/_ext/106383955/TMCStepper.o ../src/Devices/TMCStepper/TMCStepper.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/8f499e7eac45f19dfc5f5f66a66cf5399e4f2374 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/274937249/Lan9255.o: ../src/Devices/Ethercat/Lan9255/Lan9255.cpp  .generated_files/flags/default/4522d5b81f1cef04ee1b206145dbc87eac3d9c28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/274937249" 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/274937249/Lan9255.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/274937249/Lan9255.o.d" -o ${OBJECTDIR}/_ext/274937249/Lan9255.o ../src/Devices/Ethercat/Lan9255/Lan9255.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/863837145/timer.o: ../src/Devices/Timer/timer.cpp  .generated_files/flags/default/b662ce7f58a4b3049d73db26239010d1b35e674e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/863837145" 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/863837145/timer.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/863837145/timer.o.d" -o ${OBJECTDIR}/_ext/863837145/timer.o ../src/Devices/Timer/timer.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/CHOPCONF.o: ../src/Devices/TMCStepper/CHOPCONF.cpp  .generated_files/flags/default/9463c3e51aebadfedf69800498be2409f7653b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/CHOPCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/CHOPCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/CHOPCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/CHOPCONF.o ../src/Devices/TMCStepper/CHOPCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/COOLCONF.o: ../src/Devices/TMCStepper/COOLCONF.cpp  .generated_files/flags/default/ca6f2d60a261452c1aa39b973464816167d2993d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/COOLCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/COOLCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/COOLCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/COOLCONF.o ../src/Devices/TMCStepper/COOLCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRVCONF.o: ../src/Devices/TMCStepper/DRVCONF.cpp  .generated_files/flags/default/f1c395437744b836f1aac371f82c79839c9a20b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRVCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/DRVCONF.o ../src/Devices/TMCStepper/DRVCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRVCTRL.o: ../src/Devices/TMCStepper/DRVCTRL.cpp  .generated_files/flags/default/cddaa306bb1ec2a91b63f6f94cb0b129f533eb36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCTRL.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVCTRL.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRVCTRL.o.d" -o ${OBJECTDIR}/_ext/106383955/DRVCTRL.o ../src/Devices/TMCStepper/DRVCTRL.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRVSTATUS.o: ../src/Devices/TMCStepper/DRVSTATUS.cpp  .generated_files/flags/default/b1a42a75b0438efec3732e40d985202b02b4803f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRVSTATUS.o.d" -o ${OBJECTDIR}/_ext/106383955/DRVSTATUS.o ../src/Devices/TMCStepper/DRVSTATUS.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRV_CONF.o: ../src/Devices/TMCStepper/DRV_CONF.cpp  .generated_files/flags/default/7c12da0f9e07a192540060f04ad30f77735dd76b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_CONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_CONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRV_CONF.o.d" -o ${OBJECTDIR}/_ext/106383955/DRV_CONF.o ../src/Devices/TMCStepper/DRV_CONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/DRV_STATUS.o: ../src/Devices/TMCStepper/DRV_STATUS.cpp  .generated_files/flags/default/59aaa4c5f8eccf990006ccae8264bc205991298d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/DRV_STATUS.o.d" -o ${OBJECTDIR}/_ext/106383955/DRV_STATUS.o ../src/Devices/TMCStepper/DRV_STATUS.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/ENCMODE.o: ../src/Devices/TMCStepper/ENCMODE.cpp  .generated_files/flags/default/feb6ed706cdeb0bc1d8132d13e3cf3a501e99afc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/ENCMODE.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/ENCMODE.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/ENCMODE.o.d" -o ${OBJECTDIR}/_ext/106383955/ENCMODE.o ../src/Devices/TMCStepper/ENCMODE.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/GCONF.o: ../src/Devices/TMCStepper/GCONF.cpp  .generated_files/flags/default/614493317292974c317d56b308bfb7ed04208749 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/GCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/GCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/GCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/GCONF.o ../src/Devices/TMCStepper/GCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o: ../src/Devices/TMCStepper/IHOLD_IRUN.cpp  .generated_files/flags/default/b985a78a539cb10c72807220b6127b0c125977a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o.d" -o ${OBJECTDIR}/_ext/106383955/IHOLD_IRUN.o ../src/Devices/TMCStepper/IHOLD_IRUN.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/Motor_Driver.o: ../src/Devices/TMCStepper/Motor_Driver.cpp  .generated_files/flags/default/c37c4e1642816a718a2829833b131c6e420ee847 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/Motor_Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/Motor_Driver.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/Motor_Driver.o.d" -o ${OBJECTDIR}/_ext/106383955/Motor_Driver.o ../src/Devices/TMCStepper/Motor_Driver.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/PWMCONF.o: ../src/Devices/TMCStepper/PWMCONF.cpp  .generated_files/flags/default/75f8722194ed15f67ce5ef61a08271b14ca8d36e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/PWMCONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/PWMCONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/PWMCONF.o.d" -o ${OBJECTDIR}/_ext/106383955/PWMCONF.o ../src/Devices/TMCStepper/PWMCONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/RAMP_STAT.o: ../src/Devices/TMCStepper/RAMP_STAT.cpp  .generated_files/flags/default/5f10886dc7de874afce0743edf3bcf048fa99b0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/RAMP_STAT.o.d" -o ${OBJECTDIR}/_ext/106383955/RAMP_STAT.o ../src/Devices/TMCStepper/RAMP_STAT.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/SHORT_CONF.o: ../src/Devices/TMCStepper/SHORT_CONF.cpp  .generated_files/flags/default/e57ad3953ca67eec5d743e499feeeea4202df867 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/SHORT_CONF.o.d" -o ${OBJECTDIR}/_ext/106383955/SHORT_CONF.o ../src/Devices/TMCStepper/SHORT_CONF.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/SMARTEN.o: ../src/Devices/TMCStepper/SMARTEN.cpp  .generated_files/flags/default/a36d4a467d488d0363d32472545770f2ee3c611 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/SMARTEN.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/SMARTEN.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/SMARTEN.o.d" -o ${OBJECTDIR}/_ext/106383955/SMARTEN.o ../src/Devices/TMCStepper/SMARTEN.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/SW_SPI.o: ../src/Devices/TMCStepper/SW_SPI.cpp  .generated_files/flags/default/41eba57e378882d4d6e53b5e87ccc2820616718e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/SW_SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/SW_SPI.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/SW_SPI.o.d" -o ${OBJECTDIR}/_ext/106383955/SW_SPI.o ../src/Devices/TMCStepper/SW_SPI.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o: ../src/Devices/TMCStepper/TMC2130Stepper.cpp  .generated_files/flags/default/4dfc323a790b8b2905a98c77722ac69ea8de0e43 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o.d" -o ${OBJECTDIR}/_ext/106383955/TMC2130Stepper.o ../src/Devices/TMCStepper/TMC2130Stepper.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o: ../src/Devices/TMCStepper/TMC2160Stepper.cpp  .generated_files/flags/default/24f432e89972016ecbb45bef941cd7f9a0616215 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o.d" -o ${OBJECTDIR}/_ext/106383955/TMC2160Stepper.o ../src/Devices/TMCStepper/TMC2160Stepper.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/106383955/TMCStepper.o: ../src/Devices/TMCStepper/TMCStepper.cpp  .generated_files/flags/default/fdff75346c701b4afbf546dca630e9ec90178117 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/106383955" 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMCStepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/106383955/TMCStepper.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/106383955/TMCStepper.o.d" -o ${OBJECTDIR}/_ext/106383955/TMCStepper.o ../src/Devices/TMCStepper/TMCStepper.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/c012649aa636cd5ef9569997fe5ce4953e78fa77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ethercat_foe.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ethercat_foe.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


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
