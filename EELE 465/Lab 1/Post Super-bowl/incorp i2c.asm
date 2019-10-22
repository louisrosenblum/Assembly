;Lab 1 by Anthony Louis Rosenblum and Abby Stroh
;1/22/19


; External code import and setup

		INCLUDE 'derivative.inc'
		XDEF _Startup, main, key_press
		XREF __SEG_END_SSTACK
		
		
;Declaring variables
		ORG $0080
		
		addy: DS.B 1 ; IIC addy
		length: DS.B 1 ; MSG LENGTH
		current_byte: DS.B 1 ; which byte
		
		msg: DS.B 4; 32 bit transmission
		ORG $E000

		
		
main:
_Startup:
			LDHX #__SEG_END_SSTACK ;Initialize the stack pointer
			TXS ;Transfer Index Register to SP
			
			;Disable Watchdawg
			LDA SOPT1
			AND #%01111111
			STA SOPT1
			
			; 1 SDA on PTB6, SCL on PTB7
			LDA SOPT2;
			ORA #%00000010
			STA SOPT2
			
			MOV #$10, addy
			MOV #$C1, msg
			
			JSR IIC_Startup_Master
			
			; Enable interrupts for PTAD 0-3
			LDA #%00001111
			STA KBIPE
			
			; Rising edge sensitive
			LDA #%00001111
			STA KBIES
		
			; Columns are inputs
			BCLR 0, PTADD
			BCLR 1, PTADD
			BCLR 2, PTADD
			BCLR 3, PTADD
			
			; Rows are outputs
			BSET 2, PTBDD
			BSET 3, PTBDD
			BSET 4, PTBDD
			BSET 5, PTBDD
				
			; Disable PTAPE
			LDA #$00
			STA PTAPE
		
			; Enable keyboard interupts
			LDA #%00000010
			STA KBISC
			
			CLI			; enable interrupts
			
			LDA #%11110

mainLoop:
			
           	JSR row1
           	JSR row2
           	JSR row3
           	JSR row4
           	
      
            BRA mainLoop
            
IIC_Startup_Master: 
					LDA #%10000111
					STA IICF
					
					BSET IICC_IICEN,IICC
					BSET IICC_IICIE,IICC
					RTS

			
key_press:
		LDA PTBD
		STA $0065
		JSR IIC_DataWrite
		
		BSET 2, KBISC
		RTI
		
row1:
		LDA #%00000100
		STA PTBD
		JSR sleep
		RTS

row2:
		LDA #%00001000
		STA PTBD
		JSR sleep
		RTS

row3:
		LDA #%00010000
		STA PTBD
		JSR sleep
		RTS

row4:
		LDA #%00100000
		STA PTBD
		JSR sleep
		RTS
		
sleep:
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		RTS
		
_Viic:

		BSET IICS_IICIF, IICS
		
		BRSET IICC_MST, IICC, _Viic_master
		
		RTI
		
_Viic_master:
		BRSET IICC_TX, IICC, _Viic_master_TX
		BRA _Viic_master_RX
		
_Viic_master_TX: 
		
				LDA length
				SUB current_byte
				BNE _Viic_master_rxAck 
				
			
				BCLR IICC_MST, IICC
				BSET IICS_ARBL, IICS 
				
				RTI
 
_Viic_master_rxAck: 	
					BRCLR IICS_RXAK, IICS, _Viic_master_EoAC
					
					BCLR IICC_MST, IICC
					
					RTI  

_Viic_master_EoAC:
					LDA addy
					AND #%0000001
					BNE _Viic_master_toRxMode
					
					
					LDA $0065
					STA msg
					
					LDA msg
					STA IICD
					
					LDA current_byte
					INCA
					STA current_byte
					
					RTI

_Viic_master_toRxMode: 
						BCLR IICC_TX, IICC
						LDA IICD
						RTI  

_Viic_master_RX: 
				LDA length
				SUB current_byte
				BEQ _Viic_master_rxStop
				
				INCA
				BEQ _Viic_master_txAck
				
				BRA _Viic_master_readData


_Viic_master_rxStop:
					BCLR IICC_MST, IICC
					BRA _Viic_master_readData


_Viic_master_txAck: 
					BSET IICC_TXAK, IICC
					BRA _Viic_master_readData
					

_Viic_master_readData: 
						
						CLRH
						LDX current_byte
				
						
						LDA IICD
						STA msg, X
				
						LDA current_byte
						INCA
						STA current_byte
				
						RTI
		
IIC_DataWrite:
				LDA $0065
				STA 
				LDA #0 
				STA current_byte
				
				BSET 5, IICC 
				BSET IICC_TX, IICC 
				
				
				
				LDA addy
				STA IICD
				
				RTS 


		
		

		
		


