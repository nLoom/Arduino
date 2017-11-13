;
; some_Assembly_required_binary_counter.asm
;
; Created: 09/11/2017 14:04:17
; Author : Data
;


; Replace with your application code

.cseg
.org	0

.def	count =	r16			; define register 16 as variable count
.def	temp =	r17			; define register 17 as temporary storage

	ldi		temp, 0xFF		; set temp to all bit as 1
	out		DDRB, temp		; set DDRB port to OUTPUT on all pins

	ldi		count, 0x00		; load number 0 into count

lp:
	out		PORTB, count	; set leds according to number in count
	inc		count			; increment count, as count is 8 bit will overflow at 255 and restart from 0

	rjmp	lp				; loop forever