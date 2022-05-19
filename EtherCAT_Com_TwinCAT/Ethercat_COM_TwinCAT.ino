/*
  EtherCAT demonstration of LAN9252 evaluation board.

  Basically performs read and write operation using TwinCAT software
  
  Author: Kamran Asif
  Organization: eSpark Consultants
  Date: 19-May-2022

*/

#include<SPI.h>
#include<stdint.h>

#define   SPI_CS_INIT()           pinMode(PA4, OUTPUT);
#define   SPI_CS_LOW()            digitalWrite(PA4, LOW);
#define   SPI_CS_HIGH()           digitalWrite(PA4, HIGH);
#define   CSR_COMMAND_REGISTER    0x0304
#define   CSR_DATA_REGISTER       0x0300

uint32_t CSR_Read = 0;
uint32_t CSR_Read_2 = 0;

void setup() {
   
   pinMode(PE4,OUTPUT);
   digitalWrite(PE4,LOW);
   pinMode(PE3,OUTPUT);
   digitalWrite(PE3,LOW);
   
   Serial4.begin(115200);
   
   SPI_CS_INIT();
   delay(100);
   SPI_CS_HIGH();
   SPI.setClockDivider(SPI_CLOCK_DIV2);
   SPI.setBitOrder(MSBFIRST); 
   SPI.setDataMode(SPI_MODE3);           
   SPI.begin(); 
   delay(100); 
}

uint8_t SPI_8bit_Read(void)
{
  uint8_t readData = SPI.transfer(0);
  return readData;
}

void SPI_8bit_Write(uint8_t wdata)
{
   SPI.transfer(wdata); 
}

uint32_t LAN925X_SPI_READ(uint16_t address)
{
    uint32_t read_data;
    SPI_CS_LOW();
    SPI_8bit_Write(0x03); //Instruction
    SPI_8bit_Write( 0xFF&(address>>8) ); //Address
    SPI_8bit_Write( 0xFF&(address>>0) ); //Address
    read_data =  (uint32_t)SPI_8bit_Read();
    read_data |= (uint32_t)SPI_8bit_Read()<<8;
    read_data |= (uint32_t)SPI_8bit_Read()<<16;
    read_data |= (uint32_t)SPI_8bit_Read()<<24;
    SPI_CS_HIGH();
    return read_data;
}

void LAN925X_SPI_WRITE(uint16_t address, uint32_t data)
{
    SPI_CS_LOW();
    
    SPI_8bit_Write(0x02);                 //Instruction
    SPI_8bit_Write( 0xFF&(address>>8) );  //Address
    SPI_8bit_Write( 0xFF&(address>>0) );  //Address
    
    SPI_8bit_Write( 0xFF & (data>>0) );
    SPI_8bit_Write( 0xFF & (data>>8) );
    SPI_8bit_Write( 0xFF & (data>>16) );
    SPI_8bit_Write( 0xFF & (data>>24) );
    
    SPI_CS_HIGH();
}

void LAN925X_SPI_WRITE_8Bit(uint16_t address, uint8_t data)
{
    SPI_CS_LOW();
    SPI_8bit_Write(0x02);                 //Instruction
    SPI_8bit_Write( 0xFF&(address>>8) );  //Address
    SPI_8bit_Write( 0xFF&(address>>0) );  //Address
    SPI_8bit_Write(data);
    SPI_CS_HIGH();
}

void LAN925X_SPI_WRITE_16Bit(uint16_t address, uint16_t data)
{
    SPI_CS_LOW();
    SPI_8bit_Write(0x02);                 //Instruction
    SPI_8bit_Write( 0xFF&(address>>8) );  //Address
    SPI_8bit_Write( 0xFF&(address>>0) );  //Address
    SPI_8bit_Write( 0xFF & (data>>0) );
    SPI_8bit_Write( 0xFF & (data>>8) );
    SPI_CS_HIGH();
}

void AL_Register_Access()
{
   //Read AL Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010120);
   delay(100);
    
   CSR_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   Serial4.print("CSR_Read : ");
   Serial4.println(CSR_Read);

   Serial4.print("LAN925X_SPI_READ : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));
   
   //while (CSR_Read & (1<<0x80000000) != 0);

   //Serial4.print("LAN925X_SPI_READ : ");
   //Serial4.println(LAN925X_SPI_READ(0x0300));

   //Write Device Emulation Register
   //LAN925X_SPI_WRITE_8Bit(CSR_DATA_REGISTER,1);
   //delay(100);
   
   //LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010140);
   //delay(100);

   
   //Write AL Status Register
   LAN925X_SPI_WRITE_16Bit(CSR_DATA_REGISTER,2);
   delay(100);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
   delay(100);

   //while (LAN925X_SPI_READ(CSR_COMMAND_REGISTER) & (1<<0x80000000) == 0);
   //delay(100);
   
   //Write AL Control Register
   LAN925X_SPI_WRITE_16Bit(CSR_DATA_REGISTER,2);
   delay(100);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
   delay(100);
   
   //Read AL Status Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010130);
   delay(100);
    
   CSR_Read_2 = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   Serial4.print("CSR_Read After Write: ");
   Serial4.println(CSR_Read_2);

   Serial4.print("LAN925X_SPI_READ After Write : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));


   //Read PDI Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010140);
   delay(100);
    
   CSR_Read_2 = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.println(CSR_Read_2);

   Serial4.print("PDI Register Value : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));
}
  
void loop() {
   
   delay(1000);
   
   digitalWrite(PE4,HIGH);
   AL_Register_Access();
   
}
