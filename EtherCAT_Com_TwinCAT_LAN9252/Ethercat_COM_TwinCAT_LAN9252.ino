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
uint32_t CSR_Read_3 = 0;
uint32_t Ethercat_RAM_Data = 0;
uint32_t Ethercat_RAM_Control_Status = 0;
uint32_t GPIO_Read = 0;
uint32_t GPIO_Read_2 = 0;
uint32_t GPIO_Read_3 = 0;
uint32_t Ethercat_Interrupt = 0;

void setup() {
   
   pinMode(PE4,OUTPUT);
   digitalWrite(PE4,LOW);
   pinMode(PE3,OUTPUT);
   digitalWrite(PE3,LOW);
   
   Serial4.begin(115200);
   
   SPI_CS_INIT();
   delay(100);
   SPI_CS_HIGH();
   SPI.setClockDivider(SPI_CLOCK_DIV4);  //Clock divided by 2 is working fine
   SPI.setBitOrder(MSBFIRST); 
   SPI.setDataMode(SPI_MODE3);           
   SPI.begin(); 
   delay(100);

   //Write GPIO Output Register
   /*LAN925X_SPI_WRITE_8Bit(CSR_DATA_REGISTER,0x52);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010040);
   delay(100);

   //Write GPIO Output Register
   LAN925X_SPI_WRITE_8Bit(CSR_DATA_REGISTER,0x45);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010040);
   delay(100);

   //Write GPIO Output Register
   LAN925X_SPI_WRITE_8Bit(CSR_DATA_REGISTER,0x53);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010040);
   delay(100);*/

   //Write Reset Control Register
   //LAN925X_SPI_WRITE(0x1F8,0x0000008E);
   
   Serial4.print("LAN925X_RESET_READ : ");
   Serial4.println(LAN925X_SPI_READ(0x1F8));

   LAN925X_SPI_WRITE(0x005C,1);
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

uint32_t LAN925X_SPI_READ_16Bit(uint16_t address)
{
    uint16_t read_data;
    
    SPI_CS_LOW();
    SPI_8bit_Write(0x03); //Instruction
    SPI_8bit_Write( 0xFF&(address>>8) ); //Address
    SPI_8bit_Write( 0xFF&(address>>0) ); //Address
    read_data =  (uint32_t)SPI_8bit_Read();
    read_data |= (uint32_t)SPI_8bit_Read()<<8;

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

   //Read Interrupt Status Register
   Serial4.print("LAN925X_INTERRUPT_STATUS_READ : ");
   Ethercat_Interrupt = LAN925X_SPI_READ(0x058);
   Serial4.println(Ethercat_Interrupt);
   
   //Read AL Control Register
   /*LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010120);
   delay(100);
    
   CSR_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("CSR_Read : ");
   //Serial4.println(CSR_Read);

   Serial4.print("LAN925X_SPI_READ : ");
   CSR_Read = LAN925X_SPI_READ(CSR_DATA_REGISTER);
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));*/

   //while (CSR_Read & (1<<0x80000000) != 0);

   //Serial4.print("LAN925X_SPI_READ : ");
   //Serial4.println(LAN925X_SPI_READ(0x0300));

   //Write Device Emulation Register
   //LAN925X_SPI_WRITE_8Bit(CSR_DATA_REGISTER,1);
   //delay(100);
   
   //LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010140);
   //delay(100);

   //Write AL Status Register
   /*LAN925X_SPI_WRITE_16Bit(CSR_DATA_REGISTER,2);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
   delay(10);

   //while (LAN925X_SPI_READ(CSR_COMMAND_REGISTER) & (1<<0x80000000) == 0);
   //delay(100);*/
   
   /*Write AL Control Register
   LAN925X_SPI_WRITE_16Bit(CSR_DATA_REGISTER,2);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
   delay(10);*/
  
   //Read AL Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010120);
   delay(10);
    
   CSR_Read_2 = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   Serial4.print("CSR_Read After Write: ");
   Serial4.println(CSR_Read_2);

   Serial4.print("LAN925X_SPI_READ After Write Status: ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read AL Status Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010130);
   delay(10);
    
   CSR_Read_2 = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   Serial4.print("CSR_Read After Write: ");
   Serial4.println(CSR_Read_2);

   Serial4.print("LAN925X_SPI_READ After Write Control : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));


   //Read PDI Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010140);
   delay(100);
    
   CSR_Read_2 = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.println(CSR_Read_2);

   Serial4.print("PDI Register Value : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Write GPIO Output Register
   //LAN925X_SPI_WRITE(CSR_DATA_REGISTER,65025);
   //delay(10);
   
   //LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010100);
   //delay(100); 

   //Read AL Event Request Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010220);
   delay(10);
    
   CSR_Read_2 = LAN925X_SPI_READ(CSR_DATA_REGISTER);

   Serial4.print("LAN925X_AL_EVENT_REQUEST_REGISTER_11111111111111111111111111 : ");
   Serial4.println(CSR_Read_2);

   /*if (CSR_Read_2 == 81)
   {
        //Write AL Control Register
        LAN925X_SPI_WRITE(CSR_DATA_REGISTER,4);
        delay(10);
       
        LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
        delay(10);
        
        //Write AL Status Register
        LAN925X_SPI_WRITE(CSR_DATA_REGISTER,4);
        delay(10);
       
        LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
        delay(10);
   }*/
   
   //LAN925X_SPI_WRITE(0x005C,1);

   if (Ethercat_Interrupt == 1073741825)
   {
      //Read AL Control Register
      LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010120);
      delay(10);

      CSR_Read_2 = LAN925X_SPI_READ(CSR_DATA_REGISTER);
      
      Serial4.print("LAN925X_AL_STATUS_READ_AFTER_INTERRUPT_AAAAAAAAAAAAAAAAAAAAAA : ");
      Serial4.println(CSR_Read_2);

      //Read AL Status Register
      /*LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010130);
      delay(10);

      CSR_Read_2 = LAN925X_SPI_READ(CSR_DATA_REGISTER);
      
      Serial4.print("LAN925X_AL_STATUS_READ_AFTER_INTERRUPT_VVVVVVVVVVVVVVVVVVVVVVV : ");
      Serial4.println(CSR_Read_2);*/
        if (CSR_Read_2 == 17)
        {
          //Write AL Status Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,1);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
          delay(10);

          //Write AL Control Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,1);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
          delay(10);
        }
        
        if (CSR_Read_2 == 18)
        {
        //Write AL Status Register
        LAN925X_SPI_WRITE(CSR_DATA_REGISTER,2);
        delay(10);
       
        LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
        delay(10);
        
        //if (CSR_Read_2 == 18)
        //{
        //Write AL Control Register
        LAN925X_SPI_WRITE(CSR_DATA_REGISTER,2);
        delay(10);
       
        LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
        delay(10);
        
        } 

        if (CSR_Read_2 == 19)
        {
          //Write AL Status Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,3);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
          delay(10);

          //Write AL Control Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,3);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
          delay(10);
        }
        
        if (CSR_Read_2 == 4)
        {
          //Write AL Control Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,4);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
          delay(10);

          //Write AL Status Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,4);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
          delay(10);
        } 

        if (CSR_Read_2 == 8)
        {
          //Write AL Status Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,8);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
          delay(10);

          //Write AL Status Register
          LAN925X_SPI_WRITE(CSR_DATA_REGISTER,8);
          delay(10);
       
          LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
          delay(10);
        }
        
       /*if (CSR_Read_2 >= 18)
       {
        //Write AL Control Register
        LAN925X_SPI_WRITE_16Bit(CSR_DATA_REGISTER,2);
        delay(10);
       
        LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010120);
        delay(10);
        
        
        //Write AL Status Register
        LAN925X_SPI_WRITE_16Bit(CSR_DATA_REGISTER,2);
        delay(10);
       
        LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010130);
        delay(10);  
       }*/
       
       //while (LAN925X_SPI_READ(CSR_COMMAND_REGISTER) & (1<<0x80000000) == 0);
       //delay(100);*/
   }


   Serial4.print("LAN925X_INTERRUPT_ENABLE_REGISTER : ");
   Serial4.println(LAN925X_SPI_READ(0x05C));
   
}

void Ethercat_Read_RAM_Access()
{
   //Read Ethercat RAM Data Register
   /*Ethercat_RAM_Data = LAN925X_SPI_READ(0x000);
   Serial4.print("Ethercat_RAM_Data : ");
   Serial4.println(Ethercat_RAM_Data);

   //Read Ethercat RAM Data Register
   Ethercat_RAM_Data = LAN925X_SPI_READ(0x001);
   Serial4.print("Ethercat_RAM_Data : ");
   Serial4.println(Ethercat_RAM_Data);*/
   
   //Write ETHERCAT PROCESS RAM READ ADDRESS AND LENGTH REGISTER
   /*LAN925X_SPI_WRITE(0x308,0x000015F4);
   delay(10);

   //Write ETHERCAT PROCESS RAM READ COMMAND REGISTER
   LAN925X_SPI_WRITE(0x30C,0x10000000);
   delay(10);*/

   //Write ETHERCAT PROCESS RAM READ ADDRESS AND LENGTH REGISTER
   LAN925X_SPI_WRITE(0x308,0x00081001);
   delay(10);

   //Write ETHERCAT PROCESS RAM READ COMMAND REGISTER
   LAN925X_SPI_WRITE(0x30C,0x10000000);
   delay(10);

   //Write ETHERCAT PROCESS RAM READ COMMAND REGISTER
   LAN925X_SPI_WRITE(0x304,0xC0011000);
   delay(10);
   
   
   //Read Ethercat RAM Data Register
   /*Ethercat_RAM_Control_Status = LAN925X_SPI_READ(0x30C);
   
   while (Ethercat_RAM_Control_Status == 0)
   { 
     //Ethercat_RAM_Data = LAN925X_SPI_READ(0x001);
     Ethercat_RAM_Control_Status = LAN925X_SPI_READ(0x30C);
     Serial4.println(Ethercat_RAM_Control_Status);
     delay(100);
   }*/

   Ethercat_RAM_Data = LAN925X_SPI_READ(0x001);
   
   Serial4.print("Ethercat_RAM_Data : ");
   Serial4.println(Ethercat_RAM_Data);

   /*Ethercat_RAM_Data = LAN925X_SPI_READ(0x002);
   
   Serial4.print("Ethercat_RAM_Data : ");
   Serial4.println(Ethercat_RAM_Data);

   Ethercat_RAM_Data = LAN925X_SPI_READ(0x003);
   
   Serial4.print("Ethercat_RAM_Data : ");
   Serial4.println(Ethercat_RAM_Data);
   delay(100);*/
  
   //Ethercat_RAM_Control_Status = LAN925X_SPI_READ(0x308);
   //if (Ethercat_RAM_Control_Status == 0)
   //{
   //Ethercat_RAM_Data = LAN925X_SPI_READ(0x000);
    //Serial4.print("Ethercat_RAM_Data : ");
    //Serial4.println(Ethercat_RAM_Control_Status);
   //}
}

void Ethercat_GPIO_Read()
{
   //Write GPIO Output Register
   LAN925X_SPI_WRITE(CSR_DATA_REGISTER,10);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010F10);
   delay(100);

   //Write GPIO Output Register
   LAN925X_SPI_WRITE(CSR_DATA_REGISTER,11);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010F11);
   delay(100);
   
   //Read GPIO Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F18);
   //delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_GPIO_INPUT_READ_1 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   
   //Read GPIO Data Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F19);
   delay(100);

   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_GPIO_INPUT_READ_2 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));


   //Read GPIO Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F10);
   //delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_GPIO_OUTPUT_READ_1 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));


   //Read GPIO Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F11);
   //delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_GPIO_OUTPUT_READ_2 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));


   //Read GPIO Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010980);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_LATCH : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));


   //Write User RAM Register
   /*LAN925X_SPI_WRITE(CSR_DATA_REGISTER,52221);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010F80);
   delay(10);*/

   //Read User RAM Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F80);
   delay(10);

   Serial4.print("LAN925X_USER_RAM_READ : ");
   CSR_Read_3 = LAN925X_SPI_READ(CSR_DATA_REGISTER);
   Serial4.println(CSR_Read_3);

   //Write User RAM
   LAN925X_SPI_WRITE(CSR_DATA_REGISTER,CSR_Read_3);
   delay(10);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010F82);
   delay(10);

   //Read User RAM Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F82);
   delay(10);

   Serial4.print("LAN925X_USER_RAM_READ_LOOP : ");
   CSR_Read_3 = LAN925X_SPI_READ(CSR_DATA_REGISTER);
   Serial4.println(CSR_Read_3);
   
   
   //Read GPIO EEPROM Register
   /*LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010500);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_GPIO_CONTROL_READ : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));*/

   //Read Sync Manager X Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F80);
   delay(100);
   GPIO_Read = LAN925X_SPI_READ(CSR_DATA_REGISTER);

   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010F81);
   delay(100);
   GPIO_Read_2 = LAN925X_SPI_READ(CSR_DATA_REGISTER);

   GPIO_Read_3 = (GPIO_Read_2<<8) | (GPIO_Read);
   
   //Serial4.print("LAN925X_USER_RAM : ");
   //Serial4.println(GPIO_Read_3);
   
   /*
   //Read Sync Manager X Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010801);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read Sync Manager X Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010802);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read Sync Manager X Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010803);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));


   //Read Sync Manager X Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010807);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));*/

   //Read EEPROM Configuration Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010500);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_EEPROM : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read EEPROM Configuration Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010501);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_EEPROM : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read EEPROM Configuration Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010502);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_EEPROM : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read EEPROM Configuration Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC001060C);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_FFMU : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read Chip Mode Configuration Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC00100007);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_CHIP_MODE : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read ESC DL Status Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010110);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_DL_STATUS 0 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read ESC DL Status Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010111);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_DL_STATUS 2 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read ESC DL Control 0 Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010100);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_DL_CONTROL 0 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read ESC DL Control 1 Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010101);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_DL_CONTROL 1 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read ESC DL Control 2 Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010102);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_DL_CONTROL 2 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read ESC DL Control 3 Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010103);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_DL_CONTROL 3 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read Reset Control Register
   Serial4.print("LAN925X_RESET_READ : ");
   Serial4.println(LAN925X_SPI_READ(0x1F8));

   //Read Write Protection Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010021);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_WRITE_PROTECTION 3 : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read Reset Control Register
   Serial4.print("LAN925X_MEM_READ : ");
   Serial4.println(LAN925X_SPI_READ(0x000A));

   //Read ECAT_Random Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010032);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_RANDOM_READ : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Read ESC_Configuration_Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010141);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_ESC_CONFIGURATION : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));
}

