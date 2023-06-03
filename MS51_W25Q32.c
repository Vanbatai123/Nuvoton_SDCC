/*
 * MS51_W25Q32
 * Created: 2023/05/28
 * Author: Van_BasTai
 */

#include <stdlib.h>
#include <include.h>
#include <N76_uart0.h>
#include <N76_SPI.h>
#include <N76_W25Qxx.h>

__xdata unsigned char data2[256];

//-----------------------------------------------------------------------------------------------------------

void main(void)
{
	uint8_t u8MID, u8DID;
	for (int16_t i = 0; i < 256; i++)
	{
		data2[i] = (uint8_t)(i);
	}

	UART0_begin(BAUD_38400); /* 9600 Baud Rate*/
	W25Qxx_begin();

	W25Qxx_readMidDid(&u8MID, &u8DID);

	UART0_printNum(u8MID, HEX);
	UART0_print("  ");
	UART0_printNumln(u8DID, HEX);
	if ((u8MID != 0xEF) && (u8DID != 0x14))
	{
		SPI_Error();
	}
	UART0_println("read OK");
	/* The procedure of SPI Flash at erase mode */
	W25Qxx_eraseChip();

	// UART0_println("erase done, verifing...");

	// if (W25Qxx_eraseVerify() == W25Qxx_ERR)
	// {
	// 	UART0_println("erase error");
	// 	while (1)
	// 		;
	// }

	/* The procedure of SPI Flash at program mode */
	W25Qxx_writePage(256, data2);
	// UART0_println("Flash done, verifing...");

	/* Program verify */
	// if (W25Qxx_writeVerify() == W25Qxx_ERR)
	// {
	// 	UART0_println("program error");
	// 	while (1)
	// 		;
	// }

	W25Qxx_readPage(256, data2);
	
	for (uint16_t i = 0; i < 256; i++)
	{
		UART0_printNum(data2[i], HEX);
		if (i % 16 == 15)
		{
			UART0_println("");
		}
		else
		{
			UART0_print(" - ");
		}
	}
	// UART0_println("------");
	// W25Qxx_readPage(1, data2);
	
	// for (uint16_t i = 0; i < 256; i++)
	// {
	// 	UART0_printNum(data2[i], HEX);
	// 	if (i % 16 == 15)
	// 	{
	// 		UART0_println("");
	// 	}
	// 	else
	// 	{
	// 		UART0_print(" - ");
	// 	}
	// }
	UART0_println("/////////////");

	// W25Qxx_eraseSectorBlock(W25Q_CMD_BLOCK_ERASE_32K, 0);

	// W25Qxx_readBuff(0x00000100, data2, 256);

	
	// for (uint16_t i = 0; i < 256; i++)
	// {
	// 	UART0_printNum(data2[i], HEX);
	// 	if (i % 16 == 15)
	// 	{
	// 		UART0_println("");
	// 	}
	// 	else
	// 	{
	// 		UART0_print(" - ");
	// 	}
	// }
	UART0_println("");

	UART0_println("\nFinished the SPI Demo Code and test pass!!!\n");
	while (1)
		;
}
//-----------------------------------------------------------------------------------------------------------
