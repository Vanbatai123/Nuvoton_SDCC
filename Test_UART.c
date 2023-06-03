/*
 * default Test UART
 * Created: 2023/03/27
 * Author: taivb
 */

#include <include.h>
#include <N76_uart0.h>

void UART0_printNum2(int32_t num, uint8_t base)
{
    char dis[20];
    int8_t max = 0, flag = 0;

    if (num < 0)
    {
        num = 0 - num;
        flag = 1;
    }
    while (num > 0)
    {
        if (num % base >= 10)
            dis[max] = num % base + 55;
        else
            dis[max] = num % base + 48;

        num = num / base;
        max++;
    }

    if (flag == 1)
    {
        dis[max++] = '-';
    }

    for (uint8_t i = 0; i < max / 2; i++)
    {
        dis[max] = dis[i];
        dis[i] = dis[max - 1 - i];
        dis[max - 1 - i] = dis[max];
    }
    dis[max] = '\0';
    // else if (base == HEX)	sprintf(dis, "0x%lx", num);
    // else if (base == BIN)	sprintf(dis, "can't print binary number");
    UART0_print(dis);
}
void main(void)
{
    UART0_begin(BAUD_115200);
    UART0_println("START\r\n");

    while (1)
    {
        UART0_printNum2(-85452, DEC);
        UART0_println("\r\n-------");
        UART0_printNum2(85452, HEX);
        UART0_println("\r\n-------");
        UART0_printNum2(85452, BIN);
        UART0_println("\r\n-------");
        _delay_ms(800);
    }
}
