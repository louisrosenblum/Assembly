;Main.s by Anthony Louis Rosenblum and Ben Crellin
;9/6/18
;Simple program to toggle LED1 on the MC9S08QG8

; External code import and setup

		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK
		
main:
_Startup:
		;Setting PTB6 and 7 to outputs
		BSET 6, PTBDD
		BSET 7, PTBDD
mainLoop:
		;Loading PTBD into the accumulator	
		LDA PTBD
		; Using EOR toggle to turn 6 and 7 off
		EOR #%11000000
		; Storing data in memory
		STA PTBD

		
		
		
		BRA mainLoop

		9,3,3,4,9,6,3,9,9,4