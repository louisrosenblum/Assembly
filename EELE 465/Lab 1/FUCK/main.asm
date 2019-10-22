; Justin Williams & Bailey Galacci & Louis Rosenblum
;1/24/19
;Lab 1: Keypad and Time-Varying Patterns on Eight LED's
;I2C Master Code

*----Include derivative-specific definitions----
            INCLUDE 'derivative.inc'
            XDEF _Startup, main, _Viic, _Vkeyboard_ISR
            XREF __SEG_END_SSTACK ;Symbol defined by the linker for the end of the stack
            
*----RAM Variables (start of RAM)----
	ORG $0060
FullKeypad:	DS.B 1 ;Superfluous variable for testing
IIC_addr:	DS.B 1 ;Track IIC address
msgLength:	DS.B 1 ;Track total message length
current:	DS.B 1 ;Track whick byte we have sent
IIC_msg:	DS.B 1 ;Enable 32 bit transmission
Column:	 	DS.B 1 
Row:		DS.B 1
sendCheck:	DS.B 1 ;flag for sending

*----Code Section (start of ROM)----
	ORG $E000

main:
	_Startup:
				LDHX #__SEG_END_SSTACK ;Initialize the stack pointer
				TXS ;Transfer Index Register to SP

	*----Disable pullup resistors---------
				LDA #$00
				STA PTAPE
	*----Turn Off Watchdog----
				LDA SOPT1 ;System Options Register 1
				AND #%01111111
				STA SOPT1
				
	*----Set PTB pins to be used for SDA/SCL
				LDA SOPT2 ;System Options Register 2
				ORA #%00000010
				STA SOPT2

	*----Set Slave address----
				MOV #$10, IIC_addr
				
	*----Sending actual message----
				;MOV #$C1, IIC_msg

	*----Set columns as inputs on keypad
				;PTA(0-3)
				LDA #$F0
				AND PTADD
				STA PTADD

	*----Set rows to outputs
				;PTB(2-5)
				LDA #$3C ;00111100 OR = XX1111XX
				ORA PTBDD ; Don't want to change bits 7,6 bc they're i2c
				STA PTBDD

	*----ENABLE PINS ON KEYBOARD FOR INTERRRRRUPTS
				;Makes interrupts rising edge sensitive
				LDA #$0F
				STA KBIES
				
				;Enable keyboard interrupt
				BSET KBISC_KBIE, KBISC
				
				;Enable interrupt pins 0-3
				LDA #$0F
				STA KBIPE
				
				;Initialize check byte for sending
				LDA #1
				STA sendCheck
				
				CLI ;Clear interrupt mask bit
				
				JSR IIC_Startup_Master
			
*--------------------------------------------------------------			         

	mainLoop: 
				LDA #%00010000 ;00011111
				STA Row
				BSET 2, PTBD ;check row A 
				JSR Delay
				BCLR 2, PTBD 
				
				LDA #%00100000
				STA Row
				BSET 3, PTBD 
				JSR Delay
				BCLR 3, PTBD 

				LDA #%01000000
				STA Row
				BSET 4, PTBD 
				JSR Delay
				BCLR 4, PTBD
				
				LDA #%10000000
				STA Row
				BSET 5, PTBD 
				JSR Delay
				BCLR 5, PTBD
				
				;check if there's a new message to send
				LDA sendCheck
				BNE EndLoop
			
				LDA #1
				STA sendCheck

	*----Set Message Length----
				LDA #1
				STA msgLength
	
	*----Begin Data transfer----
				JSR IIC_DataWrite
	
				EndLoop:
				BRA mainLoop

	
*-----------------------------------------------------------------	
	
*----Actual interrupt start----
_Viic:
				;Clear interrupt
				BSET IICS_IICIF, IICS
				
				;Check if master
				BRSET IICC_MST, IICC, _Viic_master ;Yes, should never need to be a slave
				
				RTI

*----Check if transfer or recieve----
_Viic_master:
				BRSET IICC_TX, IICC, _Viic_master_TX ;For transfer
				BRA _Viic_master_RX ;For recieve

*----Transmit data----
_Viic_master_TX: 
				;Not last byte
				LDA msgLength
				SUB current
				BNE _Viic_master_rxAck 
				
				;Is last byte
				BCLR IICC_MST, IICC
				BSET IICS_ARBL, IICS ;Arbitration lost, no code made for recovery
				
				RTI

*----Check for acknowledge----
_Viic_master_rxAck: 
				;Ack from slave recieved
				BRCLR IICS_RXAK, IICS, _Viic_master_EoAC
				
				;No ack from slave recieved
				BCLR IICC_MST, IICC
				
				RTI

*----End of address cycle, check for receive or write data---
_Viic_master_EoAC:
				LDA IIC_addr
				AND #%0000001
				BNE _Viic_master_toRxMode
					
				LDA IIC_msg
				STA IICD
					
				LDA current
				INCA
				STA current
					
				RTI

*----Dummy read----
_Viic_master_toRxMode: 
				;Dummy read for EoAC
				BCLR IICC_TX, IICC
				LDA IICD
				RTI

*----Recieve data----
_Viic_master_RX: 
				;Last byte to be read
				LDA msgLength
				SUB current
				BEQ _Viic_master_rxStop
				
				;2nd to last byte to be read
				INCA
				BEQ _Viic_master_txAck
				
				BRA _Viic_master_readData

*----Stop condition----
_Viic_master_rxStop:
				;Send stop bit
				BCLR IICC_MST, IICC
				BRA _Viic_master_readData

*----Acknowledge----
_Viic_master_txAck: 
				;Transfer acknowledge
				BSET IICC_TXAK, IICC
				BRA _Viic_master_readData
					
*----Read and store data----
_Viic_master_readData: 
				;Read byte from IICD and store into IIC_msg
				CLRH
				LDX current
				
				;Store messafe into indexed location
				LDA IICD
				STA IIC_msg, X
				
				;Increment current
				LDA current
				INCA
				STA current
				
				RTI

*----Initial configuration
IIC_Startup_Master: 
				;Set baud rate to 50kbps
				LDA #%10000111
				STA IICF
					
				;Enable IIC and Interrupts
				BSET IICC_IICEN,IICC
				BSET IICC_IICIE,IICC
				RTS
					

*----Initiate a transfer----
IIC_DataWrite:
				;Initialize current
				LDA #0 
				STA current
				
				BSET 5, IICC ;Set master mode
				BSET IICC_TX, IICC ;Set transmit
				
				LDA IIC_addr ;Send slave address
				STA IICD
				
				RTS 

Delay: ;General purpose delay
				LDA #255
				LOOP:
				DECA
				BNE LOOP
				RTS
_Vkeyboard_ISR:
				BSET KBISC_KBACK, KBISC		; clears interrupt trigger?
				
				LDA PTAD 
				STA Column
				
				; pulls value from interrupt pins, combines keypad A and B into one byte message
				LDA Column
				AND #$0F ;00001111
				STA Column
				
				LDA Column
				ADD Row
				STA FullKeypad
				
				LDA FullKeypad
				STA IIC_msg
				
				LDA #0
				STA sendCheck
				RTI

			
			
			
			
			
			
