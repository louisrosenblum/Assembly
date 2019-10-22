;*******************************************************************
;* Anthony Rosenblum & Ren Wall                                    *
;* 4 Dec 2018                                                      *
;* Lab 11														   *
;*******************************************************************

; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            

; export symbols
            XDEF _Startup, main,_Vkeyboard
            ; we export '_Startup', 'main' and '_Vkeyboard' as symbols. Either
            ; can be referenced in the linker .prm file or from C/C++ later on.
            
            
            
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack

; -------------------------------------------------------------
; Static values
; -------------------------------------------------------------
LED1	EQU		6
LED2	EQU		7

KBD1	EQU		2
KBD2	EQU		3

; -------------------------------------------------------------
; RAM Variables
; -------------------------------------------------------------
	ORG $0060
keypress	DS.B 1				;Variable to store keypress value
counts		DS.B 1

				
; -------------------------------------------------------------
; Start of program code
; -------------------------------------------------------------
	ORG $E000
main:
_Startup:
            LDHX   #__SEG_END_SSTACK ; initialize the stack pointer
            TXS
			
			;Disable WatchDog timer
			LDA		SOPT1
			AND		#%01111111
			STA		SOPT1
			
			BSET	LED1,PTBDD	;Set LED1 as output
			BSET	LED2,PTBDD	;Set LED2 as output
			
			BSET	LED1,PTBD	;Set LED1 as off
			BSET	LED2,PTBD	;Set LED2 as off
			
			
			BCLR	KBD1,PTADD	;Set KBD1 as input
			BCLR	KBD2,PTADD	;Set KBD2 as input
			
			LDA PTAPE
			AND #%11110011
			STA PTAPE
			
			BCLR	KBD1,KBIES	;Set KBD1 as falling edge triggered
			BCLR	KBD2,KBIES	;Set KBD2 as falling edge triggered
			
			LDA #$02
			STA KBISC			;Setup KBI Status/Control Regiter
			
			BSET	KBD1,KBIPE
			BSET	KBD2,KBIPE
			
			
			LDA		#$0A
			STA		TPMSC		;Set Clock Source and Prescaler
			
			MOV		#$28,TPMC0SC		;Set Clock Status/Control Register
			
			MOV		#$4E,TPMMODH 	;Set Clock Period
			MOV		#$20,TPMMODL
			
			MOV		#$05,TPMC0VH		;Set Pulse Width
			MOV		#$DC,TPMC0VL
			
			MOV 	#$0F,counts
			JSR		setServo
			CLI					;Enable Inturrupts
			
mainLoop:
        	BRSET	KBD1,keypress,servoIncrement
        	BRSET	KBD2,keypress,servoDecrement
        	JSR		setServo
        	BRA		mainLoop
			
servoIncrement:
			CLR		keypress
			INC		counts
			JSR		checkLed
			BRA		mainLoop
			
servoDecrement:
			CLR		keypress
			DEC		counts
			JSR		checkLed
			BRA		mainLoop
			
setServo:
		LDA		counts
		LDX		#$64
		MUL
		STA		TPMC0VL
		STX		TPMC0VH
		RTS
		
checkLed:
		LDA		counts
		SUB		#$1C
		BPL		setLedHi
		LDA		counts
		SUB		#$0B
		BMI		setLedLo
		BSET	LED1,PTBD
		RTS
setLedHi:
		LDA		#$1C
		STA		counts
		JMP		setLed
setLedLo:
		LDA		#$0B
		STA		counts
		JMP		setLed
setLed:
		BCLR	LED1,PTBD
		RTS
 

_Vkeyboard:						;Keyboard Inturrupt Handler 
			LDA		PTAD		;Load port A
			STA		keypress	;Store Keypress value
			BSET	2,KBISC		;Clear Keyboard Inturrupt
			RTI
