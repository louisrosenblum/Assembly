;Main.s by Anthony Louis Rosenblum and Ben Crellin
;10/11/18
;Lab 6

; External code import and setup

		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK
		
		
;Declaring variables
SCL EQU 7
SDA EQU 6
DACADDR EQU $2C
		ORG $0060
BitCounter DS 1
Value DS 1
Direction DS 1
		
		
main:
_Startup:

		;Disable Watchdawg
		LDA SOPT1
		AND #%01111111
		STA SOPT1
		
		
		CLR Value
		CLR BitCounter
		CLR Direction
		
		;Setting PTBD and output setting
		
		BSET SDA, PTBD
		BSET SCL, PTBD
		
		
		BSET 6, PTBDD
		BSET 7, PTBDD
		
SendIt:
		JSR I2CStartBit
		LDA #DACADDR
		ASLA
		JSR I2CTxByte
		
		JSR I2CStopBit
		
		JSR I2CBitDelay
		BRA SendIt
		
		
I2CTxByte:

		LDX #$08
		STX BitCounter
		
I2CNextBit:
		ROLA
		BCC SendLow
		
SendHigh:

		BSET SDA, PTBD
		JSR I2CSetupDelay
setup
		BSET SCL, PTBD
		JSR I2CBitDelay
		BRA I2CTxCont
		
SendLow:
		BCLR SDA, PTBD
		JSR I2CSetupDelay
		BSET SCL, PTBD
		JSR I2CBitDelay
		
I2CTxCont:
		BCLR SCL, PTBD
		DEC BitCounter
		BEQ I2CAckPoll
		BRA I2CNextBit
		
I2CAckPoll:
		BSET SDA, PTBD
		BCLR SDA, PTBDD
		JSR I2CSetupDelay
		BSET SCL, PTBD
		JSR I2CBitDelay
		BRSET SDA, PTBD, I2CNoAck
		
		BCLR SCL, PTBD
		BSET SDA, PTBDD
		RTS
		
I2CNoAck:
		BCLR SCL, PTBD
		BSET SDA, PTBDD
		RTS
		
I2CStartBit:
		BCLR SDA, PTBD
		JSR I2CBitDelay
		BCLR SCL, PTBD
		RTS
		
I2CStopBit:
		BCLR SDA, PTBD
		BSET SCL, PTBD
		BSET SDA, PTBD
		JSR I2CBitDelay
		RTS
		
I2CSetupDelay:
		NOP
		NOP
		RTS
		
I2CBitDelay:
		NOP
		NOP
		NOP
		NOP
		NOP
		RTS
		

	
		
		
		
