/*
 * N76E_SPI.h
 * Created: 2023/03/30
 * Author: Van_BasTai
*/

#ifndef N76_SPI_H
#define N76_SPI_H


#define SPI_PIN_SS 			1
#define SPI_PIN_CLK 		0
#define SPI_PIN_MISO 		1
#define SPI_PIN_MOSI 		0

#define SPI_Px_SS 			P1
#define SPI_Px_CLK 			P1
#define SPI_Px_MISO 		P0
#define SPI_Px_MOSI 		P0

#define SPI_PxM1_SS 		P1M1
#define SPI_PxM1_CLK 		P1M1
#define SPI_PxM1_MISO 		P0M1
#define SPI_PxM1_MOSI 		P0M1

#define SPI_PxM2_SS 		P1M2
#define SPI_PxM2_CLK 		P1M2
#define SPI_PxM2_MISO 		P0M2
#define SPI_PxM2_MOSI 		P0M2

void SPI_begin(void);
void SPI_transfer(uint8_t data);

#endif