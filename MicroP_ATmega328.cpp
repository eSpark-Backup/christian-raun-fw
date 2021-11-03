#include "SPI.h"
#include "Flash.h"
#include "optiboot.h"
extern "C" {
  #include <stdlib.h>
  #include <string.h>
  #include <inttypes.h>
  #include "utility/twi.h"
}

#include "Wire.h"

#ifndef TWI1_vect

SPIClass SPI;

uint8_t SPIClass::initialized = 0;
uint8_t SPIClass::interruptMode = 0;
uint8_t SPIClass::interruptMask = 0;
uint8_t SPIClass::interruptSave = 0;
#ifdef SPI_TRANSACTION_MISMATCH_LED
uint8_t SPIClass::inTransactionFlag = 0;
#endif

void SPIClass::begin()
{
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  if (!initialized) {
    // Set SS to high so a connected chip will be "deselected" by default
    uint8_t port = digitalPinToPort(SS);
    uint8_t bit = digitalPinToBitMask(SS);
    volatile uint8_t *reg = portModeRegister(port);

    // if the SS pin is not already configured as an output
    // then set it high (to enable the internal pull-up resistor)
    if(!(*reg & bit)){
      digitalWrite(SS, HIGH);
    }
    
    uint8_t TwoWire::rxBuffer[TWI_BUFFER_SIZE];
uint8_t TwoWire::rxBufferIndex = 0;
uint8_t TwoWire::rxBufferLength = 0;

uint8_t TwoWire::txAddress = 0;
uint8_t TwoWire::txBuffer[TWI_BUFFER_SIZE];
uint8_t TwoWire::txBufferIndex = 0;
uint8_t TwoWire::txBufferLength = 0;

uint8_t TwoWire::transmitting = 0;
void (*TwoWire::user_onRequest)(void);
void (*TwoWire::user_onReceive)(int);

// Constructors ////////////////////////////////////////////////////////////////

TwoWire::TwoWire()
{
}

// Public Methods //////////////////////////////////////////////////////////////

void TwoWire::begin(void)
{
  rxBufferIndex = 0;
  rxBufferLength = 0;

  txBufferIndex = 0;
  txBufferLength = 0;

  twi_init();
  twi_attachSlaveTxEvent(onRequestService); // default callback must exist
  twi_attachSlaveRxEvent(onReceiveService); // default callback must exist
}

void TwoWire::begin(uint8_t address)
{
  begin();
  twi_setAddress(address);
}

void TwoWire::begin(int address)
{
  begin((uint8_t)address);
}

void TwoWire::end(void)
{
  twi_disable();
}

void TwoWire::setClock(uint32_t clock)
{
  twi_setFrequency(clock);
}

uint8_t TwoWire::requestFrom(uint8_t address, uint8_t quantity, uint32_t iaddress, uint8_t isize, uint8_t sendStop)
{
  if (isize > 0) {
  // send internal address; this mode allows sending a repeated start to access
  // some devices' internal registers. This function is executed by the hardware
  // TWI module on other processors (for example Due's TWI_IADR and TWI_MMR registers)

  beginTransmission(address);

  // the maximum size of internal address is 3 bytes
  if (isize > 3){
    isize = 3;
  }

  // write internal register address - most significant byte first
  while (isize-- > 0)
    write((uint8_t)(iaddress >> (isize*8)));
  endTransmission(false);
  }

  // clamp to buffer length
  if(quantity > TWI_BUFFER_SIZE){
    quantity = TWI_BUFFER_SIZE;
  }
  // perform blocking read into buffer
  uint8_t read = twi_readFrom(address, rxBuffer, quantity, sendStop);
  // set rx buffer iterator vars
  rxBufferIndex = 0;
  rxBufferLength = read;

  return read;
}

uint8_t TwoWire::requestFrom(uint8_t address, uint8_t quantity, uint8_t sendStop) {
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint32_t)0, (uint8_t)0, (uint8_t)sendStop);
}

uint8_t TwoWire::requestFrom(uint8_t address, uint8_t quantity)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)true);
}

uint8_t TwoWire::requestFrom(int address, int quantity)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)true);
}

uint8_t TwoWire::requestFrom(int address, int quantity, int sendStop)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)sendStop);
}

void TwoWire::beginTransmission(uint8_t address)
{
  // indicate that we are transmitting
  transmitting = 1;
  // set address of targeted slave
  txAddress = address;
  // reset tx buffer iterator vars
  txBufferIndex = 0;
  txBufferLength = 0;
}

void TwoWire::beginTransmission(int address)
{
  beginTransmission((uint8_t)address);
}

