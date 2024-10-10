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
SOURCEFILES_QUOTED_IF_SPACED=../Applications/ChristianRaun/app.cpp ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc2.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tc/plib_tc4.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/libc_syscalls.c ../src/config/default/initialization.c ../src/config/default/startup_xc32.c ../src/config/default/exceptions.c ../src/config/default/interrupts.c ../src/Devices/Encoder/TLE5012b/tle5012b.cpp ../src/Devices/Ethercat/Lan9255/Lan9255.cpp ../src/Devices/Stepper/TMC2130/tmc2130.cpp ../src/Devices/Stepper/TMCStepper/CHOPCONF.cpp ../src/Devices/Stepper/TMCStepper/COOLCONF.cpp ../src/Devices/Stepper/TMCStepper/DRV_CONF.cpp ../src/Devices/Stepper/TMCStepper/DRV_STATUS.cpp ../src/Devices/Stepper/TMCStepper/GCONF.cpp ../src/Devices/Stepper/TMCStepper/IHOLD_IRUN.cpp ../src/Devices/Stepper/TMCStepper/PWMCONF.cpp ../src/Devices/Stepper/TMCStepper/SHORT_CONF.cpp ../src/Devices/Stepper/TMCStepper/SW_SPI.cpp ../src/Devices/Stepper/TMCStepper/TMC2130Stepper.cpp ../src/Devices/Stepper/TMCStepper/TMC2160Stepper.cpp ../src/Devices/Stepper/TMCStepper/TMCStepper.cpp ../src/Devices/Timer/timer.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/main.cpp ../src/app_lan9255.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2029137180/app.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/829342655/plib_tc4.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ${OBJECTDIR}/_ext/274937249/Lan9255.o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ${OBJECTDIR}/_ext/2005330033/CHOPCONF.o ${OBJECTDIR}/_ext/2005330033/COOLCONF.o ${OBJECTDIR}/_ext/2005330033/DRV_CONF.o ${OBJECTDIR}/_ext/2005330033/DRV_STATUS.o ${OBJECTDIR}/_ext/2005330033/GCONF.o ${OBJECTDIR}/_ext/2005330033/IHOLD_IRUN.o ${OBJECTDIR}/_ext/2005330033/PWMCONF.o ${OBJECTDIR}/_ext/2005330033/SHORT_CONF.o ${OBJECTDIR}/_ext/2005330033/SW_SPI.o ${OBJECTDIR}/_ext/2005330033/TMC2130Stepper.o ${OBJECTDIR}/_ext/2005330033/TMC2160Stepper.o ${OBJECTDIR}/_ext/2005330033/TMCStepper.o ${OBJECTDIR}/_ext/863837145/timer.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2029137180/app.o.d ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/829342655/plib_tc2.o.d ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d ${OBJECTDIR}/_ext/829342655/plib_tc4.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d ${OBJECTDIR}/_ext/274937249/Lan9255.o.d ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d ${OBJECTDIR}/_ext/2005330033/CHOPCONF.o.d ${OBJECTDIR}/_ext/2005330033/COOLCONF.o.d ${OBJECTDIR}/_ext/2005330033/DRV_CONF.o.d ${OBJECTDIR}/_ext/2005330033/DRV_STATUS.o.d ${OBJECTDIR}/_ext/2005330033/GCONF.o.d ${OBJECTDIR}/_ext/2005330033/IHOLD_IRUN.o.d ${OBJECTDIR}/_ext/2005330033/PWMCONF.o.d ${OBJECTDIR}/_ext/2005330033/SHORT_CONF.o.d ${OBJECTDIR}/_ext/2005330033/SW_SPI.o.d ${OBJECTDIR}/_ext/2005330033/TMC2130Stepper.o.d ${OBJECTDIR}/_ext/2005330033/TMC2160Stepper.o.d ${OBJECTDIR}/_ext/2005330033/TMCStepper.o.d ${OBJECTDIR}/_ext/863837145/timer.o.d ${OBJECTDIR}/_ext/1544482854/bootmode.o.d ${OBJECTDIR}/_ext/1544482854/coeappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d ${OBJECTDIR}/_ext/1544482854/emcy.o.d ${OBJECTDIR}/_ext/1544482854/foeappl.o.d ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d ${OBJECTDIR}/_ext/1544482854/mailbox.o.d ${OBJECTDIR}/_ext/1544482854/objdef.o.d ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2029137180/app.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc2.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/829342655/plib_tc4.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ${OBJECTDIR}/_ext/274937249/Lan9255.o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ${OBJECTDIR}/_ext/2005330033/CHOPCONF.o ${OBJECTDIR}/_ext/2005330033/COOLCONF.o ${OBJECTDIR}/_ext/2005330033/DRV_CONF.o ${OBJECTDIR}/_ext/2005330033/DRV_STATUS.o ${OBJECTDIR}/_ext/2005330033/GCONF.o ${OBJECTDIR}/_ext/2005330033/IHOLD_IRUN.o ${OBJECTDIR}/_ext/2005330033/PWMCONF.o ${OBJECTDIR}/_ext/2005330033/SHORT_CONF.o ${OBJECTDIR}/_ext/2005330033/SW_SPI.o ${OBJECTDIR}/_ext/2005330033/TMC2130Stepper.o ${OBJECTDIR}/_ext/2005330033/TMC2160Stepper.o ${OBJECTDIR}/_ext/2005330033/TMCStepper.o ${OBJECTDIR}/_ext/863837145/timer.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o

# Source Files
SOURCEFILES=../Applications/ChristianRaun/app.cpp ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc2.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tc/plib_tc4.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/libc_syscalls.c ../src/config/default/initialization.c ../src/config/default/startup_xc32.c ../src/config/default/exceptions.c ../src/config/default/interrupts.c ../src/Devices/Encoder/TLE5012b/tle5012b.cpp ../src/Devices/Ethercat/Lan9255/Lan9255.cpp ../src/Devices/Stepper/TMC2130/tmc2130.cpp ../src/Devices/Stepper/TMCStepper/CHOPCONF.cpp ../src/Devices/Stepper/TMCStepper/COOLCONF.cpp ../src/Devices/Stepper/TMCStepper/DRV_CONF.cpp ../src/Devices/Stepper/TMCStepper/DRV_STATUS.cpp ../src/Devices/Stepper/TMCStepper/GCONF.cpp ../src/Devices/Stepper/TMCStepper/IHOLD_IRUN.cpp ../src/Devices/Stepper/TMCStepper/PWMCONF.cpp ../src/Devices/Stepper/TMCStepper/SHORT_CONF.cpp ../src/Devices/Stepper/TMCStepper/SW_SPI.cpp ../src/Devices/Stepper/TMCStepper/TMC2130Stepper.cpp ../src/Devices/Stepper/TMCStepper/TMC2160Stepper.cpp ../src/Devices/Stepper/TMCStepper/TMCStepper.cpp ../src/Devices/Timer/timer.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/main.cpp ../src/app_lan9255.c

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

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: ["${MP_CC_DIR}/xc32-objcopy" -I elf32-little -O binary "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf" "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.bin]"
	@"${MP_CC_DIR}/xc32-objcopy" -I elf32-little -O binary "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf" "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.bin
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=
MP_LINKER_FILE_OPTION=

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
