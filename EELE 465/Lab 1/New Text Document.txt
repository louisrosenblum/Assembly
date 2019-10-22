;Lab 1 by Anthony Louis Rosenblum and Abby Stroh
;1/22/19


; External code import and setup

		INCLUDE 'derivative.inc'
		XDEF _Startup, main, key_press
		XREF __SEG_END_SSTACK
		
		
;Declaring variables
		ORG $0060
		ORG $E000

		
		
main:
_Startup:

			;Disable Watchdawg
			LDA SOPT1
			AND #%01111111
			STA SOPT1
		
			BCLR 2, PTBDD
			BCLR 3, PTBDD
			BCLR 4, PTBDD
			BCLR 5, PTBDD
			
			BSET 6, PTBDD
			BSET 7, PTBDD
			
			; Disable PTAPE
			LDA #$00
			STA PTAPE
		
			; Falling edge sensitive
			LDA #$00
			STA KBIES
		
			; KBIP inputs
			BCLR 2, KBIES
			BCLR 3, KBIES
		
			;KBIPE
			LDA #%00001100
			STA KBIPE
		
			; Enable keyboard interupts
			LDA #%00000010
			STA KBISC
			
			CLI			; enable interrupts

mainLoop:
           
            BRA    mainLoop
            
            
key_press:

		LDA PTBD
		EOR #%1100000
		STA PTBD
		
		RTI




