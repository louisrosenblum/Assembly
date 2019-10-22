;Main.s by Anthony Louis Rosenblum and Ben Crellin
;9/20/18
;

; External code import and setup

		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK
		
lou equ $00FF
ben equ $0100
benji equ $0101
		
		
main:
_Startup:
		LDA SOPT1
		AND #%01111111
		STA SOPT1
		BSET 6, PTBDD
		BSET 7, PTBDD
		
mainLoop:
		LDA #$FF
		STA lou
		STA ben
		STA benji
		
woop:
		LDA lou
		DECA
		STA lou
		BEQ Toggla
		LDA #$FF
		STA ben
		BRA woop2
		
woop2:
		LDA ben
		DECA
		STA ben
		BEQ Toggle
		LDA #$FF
		STA benji
		BRA woop3

woop3:
		LDA benji
		DECA
		STA benji
		BEQ woop2
		BRA woop3

		
Toggle:
	LDA PTBD
	EOR #%01000000
	STA PTBD
	BRA woop
	

Toggla:
	LDA PTBD
	EOR #%10000000
	STA PTBD
	BRA woop
	
	
	

		
		
		
	BRA mainLoop
