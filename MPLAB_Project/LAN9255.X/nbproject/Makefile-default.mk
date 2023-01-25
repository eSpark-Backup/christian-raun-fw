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

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Applications/ChristianRaun/app.cpp ../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tc/plib_tc1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/Devices/Encoder/TLE5012b/tle5012b.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/Devices/Stepper/TMC2130/tmc2130.cpp ../src/main.cpp ../src/app_lan9255.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2029137180/app.o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/829342655/plib_tc1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2029137180/app.o.d ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d ${OBJECTDIR}/_ext/829342655/plib_tc1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d ${OBJECTDIR}/_ext/1544482854/bootmode.o.d ${OBJECTDIR}/_ext/1544482854/coeappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d ${OBJECTDIR}/_ext/1544482854/emcy.o.d ${OBJECTDIR}/_ext/1544482854/foeappl.o.d ${OBJECTDIR}/_ext/1544482854/mailbox.o.d ${OBJECTDIR}/_ext/1544482854/objdef.o.d ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2029137180/app.o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/829342655/plib_tc1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o

# Source Files
SOURCEFILES=../Applications/ChristianRaun/app.cpp ../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/peripheral/tc/plib_tc1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/Devices/Encoder/TLE5012b/tle5012b.cpp ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sdoserv.c ../src/slave_stack/LAN9255_EtherCAT_Slave.c ../src/Devices/Stepper/TMC2130/tmc2130.cpp ../src/main.cpp ../src/app_lan9255.c

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
ProjectDir="D:\eSparkConsultingGroup\Projects\ChristianRaun-EtherCAT\Foe_Bin_test\EtherCAT_Stack_Cpp_Stepper_Encoder\firmware\LAN9255.X"
ProjectName=ethercat_counter_foe_app
ConfName=default
ImagePath="${DISTDIR}\LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
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
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/d0692139c1282c30c687954ac0804ee6482bf8bb .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/657a763b1a162dae695a9dae5e4b1866eb56e9e7 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/bf7886d691b60815da46a7697e85879c8ce9f113 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/f3b45e29ff814a1ad51d766376245760fdc51714 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/1066b5e960d376c6b0857c0d3a0b0a4f82629e75 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/f6bb7ebae345c08491d0c69949b47f9f13f8cf1a .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/31d5f79447d75ac0c907e33a408674c2b5e175e1 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/bb023157293c6384a9bb6960d242fa229aecd047 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/a31a47d80f764d915fc652ec032513cca559bd27 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/a2d30cfa63de34c24f1fcc04fe5e2a3978dc9b3c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c  .generated_files/flags/default/ade4050247850b5eebb609b4ac8991adb6c3e601 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/8f78473e4e194fcbc7271f1f8d4e064980d752bd .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/a44dd21edbe80f719d80b01579beb0c856489876 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc1.o: ../src/config/default/peripheral/tc/plib_tc1.c  .generated_files/flags/default/930bb84db5a9b6722b01ba546d32c36a305c6cd9 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc1.o ../src/config/default/peripheral/tc/plib_tc1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/44a2562ee00d90f1c678c92e3108033317a5e60c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/1fb196263186416c0b7b77c5cc88a53d957fc667 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/f8a29adaa04aa01a9e5d6ad7ec0122372ef1594c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/57b5c4cf81db7b00e2798bd332268face3fa6c32 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/a9713f9d72075f1588a87e79b82b99c8a24652bd .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/476527f1c25b6c79695ee26de0fe61c697c13479 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/7aba1147faeb7831f9e12fc3ab9104b9186845f2 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/5912242cd3a75aca6515e2cfe20451747fed3e5c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/45409cca0bc5b6f3b7c378e82929995803787fe7 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/d0099c1138b3cba97b534029c32497e95e51515 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/80127e726af82c2b15993e3849a8d62a0bff7e7 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/986d4d1105ae4be455392a343c3ab66b828e63cc .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/77a4dbb73555b93cb6b3f4563d582870c5ebab25 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/c72cde22d4f1d40c0f988a5995a8b1b69c3d24b3 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/4097d8345d50c084a689ef9ad8700cf4ca6a330a .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/8ace6dba694c1fbb63da025950438530221603a1 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/128b33c281e3bed079b11a33da69abcd0644be47 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/5d05b92338eb3a54489f56490c3b98d10c712b59 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/27bf8925229768d3431c87caa6bdbe828393b769 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/5811ce3ef1f802fa5e1827da8bffcaab634b71a2 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/db3e66eb10feee8a64eb46da1cb4d00b959e4cce .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/d326f0813aef1353a8c470808d70ed1811a00c22 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/977ea2e438e996e9b076a7476dc95f4a3efe1242 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/49a7a751a31909801e3bce0f50f6bc838c7f505c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/eb2820bf38a9424d681abcd240bc8e8960607ec5 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/423bdc714d107701e8c7d6c2278b42970bbe645c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/c958e2b0a313cfb7a26319b8004247ca0e5822ba .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/50bb00df00ceacdd7175a65feb37b344ca4959e5 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/c7f69c9fcfc2f1575ee1023f4f099e784387642d .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c  .generated_files/flags/default/bd4799451cd14e8bf77bb86ca597b67ddb3ae00e .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/4d5391498fcda0b3a128961ed427fd26a202188d .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/f9160b1138e6840c22b9a780b7f191ff6e5216c0 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc1.o: ../src/config/default/peripheral/tc/plib_tc1.c  .generated_files/flags/default/8db4d131222c2047cf3d54f6073e0b5fcfc372e4 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc1.o ../src/config/default/peripheral/tc/plib_tc1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/d57a6820b8632e3050db612e0f239cbaaf5be6a2 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/794976bcf64c8be74fefb8a00ff452b4f2a8e90f .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/88a946e8b110f6522fe778563b46b0666d09b82a .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/c1ef6b976cf14d7670704ecdb1ae751b40379ba7 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/3d3e1a084c7d863d56a32b92e2233c5ceb68a36d .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/2af396de9fa506fba7f5a06a3f87109b72ec5d00 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/b5e2d5ead1329f16469682c824b604761ff03b90 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/871cf9614a1da4d1062e416ffe42eed9c4d6fab .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/ad148b5cabd0da3e0ae5d348cc1842fead3317a6 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/a8e2d3970f2abcf8f7fe53f9c111e4b99d0ec622 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/95516ec204a1ae2397dc143438e19c19be4caf45 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/e3a96c95e36657fecdedc455e19e863930e1063d .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/f90e1e6ff6a15d0065872a985780d7e3c77d47d1 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/140b799812f30d3415937da45c9399a67894d763 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/2fac1de53a326efc6c2b1d59c0840bf658ad9f67 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/969639388c609b361db6551940c3eabc89544e58 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/6e26ab71ab9d12069b1d1a738e40cd0867839a09 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/ecaee429a4158827a3ae48326ea2714d3cd1d0c3 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/6124e80d2d78b0c367982f4a658ee5a15483265e .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2029137180/app.o: ../Applications/ChristianRaun/app.cpp  .generated_files/flags/default/bb52afcff22977ab776d2da739985dc627795913 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2029137180" 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2029137180/app.o.d" -o ${OBJECTDIR}/_ext/2029137180/app.o ../Applications/ChristianRaun/app.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923152968/tle5012b.o: ../src/Devices/Encoder/TLE5012b/tle5012b.cpp  .generated_files/flags/default/f5835f4515d54929351cdedb151f62e10a848295 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1923152968" 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1923152968/tle5012b.o.d" -o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ../src/Devices/Encoder/TLE5012b/tle5012b.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2111973148/tmc2130.o: ../src/Devices/Stepper/TMC2130/tmc2130.cpp  .generated_files/flags/default/b7d04560b4136b7dd012f6654e2369d1ac69308a .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2111973148" 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2111973148/tmc2130.o.d" -o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ../src/Devices/Stepper/TMC2130/tmc2130.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/be1823cb5be7e4eb1fa94125a7828e74fdb3f32d .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2029137180/app.o: ../Applications/ChristianRaun/app.cpp  .generated_files/flags/default/f2659b1f49e4a0979c46796480c8a11c23e85c0e .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2029137180" 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2029137180/app.o.d" -o ${OBJECTDIR}/_ext/2029137180/app.o ../Applications/ChristianRaun/app.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923152968/tle5012b.o: ../src/Devices/Encoder/TLE5012b/tle5012b.cpp  .generated_files/flags/default/b8a3913720371ae21e41a7f5743d530193acc629 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1923152968" 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1923152968/tle5012b.o.d" -o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ../src/Devices/Encoder/TLE5012b/tle5012b.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2111973148/tmc2130.o: ../src/Devices/Stepper/TMC2130/tmc2130.cpp  .generated_files/flags/default/aaa24d1988ac035aa4256ee8ea4d9a150f916714 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2111973148" 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2111973148/tmc2130.o.d" -o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ../src/Devices/Stepper/TMC2130/tmc2130.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/79aea87036c11884175841e709184dc8b6fa1999 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
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
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ethercat_foe.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