//
//  Originally, 'endTransmission' was an f(void) function.
//  It has been modified to take one parameter indicating
//  whether or not a STOP should be performed on the bus.
//  Calling endTransmission(false) allows a sketch to 
//  perform a repeated start. 
//
//  WARNING: Nothing in the library keeps track of whether
//  the bus tenure has been properly ended with a STOP. It
//  is very possible to leave the bus in a hung state if
//  no call to endTransmission(true) is made. Some I2C
//  devices will behave oddly if they do not see a STOP.
//
uint8_t TwoWire::endTransmission(uint8_t sendStop)
{
  // transmit buffer (blocking)
  uint8_t ret = twi_writeTo(txAddress, txBuffer, txBufferLength, 1, sendStop);
  // reset tx buffer iterator vars
  txBufferIndex = 0;
  txBufferLength = 0;
  // indicate that we are done transmitting
  transmitting = 0;
  return ret;
}

//  This provides backwards compatibility with the original
//  definition, and expected behaviour, of endTransmission
//
uint8_t TwoWire::endTransmission(void)
{
  return endTransmission(true);
}

// must be called in:
// slave tx event callback
// or after beginTransmission(address)
size_t TwoWire::write(uint8_t data)
{
  if(transmitting){
  // in master transmitter mode
    // don't bother if buffer is full
    if(txBufferLength >= TWI_BUFFER_SIZE){
      setWriteError();
      return 0;
    }
    // put byte in tx buffer
    txBuffer[txBufferIndex] = data;
    ++txBufferIndex;
    // update amount in buffer
    txBufferLength = txBufferIndex;
  }else{
  // in slave send mode
    // reply to master
    twi_transmit(&data, 1);
  }
  return 1;
}

