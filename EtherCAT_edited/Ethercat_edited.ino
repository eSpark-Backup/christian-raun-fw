/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

  Most Arduinos have an on-board LED you can control. On the UNO, MEGA and ZERO
  it is attached to digital pin 13, on MKR1000 on pin 6. LED_BUILTIN is set to
  the correct LED pin independent of which board is used.
  If you want to know what pin the on-board LED is connected to on your Arduino
  model, check the Technical Specs of your board at:
  https://www.arduino.cc/en/Main/Products

  modified 8 May 2014
  by Scott Fitzgerald
  modified 2 Sep 2016
  by Arturo Guadalupi
  modified 8 Sep 2016
  by Colby Newman

  This example code is in the public domain.

  https://www.arduino.cc/en/Tutorial/BuiltInExamples/Blink
*/
#include<SPI.h>
#include<stdint.h>

#define   SPI_CS_INIT()    pinMode(PA4, OUTPUT);
#define   SPI_CS_LOW()     digitalWrite(PA4, LOW);
#define   SPI_CS_HIGH()    digitalWrite(PA4, HIGH);

//bool toggleLed = false;
//bool toggleLed1 = false;

uint16_t AL_Control_Register_Read = 0;

void setup() {
   pinMode(PE4,OUTPUT);
   digitalWrite(PE4,LOW);
   pinMode(PE3,OUTPUT);
   digitalWrite(PE3,LOW);
   
   delay(1000);
   Serial4.begin(115200);
   
   //digitalWrite(PE3,LOW);
   SPI_CS_INIT();
   delay(100);
   SPI_CS_HIGH();
   SPI.setClockDivider(SPI_CLOCK_DIV4);
   SPI.setBitOrder(MSBFIRST); 
   SPI.setDataMode(SPI_MODE3);
   SPI.begin(); 
   delay(100); 
   
   //pinMode(PA6, INPUT_PULLUP);
   SQI_RESET();
   
   //SQI_ENABLE();
   delay(1000);
   //pinMode(PA4, OUTPUT);
}

uint8_t SPI_8bit_Read(void)
{
  uint8_t readData = SPI.transfer(0);
  
  // Serial4.print("R:");
  // Serial4.println(readData);
  
  return readData;
}
void SPI_8bit_Write(uint8_t wdata)
{
   //Serial4.print("W:");
   //Serial4.println(wdata);
   
   SPI.transfer(wdata); 
}

void SQI_RESET(void)
{
    //SS2_SetDigitalInput();
    //while(SS2_GetValue()!=1);
    SPI_CS_HIGH();
    SPI_CS_HIGH();
    SPI_CS_HIGH();
    SPI_CS_HIGH();
    SPI_CS_HIGH();
    SPI_CS_HIGH();
    SPI_CS_HIGH();
    SPI_CS_HIGH();
    SPI_CS_LOW();
    SPI_8bit_Write(0xFF);
    SPI_CS_HIGH();
}

uint32_t LAN925X_SPI_READ(uint16_t addr)
{
    uint32_t rdata;
    SPI_CS_LOW();
    SPI_8bit_Write(0x03); //Instruction
    SPI_8bit_Write( 0xFF&(addr>>8) ); //Address
    SPI_8bit_Write( 0xFF&(addr>>0) ); //Address
    rdata =  (uint32_t)SPI_8bit_Read();
    rdata |= (uint32_t)SPI_8bit_Read()<<8;
    rdata |= (uint32_t)SPI_8bit_Read()<<16;
    rdata |= (uint32_t)SPI_8bit_Read()<<24;
    SPI_CS_HIGH();
    return rdata;
}

void loop() {
   delay(1000);
   
   //Serial4.println(LAN925X_SPI_READ(0x0064));

   //toggleLed^=1;
   //digitalWrite(PE4,toggleLed);
                
   //if(LAN925X_SPI_READ(0x0050) != 0)
   //digitalWrite(PE4,HIGH);

   //Serial4.println(LAN925X_SPI_READ(0x0050));
   
   //AL_Control_Register_Read = LAN925X_SPI_READ(0x0E07);
   
   Serial4.print("LAN925X_SPI_READ : ");
   Serial4.println(LAN925X_SPI_READ(0x304));
   
   if (LAN925X_SPI_READ(0x304) != 0)
   {
    digitalWrite(PE4,HIGH);
    digitalWrite(PE3,HIGH);
    //Serial4.println(AL_Control_Register_Read);
   }
}
