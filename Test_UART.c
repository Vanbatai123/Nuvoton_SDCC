/*
 * default Test UART
 * Created: 2023/03/27
 * Author: taivb
 */

#include <include.h>
#include <N76_uart0.h>

void main(void)
{
    UART0_config(BAUD_38400);
    UART0_println("START\r\n");

    while (1)
    {
        UART0_println("START\n");
        _delay_ms(800);
    }
}
