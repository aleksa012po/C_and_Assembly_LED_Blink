/*
 * C_Blink.c
 *
 * Created: 18.11.2022. 11:11:47
 * Author : Aleksandar Bogdanovic
 */ 

#include <avr/io.h>
#include <stdint.h>
#include "src/Led Blink.s"
extern void asm_blinking(uint8_t i, uint8_t j);

int main(void)
{
	uint8_t i, j;
	
	
	while(1)
    {	
		asm_blinking(0x51, 0x52);	
		
	}
}