void Ethercat_Read_SyncManager()
{
   //Read Syns Manager 4 Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010804);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER_READ : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER)); 

   //Read Syns Manager 5 Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010805);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER_READ : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));
   
   //Read Syns Manager 6 Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010806);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER_READ_BIT : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));

   //Write Sync Manager Status Register
   LAN925X_SPI_WRITE_8Bit(CSR_DATA_REGISTER,0);
   delay(100);
   
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0x80010806);
   delay(100);

   //Read Syns Manager 6 Control Register
   LAN925X_SPI_WRITE(CSR_COMMAND_REGISTER,0xC0010806);
   delay(10);
    
   GPIO_Read = LAN925X_SPI_READ(CSR_COMMAND_REGISTER);
   //Serial4.print("GPIO_Read : ");
   //Serial4.println(GPIO_Read);

   Serial4.print("LAN925X_SYNC_MANAGER_READ_BIT : ");
   Serial4.println(LAN925X_SPI_READ(CSR_DATA_REGISTER));
   
   //Write Sync Manager Status Register
   LAN925X_SPI_WRITE_8Bit(CSR_DATA_REGISTER,20);
   delay(100);
   
   LAN925X_SPI_WRITE_16Bit(CSR_COMMAND_REGISTER,0x80010802);
   delay(100);
   
   
}

void loop() {
   
   delay(500);
   
   digitalWrite(PE4,HIGH);
   AL_Register_Access();
   //delay(1000);
   //Ethercat_Read_RAM_Access();
   //delay(500);
   Ethercat_GPIO_Read();
   delay(100);
   
   //Ethercat_Read_SyncManager();
}
