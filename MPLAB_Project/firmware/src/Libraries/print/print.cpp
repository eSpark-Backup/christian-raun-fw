#include "print.hpp"
#include <string.h>
#include <stdarg.h>  // For va_list, va_start, va_end
#include <stdio.h>   // For vsnprintf

#define PRINT_BUFFER_SIZE 256

#ifdef __cplusplus
extern "C" {
#endif
    
void ITM_Printf(uint8_t port, const char *format, ...)
{
    char buffer[PRINT_BUFFER_SIZE];  // Buffer to hold the formatted string
    va_list args;                    // Argument list for format specifiers

    va_start(args, format);          // Initialize the argument list
    vsnprintf(buffer, sizeof(buffer), format, args);  // Format the string
    va_end(args);                    // Clean up the argument list

    // Send each character via ITM
    for (char *ptr = buffer; *ptr != '\0'; ptr++)
    {
        ITM_SendChar((uint32_t)*ptr, port);  // Send character via ITM
    }
}
    
#ifdef __cplusplus
}
#endif