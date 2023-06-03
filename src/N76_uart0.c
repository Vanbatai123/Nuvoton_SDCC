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

void UART0_printNum(int32_t num, uint8_t base)
{
	__xdata char dis[20];	  // array of converted number
	int8_t max = 0, flag = 0; // max: index of dis array, flag: = 1 if negative

	if (num == 0) // input 0
{
		dis[max++] = '0';
	}
	else if (num < 0) // negative number
	{
		num = 0 - num;
		flag = 1;
	}
	while (num > 0) // convert to base number and add to dis array
	{
		if (num % base >= 10)
			dis[max] = num % base + 55;
		else
			dis[max] = num % base + 48;

		num = num / base;
		max++;
	}

	if (base == HEX) // add 0x for HEX and 0B for BIN
	{
		if (max % 2 == 1)
			dis[max++] = '0';

		dis[max++] = 'x';
		dis[max++] = '0';
	}
	else if (base == BIN)
	{
		dis[max++] = 'B';
		dis[max++] = '0';
	}

	if (flag == 1) // add minus to negative number
		dis[max++] = '-';

	for (uint8_t i = 0; i < max / 2; i++) // revert dis array
	{
		dis[max] = dis[i];
		dis[i] = dis[max - 1 - i];
		dis[max - 1 - i] = dis[max];
	}
	dis[max] = '\0';  // end string character
	UART0_print(dis); // print dis
}

void UART0_printNumln(long num, uint8_t base)
{
	UART0_printNum(num, base);
	UART0_println("");
}
