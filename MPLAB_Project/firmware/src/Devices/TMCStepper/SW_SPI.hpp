/* 
 * File:   SW_SPI.hpp
 * Author: eSpark
 *
 * Created on August 15, 2024, 7:47 PM
 */

#ifndef SW_SPI_HPP
#define	SW_SPI_HPP

#include <xc.h>
#include <stdint.h>
#include "definitions.h"

//#include "TMC_platforms.hpp"

class SW_SPIClass {
	public:
		SW_SPIClass(PORT_PIN sw_mosi_pin, PORT_PIN sw_miso_pin, PORT_PIN sw_sck_pin);
		void init();
		void begin() {};
		uint8_t transfer(uint8_t ulVal);
		uint16_t transfer16(uint16_t data);
		void endTransaction() {};
	private:
		const PORT_PIN	mosi_pin,
						miso_pin,
						sck_pin;

		#if defined(ARDUINO_ARCH_AVR)
			fastio_bm mosi_bm,
					miso_bm,
					sck_bm;
			fastio_reg mosi_register,
							 miso_register,
							 sck_register;
		#endif
};

#endif	/* SW_SPI_HPP */

