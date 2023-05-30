/*
 * n76_uart.c
 * Created: 2021/05/14
 * Author: Van_BasTai
 */

#include <include.h>
#include <stdio.h>
#include <N76_uart0.h>

void UART0_begin(uint8_t baud)
{
	P06_Quasi_Mode; // Setting UART pin as Quasi mode for transmit
	P07_Quasi_Mode; // Setting UART pin as Quasi mode for transmit

	TH1 = baud;	  // set baudrate
	SCON = 0x50;  // UART0 Mode1,REN=1,TI=1
	TMOD |= 0x20; // Timer1 Mode1
	set_SMOD;	  // UART0 Double Rate Enable
	set_T1M;
	clr_BRCK; // Serial port 0 baud rate clock source = Timer1
	set_TR1;
	set_TI; // For printf function must setting TI = 1
}
void UART0_putChar(uint8_t val)
{
	clr_TI;
	SBUF = val;
	while (inbit(SCON, TI) == 0)
	; // uncomment when not using interrupt
}

void UART0_print(char *str)
{
	uint8_t i = 0;
	while (str[i] != '\0')
		UART0_putChar(str[i++]);
}

void UART0_println(char *str)
{
	UART0_print(str);
	UART0_print("\r\n");
}


void UART0_printNum(long num, uint8_t base)
{
	char dis[20];
	if (base == DEC)	sprintf(dis, "%li", num);
	else if (base == HEX)	sprintf(dis, "0x%lx", num);
	// else if (base == BIN)	sprintf(dis, "can't print binary number");
	UART0_print(dis);
}

void UART0_printNumln(long num, uint8_t base)
{
	UART0_printNum(num, base);
	UART0_println("");
}
