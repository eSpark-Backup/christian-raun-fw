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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sample_app.c ../src/slave_stack/sdoserv.c ../src/main.c ../src/app_lan9255.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sample_app.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1544482854/bootmode.o.d ${OBJECTDIR}/_ext/1544482854/coeappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d ${OBJECTDIR}/_ext/1544482854/emcy.o.d ${OBJECTDIR}/_ext/1544482854/foeappl.o.d ${OBJECTDIR}/_ext/1544482854/mailbox.o.d ${OBJECTDIR}/_ext/1544482854/objdef.o.d ${OBJECTDIR}/_ext/1544482854/sample_app.o.d ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/118108884/drv_lan9255.o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1544482854/bootmode.o ${OBJECTDIR}/_ext/1544482854/coeappl.o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ${OBJECTDIR}/_ext/1544482854/emcy.o ${OBJECTDIR}/_ext/1544482854/foeappl.o ${OBJECTDIR}/_ext/1544482854/mailbox.o ${OBJECTDIR}/_ext/1544482854/objdef.o ${OBJECTDIR}/_ext/1544482854/sample_app.o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o

# Source Files
SOURCEFILES=../src/config/default/driver/lan9255/drv_lan9255.c ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/cmcc/plib_cmcc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/qspi/plib_qspi_spi.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/slave_stack/bootmode.c ../src/slave_stack/coeappl.c ../src/slave_stack/ecatappl.c ../src/slave_stack/ecatcoe.c ../src/slave_stack/ecatfoe.c ../src/slave_stack/ecatslv.c ../src/slave_stack/emcy.c ../src/slave_stack/foeappl.c ../src/slave_stack/mailbox.c ../src/slave_stack/objdef.c ../src/slave_stack/sample_app.c ../src/slave_stack/sdoserv.c ../src/main.c ../src/app_lan9255.c

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

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/6cd088269eff945c3f61341f89b854549240071b .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/36ad25d93f077e84f3ff024e7b76d9e2db469bb2 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/58cd56967942c4bd44f276a7266a38b7bcdf038 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/4b8d7db765888da8ea50d5ef6d569c3ecb197322 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/e0b15bbc632c7e8d18c85f180a50dd58dabcc0ab .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/62ebafb7224483c3257a6f1ccc8713785541d3ed .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/69a12e365e5450fbf6807a9d9d8457a0f96473a4 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/57a355f468de5e4aae893f9e14bc6ac480e11959 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/6b61e48abb6664fc0f7eed230cf1ac77b145679c .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/1e48abc00d1f95482b9ec0483ed15e3677043485 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/5aedea2e36b90c43a806327591bf86fbb33297e2 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/34dd15ef6f3af8294d48bc0709bc7a9501d50ed1 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/43c874ff7c9ccc612fc79e8f6c193719c6200017 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/2b192b325012b2e0349cb0921ef10b68abb9eb8a .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/acd23180e011979acb635c69916c49e62d346c60 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/854a8e7c3f034570e837e6924e7ab9b0c325e9b5 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/8c82a555745f7a43d764a5adb9e1f0f3a86a21cd .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/1f9c9f4db97cec11333bd5fcddbfc76188ec908d .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/fff71b7e138715e8e55d98671332b0701e272c28 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/4383ed3565a58b51c56041df7ad2f14d6ed44bf2 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/c11f79e02e24ed84eb4e86cf8955febb334e0f39 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/f302eda0b7ef03faaac3e17bcf71c2f4206cc525 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/88fa2bfe77ecf2227b73bf82d9ee3b4fc5420d4 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/b9d1b06f06bd38002f21a59f527ef00bb9d3ff91 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/e20787d4c859bab6aad852f9a4a7ffcee6cea649 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/d444ce7ec806e0050da810ef675c4a959403661a .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/7e5bfd3b16da5ba5413923ebc63d5f21909e0c8d .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sample_app.o: ../src/slave_stack/sample_app.c  .generated_files/flags/default/6d650b4586362f0f4a709de5384559182c8e8857 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sample_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sample_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sample_app.o.d" -o ${OBJECTDIR}/_ext/1544482854/sample_app.o ../src/slave_stack/sample_app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/3dba0c8e0d387bbdddb933ac467a4dc62f80512c .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/a7e4074e45cecc6dd92dc35e67b01574bddfc787 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/5b19f59f4ed14e62ec7df143c061ca8bc583d1a .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118108884/drv_lan9255.o: ../src/config/default/driver/lan9255/drv_lan9255.c  .generated_files/flags/default/90693cc81a6422bc63a29e0636ef5eb4ceb73d .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255.o ../src/config/default/driver/lan9255/drv_lan9255.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o: ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c  .generated_files/flags/default/3a10714a8cd9c3de6039339a64ef75a6da68727f .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/118108884" 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o.d" -o ${OBJECTDIR}/_ext/118108884/drv_lan9255_ecat_util.o ../src/config/default/driver/lan9255/drv_lan9255_ecat_util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/48e8edaad7c8b510788eba83e94d348433472b9a .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865131932/plib_cmcc.o: ../src/config/default/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/default/2a975e3ca1264460c8f49541be30078d113c0f41 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865131932" 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865131932/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/1865131932/plib_cmcc.o ../src/config/default/peripheral/cmcc/plib_cmcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/8b3aac37e1937cd38dfec12a7c9e1f3c7d60d61e .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/50bfd4e1d0dcbfca23627689fb08d51fc828dde7 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/4a50e73fb72d656b7f21f86886158209de146ce0 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/2ee184d3cf9a02dc24ab5edfeb6f9c7dda56b758 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/91d7be0f11405ac4600b89d7ad8ed4424638b2cb .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o: ../src/config/default/peripheral/qspi/plib_qspi_spi.c  .generated_files/flags/default/4c37f21725c958db1179bfbcaa87cc8f539d8e96 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1865555181" 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o.d" -o ${OBJECTDIR}/_ext/1865555181/plib_qspi_spi.o ../src/config/default/peripheral/qspi/plib_qspi_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/c7dfdfd4e6df6cb1f44e15132027d4704cd4f5c8 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/e5ff64f1552c30100d6c53f3277b1e2bcaa40529 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/c5f2db4c49527cb20d84b8406e38a84d172a3029 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/7f1bec6498b8455317fb564d0eadfa99e3d1db94 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/3024da88765b831ab1c609dd557a2180c6f5ee78 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/95f91884ee075d116906d91e6ba3cb395cf5c67f .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/ece4f80c87e255b622ec2c99626d1a611c2eae13 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/bootmode.o: ../src/slave_stack/bootmode.c  .generated_files/flags/default/344687894e6ff61462ff504bc1bbb4e8e0ec22eb .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/bootmode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/bootmode.o.d" -o ${OBJECTDIR}/_ext/1544482854/bootmode.o ../src/slave_stack/bootmode.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/coeappl.o: ../src/slave_stack/coeappl.c  .generated_files/flags/default/13d0d2605975718bfddd648a4d366cecc35473a8 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/coeappl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/coeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/coeappl.o ../src/slave_stack/coeappl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatappl.o: ../src/slave_stack/ecatappl.c  .generated_files/flags/default/18f4cfe9f3efaa9a1b7b0e50b2011f9c5d2bf9f3 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatappl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatappl.o ../src/slave_stack/ecatappl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatcoe.o: ../src/slave_stack/ecatcoe.c  .generated_files/flags/default/35af0249ea03371625e3db85cdf7a24748559326 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatcoe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatcoe.o ../src/slave_stack/ecatcoe.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatfoe.o: ../src/slave_stack/ecatfoe.c  .generated_files/flags/default/e935df333a94773cd96858c54033cd52d0591440 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatfoe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatfoe.o ../src/slave_stack/ecatfoe.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/ecatslv.o: ../src/slave_stack/ecatslv.c  .generated_files/flags/default/af3636aa0558793f65662a96006916aac89f51a9 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/ecatslv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/ecatslv.o.d" -o ${OBJECTDIR}/_ext/1544482854/ecatslv.o ../src/slave_stack/ecatslv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/emcy.o: ../src/slave_stack/emcy.c  .generated_files/flags/default/45ed8b055551ae562b4808c100f7f7620caecffc .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/emcy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/emcy.o.d" -o ${OBJECTDIR}/_ext/1544482854/emcy.o ../src/slave_stack/emcy.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/foeappl.o: ../src/slave_stack/foeappl.c  .generated_files/flags/default/f8821abcf17c7e023b41023dbcf8391ad605a83 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/foeappl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/foeappl.o.d" -o ${OBJECTDIR}/_ext/1544482854/foeappl.o ../src/slave_stack/foeappl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/mailbox.o: ../src/slave_stack/mailbox.c  .generated_files/flags/default/6f63015be1e049b3d7e2d316b0d12bb3066b806c .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/mailbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/mailbox.o.d" -o ${OBJECTDIR}/_ext/1544482854/mailbox.o ../src/slave_stack/mailbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/objdef.o: ../src/slave_stack/objdef.c  .generated_files/flags/default/e8d9d9ef940e2ef55effb3d31b9075bddf837d9b .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/objdef.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/objdef.o.d" -o ${OBJECTDIR}/_ext/1544482854/objdef.o ../src/slave_stack/objdef.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sample_app.o: ../src/slave_stack/sample_app.c  .generated_files/flags/default/d66e8b5a14e548e5d5cae6694f5fcc69ed3ef1c2 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sample_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sample_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sample_app.o.d" -o ${OBJECTDIR}/_ext/1544482854/sample_app.o ../src/slave_stack/sample_app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544482854/sdoserv.o: ../src/slave_stack/sdoserv.c  .generated_files/flags/default/6f31a24d7448123a8b51442c68b013d7b8999245 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1544482854" 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544482854/sdoserv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544482854/sdoserv.o.d" -o ${OBJECTDIR}/_ext/1544482854/sdoserv.o ../src/slave_stack/sdoserv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/ceb1305f51c5cecb7eb72c09399a8bcf85678dd9 .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_lan9255.o: ../src/app_lan9255.c  .generated_files/flags/default/c2cf83495d9a63aae5026c40dc86a56c6606fb0d .generated_files/flags/default/f77cdbf9080ba6664933e85c281090e8f0f1360d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_lan9255.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/lan9255" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/LAN9255ZMX019_DFP" -I"../src/slave_stack" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_lan9255.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_lan9255.o ../src/app_lan9255.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ethercat_foe.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ethercat_foe.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/LAN9255.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