// must be called in:
// slave tx event callback
// or after beginTransmission(address)
size_t TwoWire::write(const uint8_t *data, size_t quantity)
{
  if(transmitting){
  // in master transmitter mode
    for(size_t i = 0; i < quantity; ++i){
      write(data[i]);
    }
  }else{
  // in slave send mode
    // reply to master
    twi_transmit(data, quantity);
  }
  return quantity;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int TwoWire::available(void)
{
  return rxBufferLength - rxBufferIndex;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int TwoWire::read(void)
{
  int value = -1;

  // get each successive byte on each call
  if(rxBufferIndex < rxBufferLength){
    value = rxBuffer[rxBufferIndex];
    ++rxBufferIndex;
  }

  return value;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int TwoWire::peek(void)
{
  int value = -1;

  if(rxBufferIndex < rxBufferLength){
    value = rxBuffer[rxBufferIndex];
  }

  return value;
}

void TwoWire::flush(void)
{
  // XXX: to be implemented.
}

// behind the scenes function that is called when data is received
void TwoWire::onReceiveService(uint8_t* inBytes, int numBytes)
{
  // don't bother if user hasn't registered a callback
  if(!user_onReceive){
    return;
  }
  // don't bother if rx buffer is in use by a master requestFrom() op
  // i know this drops data, but it allows for slight stupidity
  // meaning, they may not have read all the master requestFrom() data yet
  if(rxBufferIndex < rxBufferLength){
    return;
  }
  // copy twi rx buffer into local read buffer
  // this enables new reads to happen in parallel
  for(uint8_t i = 0; i < numBytes; ++i){
    rxBuffer[i] = inBytes[i];
  }
  // set rx iterator vars
  rxBufferIndex = 0;
  rxBufferLength = numBytes;
  // alert user program
  user_onReceive(numBytes);
}

// behind the scenes function that is called when data is requested
void TwoWire::onRequestService(void)
{
  // don't bother if user hasn't registered a callback
  if(!user_onRequest){
    return;
  }
  // reset tx buffer iterator vars
  // !!! this will kill any pending pre-master sendTo() activity
  txBufferIndex = 0;
  txBufferLength = 0;
  // alert user program
  user_onRequest();
}

// sets function called on slave write
void TwoWire::onReceive( void (*function)(int) )
{
  user_onReceive = function;
}

// sets function called on slave read
void TwoWire::onRequest( void (*function)(void) )
{
  user_onRequest = function;
}

// Preinstantiate Objects //////////////////////////////////////////////////////

TwoWire Wire = TwoWire();

#else

// Constructors ////////////////////////////////////////////////////////////////

TwoWire::TwoWire(int bufferLength,
                 void (*tw_init)(void),
                 void (*tw_disable)(void),
                 void (*tw_setAddress)(uint8_t),
                 void (*tw_setFrequency)(uint32_t),
                 uint8_t (*tw_readFrom)(uint8_t, uint8_t*, uint8_t, uint8_t),
                 uint8_t (*tw_writeTo)(uint8_t, uint8_t*, uint8_t, uint8_t, uint8_t),
                 uint8_t (*tw_transmit)(const uint8_t*, uint8_t),
                 void (*tw_reply)(uint8_t),
                 void (*tw_stop)(void),
                 void (*tw_releaseBus)(void),
                 void (*tw_attachSlaveRxEvent)( void (*onReceive)(uint8_t*, int) ),
                 void (*onReceive)(uint8_t*, int),
                 void (*tw_attachSlaveTxEvent)( void (*onTransmit)(void) ),
                 void (*onTransmit)(void))
{
  this->bufferLength = bufferLength;
  rxBuffer = new uint8_t[bufferLength];
  rxBufferIndex = 0;
  rxBufferLength = 0;

  txAddress = 0;
  txBuffer = new uint8_t[bufferLength];
  txBufferIndex = 0;
  txBufferLength = 0;

  transmitting = 0;
  this->tw_init = tw_init;
  this->tw_disable = tw_disable;
  this->tw_setAddress = tw_setAddress;
  this->tw_setFrequency = tw_setFrequency;
  this->tw_readFrom = tw_readFrom;
  this->tw_writeTo = tw_writeTo;
  this->tw_transmit = tw_transmit;
  this->tw_reply = tw_reply;
  this->tw_stop = tw_stop;
  this->tw_releaseBus = tw_releaseBus;
  tw_attachSlaveRxEvent(onReceive);
  tw_attachSlaveTxEvent(onTransmit);
}

TwoWire::~TwoWire()
{
  delete rxBuffer;
  delete txBuffer;
}

// Public Methods //////////////////////////////////////////////////////////////

void TwoWire::begin(void)
{
  rxBufferIndex = 0;
  rxBufferLength = 0;

  txBufferIndex = 0;
  txBufferLength = 0;

  tw_init();
}

void TwoWire::begin(uint8_t address)
{
  begin();
  tw_setAddress(address);
}

void TwoWire::begin(int address)
{
  begin((uint8_t)address);
}

void TwoWire::end(void)
{
  tw_disable();
}

void TwoWire::setClock(uint32_t clock)
{
  tw_setFrequency(clock);
}

uint8_t TwoWire::requestFrom(uint8_t address, uint8_t quantity, uint32_t iaddress, uint8_t isize, uint8_t sendStop)
{
  if (isize > 0) {
  // send internal address; this mode allows sending a repeated start to access
  // some devices' internal registers. This function is executed by the hardware
  // TWI module on other processors (for example Due's TWI_IADR and TWI_MMR registers)

  beginTransmission(address);

  // the maximum size of internal address is 3 bytes
  if (isize > 3){
    isize = 3;
  }

  // write internal register address - most significant byte first
  while (isize-- > 0)
    write((uint8_t)(iaddress >> (isize*8)));
  endTransmission(false);
  }

  // clamp to buffer length
  if(quantity > bufferLength){
    quantity = bufferLength;
  }
  // perform blocking read into buffer
  uint8_t read = tw_readFrom(address, rxBuffer, quantity, sendStop);
  // set rx buffer iterator vars
  rxBufferIndex = 0;
  rxBufferLength = read;

  return read;
}

uint8_t TwoWire::requestFrom(uint8_t address, uint8_t quantity, uint8_t sendStop) {
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint32_t)0, (uint8_t)0, (uint8_t)sendStop);
}

uint8_t TwoWire::requestFrom(uint8_t address, uint8_t quantity)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)true);
}

uint8_t TwoWire::requestFrom(int address, int quantity)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)true);
}

uint8_t TwoWire::requestFrom(int address, int quantity, int sendStop)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)sendStop);
}

void TwoWire::beginTransmission(uint8_t address)
{
  // indicate that we are transmitting
  transmitting = 1;
  // set address of targeted slave
  txAddress = address;
  // reset tx buffer iterator vars
  txBufferIndex = 0;
  txBufferLength = 0;
}

void TwoWire::beginTransmission(int address)
{
  beginTransmission((uint8_t)address);
}

//
//  Originally, 'endTransmission' was an f(void) function.
//  It has been modified to take one parameter indicating
//  whether or not a STOP should be performed on the bus.
//  Calling endTransmission(false) allows a sketch to
//  perform a repeated start.
//
//  WARNING: Nothing in the library keeps track of whether
//  the bus tenure has been properly ended with a STOP. It
//  is very possible to leave the bus in a hung state if
//  no call to endTransmission(true) is made. Some I2C
//  devices will behave oddly if they do not see a STOP.
//
uint8_t TwoWire::endTransmission(uint8_t sendStop)
{
  // transmit buffer (blocking)
  uint8_t ret = tw_writeTo(txAddress, txBuffer, txBufferLength, 1, sendStop);
  // reset tx buffer iterator vars
  txBufferIndex = 0;
  txBufferLength = 0;
  // indicate that we are done transmitting
  transmitting = 0;
  return ret;
}

