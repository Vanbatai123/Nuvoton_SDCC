/*
 * test ADC
 * Created: 2023/03/30
 * Author: Van_BasTai
 */

#include <include.h>
#include <N76_uart0.h>

uint16_t value;

void main(void)
{
	// P11_Input_Mode;
	Enable_ADC_AIN7;
	// Enable_ADC_Interrupt; // uncomment when using interrupt

	UART0_begin(BAUD_115200);
	sei(); // Enable global interrupt

	while (1)
	{
		// convert ADC manual
		clrb(ADCCON0, ADCF); // clear ADC interrupt flag
		setb(ADCCON0, ADCS); // start ADC convertion
      	while(inbit(ADCCON0, ADCF) == 0);
		value = (ADCRH << 4) | ADCRL;
		_delay_ms(500);
		UART0_printNum(value);
		UART0_print("\r\n");
	}
	while (0)
	{
		// convert ADC using interrupt
		setb(ADCCON0, ADCS); // start ADC convertion
		_delay_ms(500);
		UART0_printNum(value);
		UART0_print("\r\n");
	}
}

ISR(ADC_INT_FUCTION, INTERRUPT_ADC)
{
	value = (ADCRH << 4) | ADCRL;
	clrb(ADCCON0, ADCF); // clear ADC interrupt flag
}
