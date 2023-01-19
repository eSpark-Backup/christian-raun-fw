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
ProjectDir="D:\EtherCAT_Updated\firmware\LAN9255.X"
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
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/d59b8fea1211785ed75f76f39696cc472b51f2fc .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/3d8d832fb4124ca51fcdb256018ce2176ff00f14 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/9ba091f29acfa337f33c42322a300b875aa69c7d .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/471095d6540088a41b90196bee5173cafe66051c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/f5dd20fb5e2018f14f573bd6f9a8aca744b768b4 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/f74bcde1179ca9ab51e13ed524884079bac4020f .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/9cb3672df90d4bc5f6f5c46328b16e80e740afad .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/2ed9a491ab60c3c8fa3d72b88df9da88574d60c9 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/dbc73ff1c43e29473e03feed2a075cfb090d27b6 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/8112f46a0786b994cc9a3aa5e1db63117e416ed6 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c  .generated_files/flags/default/6338a941d41774e5448d2d1b10e2158e4a2fd073 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/b03aa8f270efbffcff3c6ab704a55378ab35ca27 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/a513eb0b6be727a557dec30efb849c6d4cf6a4ea .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc1.o: ../src/config/default/peripheral/tc/plib_tc1.c  .generated_files/flags/default/fa768d2a3bb4a20a93f483d0ad33cae548253c76 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc1.o ../src/config/default/peripheral/tc/plib_tc1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/548ce716eb82a36200aee694f55111eb32e657 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/89b763babf404d1daaf16f43c39ccac0670aaa01 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/1f37fd083d3f03d38d54cca7cb5098a9b0e1ad48 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/92246952c10fbab7be8582a1ea0559bd7efbb4b3 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/918daa4b901a177af572cca0cda6ccd92ddadef4 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/de3252b1d7762ee3f73c85b5d250389b487ba90b .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/ab246329ca9493330c0d835624ca3a13d2fc2072 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/1a5eb88a76bf9213f46d6f669ab225ac272a0744 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/8fb7a667972bdc7a71ade289278dd5b252d352f5 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/f143319e44911130add03f9dceabd7d1135e9d4a .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/210397ca44b75e71fa754cf503a684f8b712cb97 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/5f30fb4b4244cc50e0e6304d90cfd7496f4d070f .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/528f953c74991b39da60aa92d7a8dd3b629805 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/fbf3de5de9ec3016fb79efc69762ec5a942b5761 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/c5df1721e3bf5f16a29308586b9341478c10649e .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/942198af22e5ec87d01b67f8a2e9f5bf75086b91 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/4184950408708cb21b242b31cbf84722b59b1068 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/377f97af0bfbc2931d379cc3c5e02b2f52b728e6 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/b4329cf33c02794ed9d4d509c0f0c7c74c30af5c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/7a0746deabb75a2a1e743ae0bca21188b09c27c1 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/330fcb9f5b34b314a00e324d3c8805d22cdc38b0 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/bf74a1f2350bd4083fc9d4c7869d531a6a9b3cbe .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/f36b7fb9b91b3bf457b2d6e1ad7a11d0c604288b .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/93eaf0a00259519e33920e17f33b87f4fbd81fcc .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/e45b7b0abf0293b007a528811826b3986c3b0fde .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/d44ba4e5851c5d7a7b083191708a9fb0b99eb216 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/c4cbfbf645b2a833ab249a5ffa8a237dd696281c .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/19a8de236b06cade9940f9845cbdf66eab649983 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/299e3a4d9cdfd2a8944a8fd60602eb6060e52574 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c  .generated_files/flags/default/d950532e91ae828748a2d4ae4c226f045ee8e5ae .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom4_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom4_spi_master.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/4a7cd95fd526fb766f8b3dbd9c2628feffe1fdca .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/4d1537239cdc67b082dc88b8172b454b04a4d518 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc1.o: ../src/config/default/peripheral/tc/plib_tc1.c  .generated_files/flags/default/d26d389dd76b9684969fbbdb38008bd01340037b .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc1.o ../src/config/default/peripheral/tc/plib_tc1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/def3d758c98d7c9f1c8881985c6fd21df39adac .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/aab7ccba37568a0ccde9f7d0fd296bd293226af2 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/28d981c58dcd5e41faf538d47e9613706cf3ee89 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/aa4811ccadf6dc032d8053fb9764bbe63e94bff .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/6f460515e5ecffc19232effc83004c6afee5ffd .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/2075e4bb73e005866a1c20583263c0eea2a5c3c6 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/cf1d827e6ad282721dba04b0047b8315aa7d447f .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/505463991768a9f7530b3bbcb43dcceaeaa78fd4 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/ef0494e2a0926e1630cf56f1d4cceb88bbae03d5 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/ee53f4e9eb8fe268b432ff029fc97a25c37208c5 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/c0e5905819f3de4a5299a761a9a155dba59ee6b5 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/bbe9f5479a3d711ec94a72e3e2e170345ea6f0a6 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/5d0bb1afd4cf1b4a4f93e39cdc6a2fc57504aa54 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/f613d5c20966c44acb55dfd8b7911dd3d0f0a7ca .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/c4c5881fc35f60a83d9234d24d5e0f9737a91145 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/c9fe37c915710ceb2b570688e53cf6a54ed1ccbb .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/5829d0cd2e792989b0e76f82d86e6579af79de04 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o: ../src/slave_stack/LAN9255_EtherCAT_Slave.c  .generated_files/flags/default/50d8756420e6081144df643a53df8101687b2bfb .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o.d" -o ${OBJECTDIR}/_ext/1544482854/LAN9255_EtherCAT_Slave.o ../src/slave_stack/LAN9255_EtherCAT_Slave.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/a9a284bd35c5548dc53b2c2f9f1211613366cd7e .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2029137180/app.o: ../Applications/ChristianRaun/app.cpp  .generated_files/flags/default/871b114554088fe6bfed64559282b95fb96231ba .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2029137180" 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2029137180/app.o.d" -o ${OBJECTDIR}/_ext/2029137180/app.o ../Applications/ChristianRaun/app.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923152968/tle5012b.o: ../src/Devices/Encoder/TLE5012b/tle5012b.cpp  .generated_files/flags/default/69dac7658c52702c42e90904277188ebb8b5e5b9 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1923152968" 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1923152968/tle5012b.o.d" -o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ../src/Devices/Encoder/TLE5012b/tle5012b.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2111973148/tmc2130.o: ../src/Devices/Stepper/TMC2130/tmc2130.cpp  .generated_files/flags/default/8e02bb619239a22d97f977806d74f80195b52099 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2111973148" 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2111973148/tmc2130.o.d" -o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ../src/Devices/Stepper/TMC2130/tmc2130.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/c16026cf1e9a475433a568fb4847ab743229f4f6 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2029137180/app.o: ../Applications/ChristianRaun/app.cpp  .generated_files/flags/default/a351385d51078cf854c779a66fd5ad17054629a7 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2029137180" 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/2029137180/app.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2029137180/app.o.d" -o ${OBJECTDIR}/_ext/2029137180/app.o ../Applications/ChristianRaun/app.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1923152968/tle5012b.o: ../src/Devices/Encoder/TLE5012b/tle5012b.cpp  .generated_files/flags/default/153270a5591277430ac3a3241a5c217bef0b6060 .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/1923152968" 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1923152968/tle5012b.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1923152968/tle5012b.o.d" -o ${OBJECTDIR}/_ext/1923152968/tle5012b.o ../src/Devices/Encoder/TLE5012b/tle5012b.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2111973148/tmc2130.o: ../src/Devices/Stepper/TMC2130/tmc2130.cpp  .generated_files/flags/default/91c53aae77fe5c1c9d5dbd9a8f05fd2c83819f4e .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
	@${MKDIR} "${OBJECTDIR}/_ext/2111973148" 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111973148/tmc2130.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/2111973148/tmc2130.o.d" -o ${OBJECTDIR}/_ext/2111973148/tmc2130.o ../src/Devices/Stepper/TMC2130/tmc2130.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/364657d9f82999ca390950bc40742f5698704e4a .generated_files/flags/default/1d89c169a70b1625cac1dc36e541760999de5c3c
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
