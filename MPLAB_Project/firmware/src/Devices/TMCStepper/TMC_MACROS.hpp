#ifndef TMC_MACROS_H    /* Guard against multiple inclusion */
#define TMC_MACROS_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

#define DEBUG_PRINT(CFG, VAL) Serial.print(CFG); Serial.print('('); Serial.print(VAL, HEX); Serial.println(')')
//#define WRITE_REG(R) write(R##_register.address, R##_register.sr)
//#define READ_REG(R) read(R##_register.address)

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