//  This provides backwards compatibility with the original
//  definition, and expected behaviour, of endTransmission
//
uint8_t TwoWire::endTransmission(void)
{
  return endTransmission(true);
}

// must be called in:
// slave tx event callback
// or after beginTransmission(address)
size_t TwoWire::write(uint8_t data)
{
  if(transmitting){
  // in master transmitter mode
    // don't bother if buffer is full
    if(txBufferLength >= bufferLength){
      setWriteError();
      return 0;
    }
    // put byte in tx buffer
    txBuffer[txBufferIndex] = data;
    ++txBufferIndex;
    // update amount in buffer
    txBufferLength = txBufferIndex;
  }else{
  // in slave send mode
    // reply to master
    tw_transmit(&data, 1);
  }
  return 1;
}

// must be called in:
// slave tx event callback
// or after beginTransmission(address)
size_t TwoWire::write(const uint8_t *data, size_t quantity)
{
  if(transmitting){
  // in master transmitter mode
    for(size_t i = 0; i < quantity; ++i){
      write(data[i]);
    }
  }else{
  // in slave send mode
    // reply to master
    tw_transmit(data, quantity);
  }
  return quantity;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int TwoWire::available(void)
{
  return rxBufferLength - rxBufferIndex;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int TwoWire::read(void)
{
  int value = -1;

  // get each successive byte on each call
  if(rxBufferIndex < rxBufferLength){
    value = rxBuffer[rxBufferIndex];
    ++rxBufferIndex;
  }

  return value;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int TwoWire::peek(void)
{
  int value = -1;

  if(rxBufferIndex < rxBufferLength){
    value = rxBuffer[rxBufferIndex];
  }

  return value;
}

void TwoWire::flush(void)
{
  // XXX: to be implemented.
}

// behind the scenes function that is called when data is received
void TwoWire::onReceiveService(uint8_t* inBytes, int numBytes)
{
  // don't bother if user hasn't registered a callback
  if(!user_onReceive){
    return;
  }
  // don't bother if rx buffer is in use by a master requestFrom() op
  // i know this drops data, but it allows for slight stupidity
  // meaning, they may not have read all the master requestFrom() data yet
  if(rxBufferIndex < rxBufferLength){
    return;
  }
  // copy twi rx buffer into local read buffer
  // this enables new reads to happen in parallel
  for(uint8_t i = 0; i < numBytes; ++i){
    rxBuffer[i] = inBytes[i];
  }
  // set rx iterator vars
  rxBufferIndex = 0;
  rxBufferLength = numBytes;
  // alert user program
  user_onReceive(numBytes);
}

// behind the scenes function that is called when data is requested
void TwoWire::onRequestService(void)
{
  // don't bother if user hasn't registered a callback
  if(!user_onRequest){
    return;
  }
  // reset tx buffer iterator vars
  // !!! this will kill any pending pre-master sendTo() activity
  txBufferIndex = 0;
  txBufferLength = 0;
  // alert user program
  user_onRequest();
}

// sets function called on slave write
void TwoWire::onReceive( void (*function)(int) )
{
  user_onReceive = function;
}

// sets function called on slave read
void TwoWire::onRequest( void (*function)(void) )
{
  user_onRequest = function;
}

// Preinstantiate Objects //////////////////////////////////////////////////////

TwoWire Wire = TwoWire(TWI_BUFFER_SIZE,
                       twi_init,
                       twi_disable,
                       twi_setAddress,
                       twi_setFrequency,
                       twi_readFrom,
                       twi_writeTo,
                       twi_transmit,
                       twi_reply,
                       twi_stop,
                       twi_releaseBus,
                       twi_attachSlaveRxEvent,
                       [](uint8_t* v, int len){ Wire.onReceiveService(v, len); },
                       twi_attachSlaveTxEvent,
                       [](){ Wire.onRequestService(); });

#endif


    // When the SS pin is set as OUTPUT, it can be used as
    // a general purpose output port (it doesn't influence
    // SPI operations).
    pinMode(SS, OUTPUT);

    // Warning: if the SS pin ever becomes a LOW INPUT then SPI
    // automatically switches to Slave, so the data direction of
    // the SS pin MUST be kept as OUTPUT.
    SPCR |= _BV(MSTR);
    SPCR |= _BV(SPE);

    // Set direction register for SCK and MOSI pin.
    // MISO pin automatically overrides to INPUT.
    // By doing this AFTER enabling SPI, we avoid accidentally
    // clocking in a single bit since the lines go directly
    // from "input" to SPI control.
    // http://code.google.com/p/arduino/issues/detail?id=888
    pinMode(SCK, OUTPUT);
    pinMode(MOSI, OUTPUT);
  }
  initialized++; // reference count
  SREG = sreg;
}

void SPIClass::end() {
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  // Decrease the reference counter
  if (initialized)
    initialized--;
  // If there are no more references disable SPI
  if (!initialized) {
    SPCR &= ~_BV(SPE);
    interruptMode = 0;
    #ifdef SPI_TRANSACTION_MISMATCH_LED
    inTransactionFlag = 0;
    #endif
  }
  SREG = sreg;
}

// mapping of interrupt numbers to bits within SPI_AVR_EIMSK
#if defined(__AVR_ATmega32U4__)
  #define SPI_INT0_MASK  (1<<INT0)
  #define SPI_INT1_MASK  (1<<INT1)
  #define SPI_INT2_MASK  (1<<INT2)
  #define SPI_INT3_MASK  (1<<INT3)
  #define SPI_INT4_MASK  (1<<INT6)
#elif defined(__AVR_AT90USB646__) || defined(__AVR_AT90USB1286__)
  #define SPI_INT0_MASK  (1<<INT0)
  #define SPI_INT1_MASK  (1<<INT1)
  #define SPI_INT2_MASK  (1<<INT2)
  #define SPI_INT3_MASK  (1<<INT3)
  #define SPI_INT4_MASK  (1<<INT4)
  #define SPI_INT5_MASK  (1<<INT5)
  #define SPI_INT6_MASK  (1<<INT6)
  #define SPI_INT7_MASK  (1<<INT7)
#elif defined(EICRA) && defined(EICRB) && defined(EIMSK)
  #define SPI_INT0_MASK  (1<<INT4)
  #define SPI_INT1_MASK  (1<<INT5)
  #define SPI_INT2_MASK  (1<<INT0)
  #define SPI_INT3_MASK  (1<<INT1)
  #define SPI_INT4_MASK  (1<<INT2)
  #define SPI_INT5_MASK  (1<<INT3)
  #define SPI_INT6_MASK  (1<<INT6)
  #define SPI_INT7_MASK  (1<<INT7)
#else
  #ifdef INT0
  #define SPI_INT0_MASK  (1<<INT0)
  #endif
  #ifdef INT1
  #define SPI_INT1_MASK  (1<<INT1)
  #endif
  #ifdef INT2
  #define SPI_INT2_MASK  (1<<INT2)
  #endif
#endif

void SPIClass::usingInterrupt(uint8_t interruptNumber)
{
  uint8_t mask = 0;
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  switch (interruptNumber) {
  #ifdef SPI_INT0_MASK
  case 0: mask = SPI_INT0_MASK; break;
  #endif
  #ifdef SPI_INT1_MASK
  case 1: mask = SPI_INT1_MASK; break;
  #endif
  #ifdef SPI_INT2_MASK
  case 2: mask = SPI_INT2_MASK; break;
  #endif
  #ifdef SPI_INT3_MASK
  case 3: mask = SPI_INT3_MASK; break;
  #endif
  #ifdef SPI_INT4_MASK
  case 4: mask = SPI_INT4_MASK; break;
  #endif
  #ifdef SPI_INT5_MASK
  case 5: mask = SPI_INT5_MASK; break;
  #endif
  #ifdef SPI_INT6_MASK
  case 6: mask = SPI_INT6_MASK; break;
  #endif
  #ifdef SPI_INT7_MASK
  case 7: mask = SPI_INT7_MASK; break;
  #endif
  default:
    interruptMode = 2;
    break;
  }
  interruptMask |= mask;
  if (!interruptMode)
    interruptMode = 1;
  SREG = sreg;
}

void SPIClass::notUsingInterrupt(uint8_t interruptNumber)
{
  // Once in mode 2 we can't go back to 0 without a proper reference count
  if (interruptMode == 2)
    return;
  uint8_t mask = 0;
  uint8_t sreg = SREG;
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
  switch (interruptNumber) {
  #ifdef SPI_INT0_MASK
  case 0: mask = SPI_INT0_MASK; break;
  #endif
  #ifdef SPI_INT1_MASK
  case 1: mask = SPI_INT1_MASK; break;
  #endif
  #ifdef SPI_INT2_MASK
  case 2: mask = SPI_INT2_MASK; break;
  #endif
  #ifdef SPI_INT3_MASK
  case 3: mask = SPI_INT3_MASK; break;
  #endif
  #ifdef SPI_INT4_MASK
  case 4: mask = SPI_INT4_MASK; break;
  #endif
  #ifdef SPI_INT5_MASK
  case 5: mask = SPI_INT5_MASK; break;
  #endif
  #ifdef SPI_INT6_MASK
  case 6: mask = SPI_INT6_MASK; break;
  #endif
  #ifdef SPI_INT7_MASK
  case 7: mask = SPI_INT7_MASK; break;
  #endif
  default:
    break;
    // this case can't be reached
  }
  interruptMask &= ~mask;
  if (!interruptMask)
    interruptMode = 0;
  SREG = sreg;
}
Flash::Flash(const uint8_t *flash_array, const uint16_t flash_array_size, uint8_t *ram_array, const uint16_t ram_array_size)
  : _flash_array(flash_array),
    _flash_array_size(flash_array_size),
    _ram_array(ram_array),
    _ram_array_size(ram_array_size)
{
}

/**
 * @brief Lets you use the created object as a placeholder for the
 * passed RAM buffer
 *
 * @param index Array index
 * @return uint8_t&
 */
uint8_t& Flash::operator[](int16_t index)
{
  return _ram_array[index];
}


#ifdef RAMPZ
/**
 * @brief If you have allocated flash space in the far progmem, above 64kiB,
 * you can't just pass your flash space array to the constructor because a
 * 16-bit pointer isn't large enough. You therefore have to specify the address
 * with this function.
 *
 * @param address The start address of the allocated flash space.
 * You can get the address by using the pgm_get_far_address macro:
 * set_far_address(pgm_get_far_address(flashSpace))
 */
void Flash::set_far_address(uint32_t address)
{
  _far_flash_array_addr = address;
}
#endif

/**
 * @brief Checks if the microcontroller contains a bootloader that has flash
 * writing capabilities. It does so by checking if a spesific number is placed
 * at the very end of the flash memory
 *
 * @return true if compatible bootloader is present
 * @return false if incompatible or no bootloader is present
 */
bool Flash::check_writable()
{
  return optiboot_check_writable();
}

/**
 * @brief Clears the RAM buffer
 *
 * @param fill optional parameter to set what content the buffer will be
 * filled with. Defaults to 0x00 if not present
 */
void Flash::clear_buffer(uint8_t fill)
{
  memset(_ram_array, fill, sizeof(_ram_array_size));
}

/**
 * @brief Wrapper function for the RAM buffer. Lets you read a byte from a
 * given memory location
 *
 * @param index memory address
 * @return uint8_t 8-bit value stored in this address space
 */
uint8_t Flash::read_buffer(uint8_t index)
{
  return _ram_array[index];
}

/**
 * @brief Wrapper function for the RAM buffer. Lets you write a byte to a given
 * memory address
 *
 * @param index memory address
 * @param value 8-bit value to write to the memory location
 */
void Flash::write_buffer(uint8_t index, uint8_t value)
{
  _ram_array[index] = value;
}

/**
 * @brief Function that returns the size of the allocated RAM buffer
 *
 * @return uint16_t RAM buffer size in bytes
 */
uint16_t Flash::buffer_size()
{
  return _ram_array_size;
}

/**
 * @brief Writes the current content of the RAM buffer to a flash page
 *
 * @param flash_page_number page number to write the buffer to
 */
void Flash::write_page(uint16_t flash_page_number)
{
  // For devices with 128kiB or more, and data is stored in far progmem
  #ifdef RAMPZ
  if(_far_flash_array_addr != 0x0000)
  {
    optiboot_writePage(_far_flash_array_addr, _ram_array, flash_page_number);
  }
  // For devices with where flash space is allocated in near progmem, <64kiB
  else
  #endif
  {
    optiboot_writePage(_flash_array, _ram_array, flash_page_number);
  }
}

/**
 * @brief Reads a flash page and write its content to the RAM buffer
 *
 * @param flash_page_number page number to read from
 */
void Flash::fetch_page(uint16_t flash_page_number)
{
  // For devices with 128kiB or more, and data is stored in far progmem
  #ifdef RAMPZ
  if(_far_flash_array_addr != 0x0000)
  {
    optiboot_read(_far_flash_array_addr, _ram_array, flash_page_number, 0, _ram_array_size);
  }
  // For devices with where flash space is allocated in near progmem, <64kiB
  else
  #endif
  {
    optiboot_read(_flash_array, _ram_array, flash_page_number, 0, _ram_array_size);
  }
}

/**
 * @brief Read bytes from the flash memory and write its content to the RAM
 * buffer. You can read as many or as few bytes as you want. There are no page
 * numbers here, the start address represents the address number from the start
 * of the allocated space. This means that if you want to read 10 bytes from
 * page two you set the start address to 512 and stop address to 522. Note that
 * the span between the start and stop address can't be larger than the size of
 * the RAM buffer.
 *
 * @param start_address address to start reading from
 * @param stop_address  address where we stop reading at
 */
void Flash::fetch_data(uint16_t start_address, uint16_t stop_address)
{
  uint16_t end_address;
  if(stop_address - start_address > _ram_array_size)
    end_address = _ram_array_size;
  else
    end_address = stop_address;

  #ifdef RAMPZ
  if(_far_flash_array_addr != 0x0000)
  {
    optiboot_read(_far_flash_array_addr, _ram_array, 0, start_address, end_address);
  }
  // For devices with where flash space is allocated in near progmem, <64kiB
  else
  #endif
  {
    optiboot_read(_flash_array, _ram_array, 0, start_address, end_address);
  }
}

void do_spm_cli(optiboot_addr_t address, uint8_t command, uint16_t data)
{
  uint8_t sreg_save;

  sreg_save = SREG;    // Save old SREG value
  asm volatile("cli"); // Disable interrupts
  #ifdef RAMPZ
    RAMPZ = (address >> 16) & 0xff;  // Address bits 23-16 goes to RAMPZ
    #ifdef EIND
      uint8_t eind = EIND;
      EIND = FLASHEND / 0x20000;
    #endif
    do_spm((address & 0xffff), command, data); // do_spm accepts only lower 16 bits of address
    #ifdef EIND
      EIND = eind;
    #endif
  #else
    do_spm(address, command, data);  // 16-bit address - no problems to pass directly
  #endif
  SREG = sreg_save; // Restore SREG
}


/**
 * @brief Checks if the microcontroller contains a bootloader that has flash
 * writing capabilities. It does so by checking if a spesific number is placed
 * at the very end of the flash memory
 *
 * @return true if compatible bootloader is present
 * @return false if incompatible or no bootloader is present
 */
bool optiboot_check_writable()
{
  uint8_t content = 0;
  // 256kiB flash
  #if FLASHEND == 0x3FFFF
    content = pgm_read_byte_far(0x3FFFF);
  // 128kiB flash
  #elif FLASHEND == 0x1FFFF
    content = pgm_read_byte_far(0x1FFFF);
  //64kiB flash
  #elif FLASHEND == 0xFFFF
    content = pgm_read_byte(0xFFFF);
  // 32kiB flash
  #elif FLASHEND == 0x7FFF
    content = pgm_read_byte(0x7FFF);
  // 16kiB flash
  #elif FLASHEND == 0x3FFF
    content = pgm_read_byte(0x3FFF);
  // 8kiB flash
  #elif FLASHEND == 0x1FFF
    content = pgm_read_byte(0x1FFF);
  #endif

  if(content == 8)
    return true;
  else
    return false;
}


/**
 * @brief Erase flash page
 *
 * @param address flash page start address
 */
void optiboot_page_erase(optiboot_addr_t address)
{
  do_spm_cli(address, __BOOT_PAGE_ERASE, 0);
}


/**
 * @brief Writes a word/16-bit value to a temporary, internal buffer. Note that
 * this temporary buffer gets destroyed if you read or write to EEPROM. It's
 * therefore important that the buffer gets written to flash before doing
 * anything EEPROM related. Also note that you can write only once to one
 * location in the temporary buffer without erasing it first, which happens
 * after a flash page erase or write.
 *
 * @param address address where to write the 16-bit data
 * @param data data to write
 */
void optiboot_page_fill(optiboot_addr_t address, uint16_t data)
{
  do_spm_cli(address, __BOOT_PAGE_FILL, data);
}


/**
 * @brief Write the temporary, internal buffer to flash
 *
 * @param address flash page start address
 */
void optiboot_page_write(optiboot_addr_t address)
{
  do_spm_cli(address, __BOOT_PAGE_WRITE, 0);
}


// Higher level functions for reading and writing from flash

/**
 * @brief Read bytes from a given page and futher out in memory. It will
 * continue to fill the storage_array until the stop_address is reached. Note
 * that this function will only work for data stored in near progmem, below
 * 64kiB.
 *
 * @param allocated_flash_space the allocated flash space to read from
 * @param storage_array the array to store the flash content to
 * @param page_number the flash page number to start reading from
 * @param start_address the address to start reading from, relative to the flash page number
 * @param stop_address the address where we stop reading, relative to the flash page number
 */
void optiboot_read(const uint8_t allocated_flash_space[], uint8_t storage_array[], uint16_t page_number, uint16_t start_address, uint16_t stop_address)
{
  for(uint16_t j = start_address; j < stop_address; j++)
  {
    uint8_t read_character = pgm_read_byte(&allocated_flash_space[j + SPM_PAGESIZE * (page_number)]);
    storage_array[j - start_address] = read_character;
  }
}


/**
 * @brief Reads an entire flash page and stores the content in storage_array.
 * Note that this function will only work for data stored in near progmem,
 * below 64kiB.
 *
 * @param allocated_flash_space the allocated flash space to read from
 * @param storage_array the array to store the flash content to
 * @param page_number the flash page number to read from
 */
void optiboot_readPage(const uint8_t allocated_flash_space[], uint8_t storage_array[], uint16_t page_number)
{
  optiboot_read(allocated_flash_space, storage_array, page_number, 0, SPM_PAGESIZE);
}


/**
 * @brief Writes the content of data_to_store to a flash page.
 * Note that this function will only work for data stored in near progmem,
 * below 64kiB.
 *
 * @param allocated_flash_space the allocated flash space to read from
 * @param data_to_store an array that holds the data to store
 * @param page_number the flash page number to write to
 */
void optiboot_writePage(const uint8_t allocated_flash_space[], uint8_t data_to_store[], uint16_t page_number)
{
  uint16_t word_buffer = 0;

  // Erase the flash page
  optiboot_page_erase((optiboot_addr_t)&allocated_flash_space[SPM_PAGESIZE * page_number]);

  // Copy ram buffer to temporary flash buffer
  for(uint16_t i = 0; i < SPM_PAGESIZE; i++)
  {
    if(!(i & 0x01)) // We must write words
      word_buffer = data_to_store[i];
    else
    {
      word_buffer += (data_to_store[i] << 8);
      optiboot_page_fill((optiboot_addr_t)(void*) &allocated_flash_space[i + SPM_PAGESIZE * (page_number)], word_buffer);
    }
  }

  // Write temporary buffer to flash
  optiboot_page_write((optiboot_addr_t)(void*) &allocated_flash_space[SPM_PAGESIZE * (page_number)]);
}


// Overloaded functions to read and write to the "far" part of the flash memory (>64kiB)
#ifdef RAMPZ

/**
 * @brief Read bytes from a given page and futher out in memory. It will
 * continue to fill the storage_array until the stop_address is reached. Note
 * that this function is intended to be used to read data stored in far progmem,
 * above 64kiB.
 *
 * @param flash_space_address the allocated flash address to read from. Use
 * pgm_get_far_address(flash_space) to get the address of the allocated flash space
 * @param storage_array the array to store the flash content to
 * @param page_number the flash page number to start reading from
 * @param start_address the address to start reading from, relative to the flash page number
 * @param stop_address the address where we stop reading, relative to the flash page number
 */
void optiboot_read(uint32_t flash_space_address, uint8_t storage_array[], uint16_t page_number, uint16_t start_address, uint16_t stop_address)
{
  for(uint16_t j = start_address; j < stop_address; j++)
  {
    uint8_t read_character = pgm_read_byte_far(flash_space_address + j + SPM_PAGESIZE * (page_number));
    storage_array[j - start_address] = read_character;
  }
}


/**
 * @brief Reads an entire flash page and stores the content to storage_array.
 * Note that this function is intended to be used to read data stored in far
 * progmem, above 64kiB.
 *
 * @param flash_space_address the allocated flash address to read from. Use
 * pgm_get_far_address(flash_space) to get the address of the allocated flash space
 * @param storage_array the array to store the flash content to
 * @param page_number the flash page number to read from
 */
void optiboot_readPage(uint32_t flash_space_address, uint8_t storage_array[], uint16_t page_number)
{
  optiboot_read(flash_space_address, storage_array, page_number, 0, SPM_PAGESIZE);
}


/**
 * @brief Writes the content of data_to_store to a flash page.
 * Note that this function will only work for data stored in near progmem,
 * below 64kiB.
 *
 * @param flash_space_address the allocated flash address to read from. Use
 * pgm_get_far_address(flash_space) to get the address of the allocated flash space
 * @param data_to_store an array that holds the data to store
 * @param page_number the flash page number to write to
 */
void optiboot_writePage(uint32_t flash_space_address, uint8_t data_to_store[], uint16_t page_number)
{
  uint16_t word_buffer = 0;

  // Erase the flash page
  optiboot_page_erase(flash_space_address + SPM_PAGESIZE * page_number);

  // Copy ram buffer to temporary flash buffer
  for(uint16_t i = 0; i < SPM_PAGESIZE; i++)
  {
    if(!(i & 0x01)) // We must write words
      word_buffer = data_to_store[i];
    else
    {
      word_buffer += (data_to_store[i] << 8);
      optiboot_page_fill((flash_space_address + i + SPM_PAGESIZE * page_number), word_buffer);
    }
  }
  // Write temporary buffer to flash
  optiboot_page_write(flash_space_address + SPM_PAGESIZE * page_number);
}

#endif // RAMPZ
