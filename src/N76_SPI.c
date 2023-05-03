/*
 * N76E_SPI.c
 * Created: 2022/02/03
 * Author: Van_BasTai
 */

#include <include.h>
#include <N76_SPI.h>

void SPI_begin(void)
{
	setb(SPSR, DISMODF); // SS pin user define
	clrb(SPCR, SSOE);	 // SS pin user define
	SPCR |= (1 << SPIEN) | (1 << MSTR) | (1 << SPR1) | (1 << SPR0);
	//  SPIEN: enable, MSTR: Master mode, CPHA: Phase, SPR1:0: pre-scaler = 128 1MHz
	clrb(SPI_PxM1_CLK, SPI_PIN_CLK);
	clrb(SPI_PxM1_MOSI, SPI_PIN_MOSI);
	setb(SPI_PxM1_MISO, SPI_PIN_MISO);
	clrb(SPI_PxM1_SS, SPI_PIN_SS);

	setb(SPI_PxM2_CLK, SPI_PIN_CLK);
	setb(SPI_PxM2_MOSI, SPI_PIN_MOSI);
	setb(SPI_PxM2_MISO, SPI_PIN_MISO);
	setb(SPI_PxM2_SS, SPI_PIN_SS);

	setb(SPI_Px_SS, SPI_PIN_SS);
}

void SPI_transfer(uint8_t data)
{
	SPDR = data;
	__asm__("nop");
	while (inbit(SPSR, SPIF) == 0)
		; // wait
	clrb(SPSR, SPIF);
}