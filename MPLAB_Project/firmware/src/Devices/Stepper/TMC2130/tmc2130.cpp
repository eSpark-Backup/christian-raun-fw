#include "tmc2130.hpp"
#include "../../Encoder/TLE5012b/tle5012b.hpp"
#include "../../../Libraries/print/print.hpp"

#define TIMER_RESOLUTION_NS 16.666666667e-9
#define STALL_VALUE         -55              // A lower value gives a higher sensitivity,  range (-64  to  +64)
// #define STALL_VALUE         10

#define FULLSTEP        256
#define MICROSTEP       16
#define VMAX(rpm)       (((rpm)/60.0) * (MICROSTEP * (360.0/1.8)) * (16777216.0/12000000.0))     // 2^24 = 16777216
#define TSTEP_CALC(rpm) (((16777216.0/VMAX(rpm)) * (MICROSTEP/(double)FULLSTEP)))

volatile uint32_t maxToggleCount=0;
volatile uint32_t toggleCounter=0;

volatile ErrorFlags motorErrors;

int map(int value, int in_min, int in_max, int out_min, int out_max)
{
    return ((value > in_max) || (value < in_min)) ? ((value > in_max) ? out_max : out_min) : (value - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void Tmc2130::setup(TMC2160Stepper* motorDriver, IEncoder* encoder, dataOutPacket* dataOut, WorkerThread* thread)
{
    PWMCallbackArgs* args = new PWMCallbackArgs;
    args->stepper = this;
    args->dataOut = dataOut;
    this->rpmSequenceStatus = false;

    TC4_TimerCallbackRegister(tc4Callback, (uintptr_t) args);
    // TCC1_PWMCallbackRegister(pwmCallback, (uintptr_t) args);         // ISR getting triggerred wrong number of times
    this->encoder = encoder;
    this->driver = motorDriver;
    this->worker = thread;

    motorErrors.error = 0;
    
    driver->enable();
    driver->begin();
    driver->toff(5);
    driver->blank_time(24);
    driver->microsteps(16);
    driver->rms_current(1100);
    driver->en_pwm_mode(true);
    driver->pwm_autoscale(true);
    // driver->TCOOLTHRS(0xFFFFF);
    driver->THIGH(0);
    driver->semin(10);
    driver->semax(1);
    driver->sedn(0b01);
    driver->sgt(STALL_VALUE);
    driver->diag0_otpw(true);
    // driver->diag1_stall(true);
//    uint32_t value1 = driver->DRV_STATUS();
}

bool Tmc2130::isRPMSequenceRunning() {
    return this->rpmSequenceStatus;
}

void Tmc2130::setRPMSequenceStatus(bool status) {
    if(!status)
        this->rampTmcSet = false;
    this->rpmSequenceStatus = status;            
}

void Tmc2130::loop()
{
    toggleCounter++;
}

void Tmc2130::run(float rpm, direction_t dir, uint32_t steps)
{    
    if(steps != maxToggleCount)
    {
        if (!isRunning())
        {   
            if (!rpm)
            {
                return;
            }
            maxToggleCount = steps;
            if (maxToggleCount)
            {
                run(rpm, dir);
            }
        }
    } 
}

void calculatePrescaler(float time, uint32_t* scaler, uint32_t* period)
{
    uint64_t ticks = time / TIMER_RESOLUTION_NS;

    uint32_t max_ticks = 0xFFFFFFFF;
    uint32_t prescaler = 1;

    // Apply prescaler if needed
    while (ticks > max_ticks) {
        prescaler *= 2; // Typically prescalers are powers of 2 (e.g., 1, 2, 4, 8, ...)
        if((prescaler==32)||(prescaler==128)||(prescaler==512))
        {
            prescaler *= 2;
        }
        ticks = time / (TIMER_RESOLUTION_NS * prescaler);
    }
    *period = ticks;

    switch (prescaler) {
        case 1:    *scaler = TC_CTRLA_PRESCALER_DIV1_Val; break;
        case 2:    *scaler = TC_CTRLA_PRESCALER_DIV2_Val; break;
        case 4:    *scaler = TC_CTRLA_PRESCALER_DIV4_Val; break;
        case 8:    *scaler = TC_CTRLA_PRESCALER_DIV8_Val; break;
        case 16:   *scaler = TC_CTRLA_PRESCALER_DIV16_Val; break;
        case 64:   *scaler = TC_CTRLA_PRESCALER_DIV64_Val; break;
        case 256:  *scaler = TC_CTRLA_PRESCALER_DIV256_Val; break;
        case 1024: *scaler = TC_CTRLA_PRESCALER_DIV1024_Val; break;
        default:   *scaler = TC_CTRLA_PRESCALER_DIV1_Val; // Default to DIV1 in case of error
    }
}

void Tmc2130::run(float rpm, direction_t dir)
 {
    PORT_PinWrite(DIR_PIN, dir);
    // TCC1_PWMStop();
    // TC4_TimerStop();

    uint32_t preScaler, tc4Period;
    uint32_t tStep = TSTEP_CALC(rpm);
    float frequency = toFrequency(rpm);
    // calculate TCC1 period for PWM generation
    // Prescaler (period+1) = (Timer clock freq)/(required freq)
    // (Timer clock freq) is the clock freq assigned by MCC, TCC0/1 is assigned GCLK0 which taking its source from FDPLL0
    uint32_t periodPWM = ((tcc1BaseClkFreq)/(frequency)) - 1;         // Need to remove the magic number and retrieve TCC1 peripheral clock freq from registers
    
    float completeTime = (maxToggleCount/frequency);
    calculatePrescaler(completeTime, &preScaler, &tc4Period);

    tc4PrescalerSet(preScaler);
    TC4_Timer32bitPeriodSet(tc4Period);

    TCC1_PWM24bitPeriodSet(periodPWM);
    TCC1_PWM24bitDutySet(TCC1_CHANNEL2,((periodPWM)/2));

    TC4_TimerStart();
    TCC1_PWMStart();
    
    notifyObservers(rpm, dir);

    // float temp = (true==isRPMSequenceRunning())?(TSTEP_CALC(rampRPMArr[rampSteps])):(tStep);
    // if(!rampTmcSet)
    // {
    //     worker->addTask([driver = this->driver, arg = temp] {
    //         uint32_t val = ((arg+10)>0xFFFFF) ? 0xFFFFF : (arg+10);
    //         driver->TCOOLTHRS(val); 
    //         val = ((arg-10)<0) ? 0 : (arg-10);
    //         driver->TPWMTHRS(val);
    //         // driver->diag1_stall(true);
    //     });
    // }

    int sgtVal = map(rpm, 0, 200, 20, -15);
    // worker->addTask([driver = this->driver, arg1 = sgtVal, arg = tStep] {
            // uint32_t val = ((arg+10)>0xFFFFF) ? 0xFFFFF : (arg+10);
            // driver->TCOOLTHRS(val);
            // val = ((arg-10)<0) ? 0 : (arg-10);
            // driver->TPWMTHRS(val);
            // driver->sgt(arg1);
            // ITM_Printf(0, "Writing sgt value (%d).\n", arg1);
    // });
            // uint32_t val = ((tStep+10)>0xFFFFF) ? 0xFFFFF : (tStep+10);
            // driver->TCOOLTHRS(val);
            // val = ((tStep-10)<0) ? 0 : (tStep-10);
            // driver->TPWMTHRS(val);
            // driver->sgt(sgtVal);


    rampTmcSet = isRPMSequenceRunning();
    driver->diag1_stall(true);

    // worker->addTask([driver = this->driver, arg = true] { driver->diag1_stall(arg); });
}

void Tmc2130::stop(void)
{
    // uint32_t error;
    // if(toggleCounter != maxToggleCount)
    // {
    //     error = toggleCounter - maxToggleCount;
    // }
    // toggleCounter = 0;
    driver->diag1_stall(false);
    encoder->motorStopped();
    TCC1_PWMStop();
    TC4_TimerStop();
    TC4_Timer32bitPeriodSet(0);


    // worker->addTask([driver = this->driver, arg = false] { driver->diag1_stall(arg); });

}

void Tmc2130::resetMaxToggleCount(void)
{
    maxToggleCount = 0;
}

void Tmc2130::calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement)
{
    uint32_t steps = 0;
    
    switch (mode)
    {      
        case CALIBRATION_SEQUENCE_01:        
            switch(out->deviceStatus)
            {
                case None:
                    resetMaxToggleCount();
                    run(CALIBRATION_RPM, ANTICLOCKWISE);
                    out->deviceStatus = CALIBRATION_SEQUENCE_01_STARTED;  
                    break;

                case CALIBRATION_SEQUENCE_01_STARTED:
                    // if (encoder->isMotorStalled())
                    if (isErrorPresent())
                    {
                        stop();
                        if(motorErrors.flag.encoderStallFlag || motorErrors.flag.driverStallFlag)
                            out->deviceStatus = CALIBRATION_SEQUENCE_01_SUCCESS;
//                        encoder->setZeroOffset();
                    }
                    break;  

                case CALIBRATION_SEQUENCE_01_SUCCESS:
                    break;

                default:
                    out->deviceStatus = None;
                    break;
            }
            break;
        
        case CALIBRATION_SEQUENCE_02:
            switch(out->deviceStatus)
            {
                case None:
                    resetMaxToggleCount();
                    steps = displacement * STEPS_PER_MM;
                    run(CALIBRATION_RPM, CLOCKWISE, steps);
                    out->deviceStatus = CALIBRATION_SEQUENCE_02_STARTED;
                    break;
                    
                case CALIBRATION_SEQUENCE_02_STARTED:
                    if (MOTOR_STALLED == out->motorDiagnostic)
                    {
                        out->deviceStatus = CALIBRATION_SEQUENCE_02_FAILED;
                    }
                    else if (!isRunning())
                    {
                        resetMaxToggleCount();
                        encoder->setZeroOffset();
                        out->deviceStatus = CALIBRATION_SEQUENCE_02_SUCCESS;
                    }
                    break;
                   
                case CALIBRATION_SEQUENCE_02_SUCCESS:
                    break;
                    
                default:
                    out->deviceStatus = None;
                    break;
            }
            break;
            
        default:
            break;   
    }
}

void tc4PrescalerSet(uint32_t scaler)
{
    /* Configure counter mode & prescaler */
    TC4_REGS->COUNT32.TC_CTRLA = TC_CTRLA_MODE_COUNT32 | (scaler << TC_CTRLA_PRESCALER_Pos) | TC_CTRLA_PRESCSYNC_PRESC ;
    while((TC4_REGS->COUNT32.TC_SYNCBUSY) != 0U)
    {
        /* Wait for Write Synchronization */
    }
}

/* Timer Interrupt handler */
void tc4Callback(TC_TIMER_STATUS status, uintptr_t context)
{
    static uint32_t rampStepsCount = 0;
    PWMCallbackArgs* args = (PWMCallbackArgs*)context;
    Tmc2130* stepper = args->stepper;
    dataOutPacket* dataOut = args->dataOut;
    stepper->stop();
    if(stepper->isRPMSequenceRunning())
    {
        if (!stepper->isRunning())
        {
            stepper->run();
            rampStepsCount++;
            if(((rampSteps * 2)) == rampStepsCount )
            {
                rampStepsCount = 0;
                stepper->setRPMSequenceStatus(false);
                dataOut->deviceStatus = RAMP_SEQUENCE_COMPLETED;
            }
        }
    }
}

void pwmCallback(TC_TIMER_STATUS status, uintptr_t context)
{
    // static uint32_t rampStepsCount = 0;
    // PWMCallbackArgs* args = (PWMCallbackArgs*)context;
    // Tmc2130* stepper = args->stepper;
    // dataOutPacket* dataOut = args->dataOut;

    // TC_TIMER_STATUS intFlag = (status & TCC_INTFLAG_OVF_Msk);
    // if(TCC_INTFLAG_OVF_Msk == intFlag)      // if callback is from OVF interrupt
    if(TCC_INTFLAG_MC2_Msk == status)      // if callback is from MC2 interrupt
    {
        // stepper->loop();
        // if(stepper->isRPMSequenceRunning())
        // {
        //     if (!stepper->isRunning())
        //     {    
        //         stepper->run();
        //         rampStepsCount++;
        //         if(((rampSteps * 2)) == rampStepsCount )
        //         {
        //             rampStepsCount = 0;
        //             stepper->setRPMSequenceStatus(false);
        //             dataOut->deviceStatus = RAMP_SEQUENCE_COMPLETED;
        //         }
        //     }
        // }
    }
}

bool Tmc2130::isRunning(void)
{
    // return (TC4_REGS->COUNT16.TC_CTRLA & TC_CTRLA_ENABLE_Msk);
    uint32_t state  = TCC1_REGS->TCC_CTRLA & TCC_CTRLA_ENABLE_Msk;
    if(state)
    {
        motorErrors.flag.encoderStallFlag = encoder->isMotorStalled();
    }
    // return (TCC1_REGS->TCC_CTRLA & TCC_CTRLA_ENABLE_Msk);
    return state;
}

void Tmc2130::setStallFlag(uint8_t flag)
{   
    motorErrors.flag.driverStallFlag = flag & 0x01;
}

void Tmc2130::setOvertempFlag(uint8_t flag)
{   
    motorErrors.flag.motorOvertempFlag = flag & 0x01;
}

uint8_t Tmc2130::isErrorPresent(void)
{   
    uint8_t currentStatus = motorErrors.error;
    if(currentStatus)
    {
        setOvertempFlag(0);
        setStallFlag(0);
    }
    return currentStatus;
    // return errors.error;
}

void Tmc2130::calculateRamp(rampSettings* rs)
{
    if (isRPMSequenceRunning())
        return;
        
    float requiredRotations = rs->displacement / displacementFactor;
    float requiredRPM = (requiredRotations / rs->time) * 60;
    float rampRPM = requiredRPM / rampSteps;
    float timePerStep = rs->rampDelay / rampSteps;
    float displacementPerStep = timePerStep * (rampRPM / 60) * displacementFactor;
    float totalDisplacementPerRamp = 0;
    for (int j = 1; j <= rampSteps; j++)
    {
        displacementRamp[j-1] = displacementPerStep * j;
        totalDisplacementPerRamp += displacementRamp[j-1];
        rampRPMArr[j-1] = rampRPM *j;
    }
    float requiredDisplacementWithoutRamps = rs->displacement - (totalDisplacementPerRamp * 2);
    displacementRamp[rampSteps] = requiredDisplacementWithoutRamps;
    float timeWithoutRamps = rs->time - (rs->rampDelay * 2);
    float requiredRotationsWithoutRamps = requiredDisplacementWithoutRamps / displacementFactor;
    float requiredRPMAfterWithoutRamps = (requiredRotationsWithoutRamps / timeWithoutRamps) * 60;
    rampRPMArr[rampSteps] = requiredRPMAfterWithoutRamps;
}

void Tmc2130::run(rampSettings* rs)
{  
    if (isRunning())
        return;
    if (isRPMSequenceRunning())
        return;
    
    if( (0 == rs->rampDelay) | (0 == rs->time))
        return;
        
    if (0 == rs->displacement)
        return;
    
    calculateRamp(rs);
    this->dir = rs->dir;
    run(true);
}

void Tmc2130::run(bool operationStart)
{   
    setRPMSequenceStatus(true);

    static uint32_t n;
    if (operationStart)
    {
        n = 0;
    }
    maxToggleCount =0;
    static bool downCount = false;
    uint32_t steps = displacementRamp[n] * STEPS_PER_MM;
    
    run(rampRPMArr[n], this->dir, steps);
    if(rampSteps == n)
    {
        downCount = true;
    }
    else if(0 == n)
    {
        downCount = false;
    }
    
    if(downCount)
        n--;
    else 
        n++;
}
