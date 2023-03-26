/*
 * stm8_clock.c
 * Created: 2018/08/22
 * Author: Van_BasTai
*/

#include "N76E003.h"
				   	
#ifndef F_CPU
#define F_CPU 				16000000UL
#endif
				   
typedef signed char 		int8_t;
typedef signed short 		int16_t;
typedef	signed long 		int32_t;
typedef unsigned char 		uint8_t;
typedef unsigned short 		uint16_t;
typedef unsigned long 		uint32_t;

#define sei()    setb(IE, EA);  /* enable interrupts */
#define cli()    clrb(IE, EA);  /* disable interrupts */

#define setb(reg, bit) 		reg |= (1<<bit)
#define clrb(reg, bit) 		reg &= ~(1<<bit)
#define daobit(reg, bit) 	reg ^= (1<<bit)
#define inbit(reg, bit) 	(reg&(1<<bit)) >> bit

#define setbAP(reg, bit) \
	cli();               \
	TA = 0xAA;           \
	TA = 0x55;           \
	reg |= (1 << bit);   \
	sei();

#define clrbAP(reg, bit) \
	cli();               \
	TA = 0xAA;           \
	TA = 0x55;           \
	reg &= ~(1 << bit);  \
	sei();

#define BIN		2
#define DEC		10
#define HEX		16

// pin mode
#define QUASI			0x00
#define OUTPUT_PP		0x01
#define INPUT			0x10
#define OUTPUT_OD		0x11

#define CONCAT2(a,b) a##b

// mode: QUASI, OUTPUT_PP, INPUT, OUTPUT_OD
#define pinMode(PORTx, BITx, mode)                     \
	if(mode & 0xF0) setb(CONCAT2(PORTx,  m1), BITx); else clrb(CONCAT2(PORTx,  m1), BITx); \
	if(mode & 0x0F) setb(CONCAT2(PORTx,  m2), BITx); else clrb(CONCAT2(PORTx,  m2), BITx);

void _delay_ms(uint32_t  __ms);
void _delay_us(uint32_t _us);