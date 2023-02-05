
/*
 * Led_Blink.s
 *
 * Created: 18.11.2022. 11:32:08
 *  Author: Aleksandar Bogdanovic
 */ 
 #include <avr/io.h> 


 .global asm_blinking
 .type asm_blinking, @function 

 asm_blinking:
	ldi r16, 0x01
	out 0x04, r16
	out 0x05, r16
	rcall delay
	clr r16
	out 0x05, r16
	rcall delay
	rjmp asm_blinking

delay:					// 1 sek
	ldi  r17, 82
    ldi  r18, 43
    ldi  r19, 0
L1: dec  r19
    brne L1
    dec  r18
    brne L1
    dec  r17
    brne L1
    lpm
	ret
	





