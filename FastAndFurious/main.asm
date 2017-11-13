;
; blink_led_asm_fastest.asm
;
; Created: 13/11/2017 12:24:07
; Author : Data
;

; Blink an LED in assembly @ 4 Mhz speed

.cseg		; Start assembling in code segment
.org	0	; Start address 0x0000

	ldi	r16, 0b0001000	; Set bit corresponding pin 13 (led pin) in register 16
	out	DDRB, r16	; Set pin 13 as output
	clr	r17		; Clear register 17 (set all bits to 0)
	 
start:
    	out	PORTB, r16	; Set led on
	out	PORTB, r17	; Set led off
	rjmp	start		; Loop to start, forever
