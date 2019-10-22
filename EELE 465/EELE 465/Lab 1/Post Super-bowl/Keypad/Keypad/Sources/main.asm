;Madison Martinsen
;1/30/19
;Keypad


	INCLUDE 'derivative.inc'
	XDEF _Startup, main
	XDEF _Vkeyboard_ISR
	XREF __SEG_END_SSTACK
	

*----RAM Variables (Start of RAM)----
	ORG $0060
Keypress: 	DS.B 1
ROW:		DS.B 1	
	
*----ROM Variables (start of ROM)---
	ORG $E000

main:
	 _Startup:
	 		LDHX #__SEG_END_SSTACK ;Initialize the stack pointer
			TXS ;Transfer Index Register to SP	 			
*----Turn off Watchdog-----------------------------------
	 		LDA SOPT1
			AND #%01111111
			STA SOPT1		
*----Initialize Variables--------------------------------
			CLR Keypress		
*----Enable Inerupts-------------------------------------
	 		CLI	
*----Disable Pullup Resistors----------------------------
			LDA #%00000000
			STA PTAPE
*----Enable Keyboard Interrupts--------------------------
			BSET 1, KBISC
*----Enable pins as keyboard interrupts----
			LDA #%00001111 ;Setting PTA0,1,2,3 (Columns)
			STA KBIPE
			
			LDA #%00001111
			STA KBIES
			
*----Set Columns as Inputs----
			BCLR 0, PTADD
			BCLR 1, PTADD
			BCLR 2, PTADD
			BCLR 3, PTADD
			
			BCLR 0, PTAD
			BCLR 1,	PTAD
			BCLR 2, PTAD
			BCLR 3, PTAD
			
*----SET Rows as Outputs and to LOW state----
			BSET 2, PTBDD
			BSET 3,	PTBDD
			BSET 4, PTBDD
			BSET 5, PTBDD
			
			BCLR 2, PTBD
			BCLR 3,	PTBD
			BCLR 4, PTBD
			BCLR 5, PTBD
							
mainLoop:
	        
	Column4:;(D)
			BSET 5, PTBD ;Set Column 4 to HIGH
		*----Check for A, B, C, D----
			LDA PTAD
			EOR #%00001111
			STA ROW
			BRCLR 0, ROW, RESET ;A
			BRCLR 1, ROW, RESET ;B
			BRCLR 2, ROW, RESET ;C
			BRCLR 3, ROW, RESET	;D
	RESET:
			;Returens Columns to LOW and reset ROW variable
			;LDX #%00000000
			;STX ROW
			BCLR 2, PTBD
			BCLR 3,	PTBD
			BCLR 4, PTBD
			BCLR 5, PTBD
	BRA mainLoop			
_Vkeyboard_ISR:
	NOP
	LDA ROW
	STA Keypress
	BSET 2, KBISC
	RTI		
			
			
			
