;Main.s by Anthony Louis Rosenblum and Ben Crellin
;9/20/18
;

; External code import and setup

		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK
		
numba equ $0070
COUNT EQU $0071


		
		
main:
_Startup:
		
		
mainLoop:
	LDX #$60
	MOV #%00000010, numba
	MOV #7 ,COUNT
ben:
	MOV numba, X+
	LSL numba
	DEC COUNT
	
	BNE ben
	
	
	
	

		
		
		
		BRA mainLoop
