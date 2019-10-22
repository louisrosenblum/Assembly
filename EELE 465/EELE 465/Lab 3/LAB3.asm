;Louis Rosenblum and Abby Stroh
;3/5/2019
;Lab 3
;SCI Code


            INCLUDE 'derivative.inc'
            XDEF _Startup, main, _Viic, key_press
            XREF __SEG_END_SSTACK 
            
		ORG $0060

		ORG $E000

main:
	_Startup:
				LDHX #__SEG_END_SSTACK 
				TXS
				
				
				; Write SCIBDH:SCIBDL, SPEED 115200, 115200 = 4000000/(16*BR)
				; BR = 2
				
				LDA #%00000010
				STA SCIBDL
				

				; Write SCFC1
				
				LDA #%0010000
				STA SCIC1
				
				; WRIE SC1C2
				
				LDA #%11111100
				STA SCIC2
				
				
				; WRITE SCIC3
				
				LDA #%00001111
				STA SCIC3
				
				
				
				
				
				
				

mainLoop: