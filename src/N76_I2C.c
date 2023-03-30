/*
 * N76E_i2c.c
 * Created: 2022/02/03
 * Author: Van_BasTai
 */

#include <include.h>
#include <N76_I2C.h>

uint8_t t = 0;

// uint8_t XRAM_I2C_RX_IDX;
// uint8_t XRAM_I2C_RX_LEN;
// uint8_t rxBuffer[7];

// uint8_t XRAM_I2C_TX_IDX;
// uint8_t XRAM_I2C_TX_LEN;
// uint8_t txBuffer[7];

uint8_t timeOut(void)
{
	_delay_us(100);
	if (++t > 10)
		return 1;
	return 0;
}

void I2C_begin()
{
	setb(P1M1, 3); // set P1.3 as open drain
	setb(P1M2, 3);
	setb(P1M1, 4); // set P1.4 as open drain
	setb(P1M2, 4);

	/* Set I2C clock rate */
	I2CLK = I2C_CLOCK; // I2C clock = Fsys/(4*(I2CLK+1))

	/* Enable I2C */
	setb(I2CON, I2CEN); // set_I2CEN;
}

uint8_t I2C_beginTransmission(uint8_t addr)
{
	xRamWrite(XRAM_I2C_TX_IDX, 0);
	xRamWrite(XRAM_I2C_TX_LEN, 0);

	// check I2C is free?
	/*t = 0;
	while (inbit(I2C_SR3, BUSY) == 1)
		if (timeOut())
			return 1;
*/
	// start condittion - S
	setb(I2CON, STA);
	clrb(I2CON, SI);

	t = 0;
	// wait start condittion is sent - EV5
	while (inbit(I2CON, SI) == 0)
		if (timeOut())
			return 2;
	////I2C_SR1; // clear I2C_SR1, SB

	// send slave address
	I2DAT = (addr << 1) | I2C_WRITE;

	t = 0;
	// wait slave address is sent - EV6
	clrb(I2CON, STA);
	clrb(I2CON, SI);
	while (inbit(I2CON, SI) == 0)
		if (timeOut())
			return 3;

	return 0;
}

void I2C_write(uint8_t data)
{
	// txBuffer[xRamRead(XRAM_I2C_TX_IDX)] = data;
	xRamWrite(xRamRead(XRAM_I2C_TX_IDX)+XRAM_I2C_TX_BUFF,data);
	xRamInc(XRAM_I2C_TX_IDX);
	xRamWrite(XRAM_I2C_TX_LEN, xRamRead(XRAM_I2C_TX_IDX));
}

void I2C_writeBuffer(uint8_t *data, uint8_t len)
{
	uint8_t i = 0;
	for (; i < len; ++i)
	{
		I2C_write(data[i]);
	}
}

uint8_t I2C_endTransmission(void)
{
	uint8_t i;

	for (i = 0; i < xRamRead(XRAM_I2C_TX_LEN); ++i)
	{
		// send 1 byte data register address to read
		// I2DAT = txBuffer[i];
		I2DAT = xRamRead(XRAM_I2C_TX_BUFF+i);

		// wait until the transfer finished - EV 8_2
		t = 0;
		clrb(I2CON, STA);
		clrb(I2CON, SI);
		while (inbit(I2CON, SI) == 0)
			if (timeOut())
				return 1;
	}

	// set stop condition

	setb(I2CON, STO);
	clrb(I2CON, SI);

	// Wait to make sure that STOP control bit has been cleared
	t = 0;
	while (inbit(I2CON, STO) == 1)
		if (timeOut())
			return 3;

	// Re-Enable Acknowledgement to be ready for another reception
	////setb(I2C_CR2, ACK); // Enable acknowledgement
	/////clrb(I2C_CR2, POS); // acknowledgement for current byte

	return 0;
}

uint8_t I2C_requestFrom(uint8_t addr, uint8_t len)
{
	uint8_t i;
	xRamWrite(XRAM_I2C_RX_LEN, len);
	xRamWrite(XRAM_I2C_RX_IDX, 0);

	// check I2C is free?
	/*t = 0;
	while (inbit(I2C_SR3, BUSY) == 1)
		if (timeOut())
			return 1;
*/
	// start condittion - S
	setb(I2CON, STA);
	clrb(I2CON, SI);

	// wait start condittion is sent - EV5
	t = 0;
	while (inbit(I2CON, SI) == 0)
		if (timeOut())
			return 2;

	// send slave address
	I2DAT = (addr << 1) | I2C_READ;
	clrb(I2CON, STA);
	clrb(I2CON, SI);

	// Wait on ADDR flag to be set EV 6_3 (ADDR is still not cleared at this level
	t = 0;
	while (inbit(I2CON, SI) == 0)
		if (timeOut())
			return 3;

	// receive len - 1 byte
	for (i = 0; i < xRamRead(XRAM_I2C_RX_LEN) - 1; i++)
	{
		// Poll RXNE

		setb(I2CON, AA);
		clrb(I2CON, SI);

		t = 0;
		while (inbit(I2CON, SI) == 0)
			if (timeOut())
				return 4;
		// rxBuffer[i] = I2DAT;
		xRamWrite(XRAM_I2C_RX_BUFF+i,I2DAT);
	}

	// clear ACK
	clrb(I2CON, AA);
	clrb(I2CON, SI);
	// Poll RXNE
	t = 0;
	while (inbit(I2CON, SI) == 0)
		if (timeOut())
			return 5;
	// rxBuffer[xRamRead(XRAM_I2C_RX_LEN) - 1] = I2DAT;
	xRamWrite(XRAM_I2C_RX_BUFF+xRamRead(XRAM_I2C_RX_LEN) - 1,I2DAT);

	// set stop after ADDR is cleared
	setb(I2CON, STO);
	clrb(I2CON, SI);

	// Wait to make sure that STOP control bit has been cleared
	t = 0;
	while (inbit(I2CON, STO) == 1)
		if (timeOut())
			return 6;
	// Re-Enable Acknowledgement to be ready for another reception
	// setb(I2C_CR2, ACK); // Enable acknowledgement
	// clrb(I2C_CR2, POS); // acknowledgement for current byte

	return 0;
}

uint8_t I2C_read(void)
{
	int8_t value = -1;
	// get each successive byte on each call
	if (xRamRead(XRAM_I2C_RX_IDX) < xRamRead(XRAM_I2C_RX_LEN))
	{
		// value = rxBuffer[xRamRead(XRAM_I2C_RX_IDX)];
		value = xRamRead(xRamRead(XRAM_I2C_RX_IDX)+XRAM_I2C_RX_BUFF);
		xRamInc(XRAM_I2C_RX_IDX);
	}
	return value;
}

int16_t I2C_available()
{
	return xRamRead(XRAM_I2C_RX_LEN) - xRamRead(XRAM_I2C_RX_IDX);
}
