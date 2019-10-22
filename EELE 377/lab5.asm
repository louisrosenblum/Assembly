;Main.s by Anthony Rosenblum and Ben Crellin
;10/4/2018

		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK
	ORG $E000	
DATA1 DC.B 5
DATA2 DC.B 2
STR1 DC.B 'Hello World'

	ORG $0060
BUFFER1 DS.B 16
BUFFER2 DS.B 16
BUFFER3 DS.B 16
BUFFER4 DS.B 16

main:	
_Startup:
		LDA DATA1
		LDX DATA2
		MUL 
		STA BUFFER1
		
		LDA BUFFER1
		LDX DATA2
		MUL
		STA BUFFER2
		
		LDA BUFFER1
		EOR BUFFER2
		STA BUFFER3
	
		LDA #$00
		STA $0060
		
		
		
mainLoop:
		LDA STR1,X
		STA BUFFER4,X
		
		LDX $0060
		INCX
		STX $0060

		BRA mainLoop
