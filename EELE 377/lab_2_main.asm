;Main.s by Anthony Louis Rosenblum and Ben Crellin
;9/13/18
;Lab 2

; External code import and setup

		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK
		
main:
_Startup:

			BSET 6, PTBDD
	
mainLoop:
	LDA #$FF
	STA $74
	noop:
		LDA $74
		DECA
		STA $74
		BEQ Toggle
		LDA #$FF
		STA $75
		
		roop:
			LDA $75
			DECA
			STA $75
			BEQ noop
			BRA roop
			
Toggle: 
	LDA PTBD
	EOR #%01000000
	STA PTBD
	MOV #$FF, $74
	BRA noop		
			
			
			
			;LDA #$FF
			;STA $76
			;goop:
				;LDA $76
				;DECA
				;STA $76
				;BNE goop
			;BNE roop
		;BNE noop
	
	
;	LDA PTBD
;	EOR #%01000000
;	STA PTBD
;	
;	LDA #$FF
;	STA $74
;	loop:
;		LDA $74
;		DECA
;		STA $74
;		LDA #$FF
;		STA $75
;		woop:
;			LDA $75
;			DECA
;			STA $75
;			LDA #$FF
;			STA $72
;			koop:
;			LDA $72
;			DECA
;			STA $72
;				BNE koop
;			BNE woop
;		BNE loop
;	
;	LDA PTBD
;	EOR #%00000000
;	STA PTBD
;	BRA mainLoop
;	
;	;LDA #$FF
;	;STA $74
;	;roop:
		;LDA $74
;		;DECA
;		;STA $74
		;/LDA #$FF
		;//STA $75
		;///noop:
			;//LDA $75
			;//DECA
			;//STA $75
			;//BNE roop
		;//BNE noop
	
	
			
		
	

	
	

	

			
		
			
	   		

		
		  
		


