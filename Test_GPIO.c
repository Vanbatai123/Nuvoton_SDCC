/*
 * default main file
 * Created: 2023/03/26
 * Author: taivb
 */

#include <include.h>

#define LED_PORT 	P0
#define LED_PIN		6
#define BTN_PORT 	P0
#define BTN_PIN		5


void main(void)
{
    pinMode(LED_PORT, LED_PIN, OUTPUT_PP);
    pinMode(BTN_PORT, BTN_PIN, INPUT);
    while (1)
    {
        if (inbit(BTN_PORT, BTN_PIN))
		{
			clrb(LED_PORT, LED_PIN);
		}
		else
		{
			setb(LED_PORT, LED_PIN);
		}
		_delay_ms(10);
		
    }
    
}