;*******************************************************************
;* This stationery serves as the framework for a user application. *
;* For a more comprehensive program that demonstrates the more     *
;* advanced functionality of this processor, please see the        *
;* demonstration applications, located in the examples             *
;* subdirectory of the "Freescale CodeWarrior for HC08" program    *
;* directory.                                                      *
;*******************************************************************

;Lab 1 Slave Abigail Stroh

; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            

; export symbols
            XDEF _Startup, main, _Viic
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            
            
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack
            
	ORG $0120           
			IIC_addr: DS.B 1
			msgLength: DS.B 1
			current: DS.B 1
			IIC_MSG: DS.B 1
			Storage: DS.B 1
			Storage2: DS.B 1


; code section
	ORG $E000
main:
_Startup:
            LDHX   #__SEG_END_SSTACK ; initialize the stack pointer
            TXS

			
			;Disable watchdog
			LDA SOPT1
			AND #%01111111
			STA SOPT1
			
			;IIC STUFF:
			;PTA pins for SDA/SCL
			LDA SOPT2
			AND #%10000000
			STA SOPT2
			
			;set baud rate 50kbps
			LDA #%10000111
			STA IICF
			;set slave address
			LDA #$10
			STA IICA
			;enable IIC and interrupts
			BSET IICC_IICEN, IICC
			BSET IICC_IICIE, IICC
			BCLR IICC_MST, IICC
			
			LDA #$00
			STA IIC_MSG
			
			
			;set PTBD ports as outputs
			BSET 0, PTBDD
			BSET 1, PTBDD
			BSET 2, PTBDD
			BSET 3, PTBDD
			BSET 4, PTBDD
			BSET 5, PTBDD
			BSET 6, PTBDD
			BSET 7, PTBDD
			
			;interrupts enabled, use bus rate clock, 128 prescaler
			LDA #%00101000
			STA TPMC0SC
			
			;7D00 = 32,000
			LDA #$7D
			STA TPMMODH
			
			LDA #$00
			STA TPMMODL
			
			;Toggle overflow flag
			LDA TPMSC
			EOR #%10000000
			STA TPMSC
			
			CLI		;enables interrupts
			
			JSR IIC_Startup_slave
			
			LDA #$32 ; Constants for 15+ ms delay
			STA $0090
			STA $0091
			
			LDA #$1A ; Constants for 4.1+ ms delay
			STA $0092
			STA $0093
			
			LDA #$16 ; Constants for 0.1+ ms delay
			STA $0094
			
			
mainLoop:
			CLR PTAD
			CLR PTBD
			
			JSR delay_16
			
			LDA #$38
			STA PTBD
			BSET 0,PTAD
			BCLR 0,PTAD
			
			JSR delay_4
			
			LDA #$38
			STA PTBD
			BSET 0,PTAD
			BCLR 0, PTAD
			
			JSR delay_point_one
			
			LDA #$38
			STA Storage
			JSR LCD_Write
			
			LDA #$38
			STA Storage
			JSR LCD_Write
			
			LDA #$0C
			STA Storage
			JSR LCD_Write
			
			LDA #$01
			STA Storage
			JSR LCD_Write
			
			LDA #$32 ; Constants for 15+ ms delay
			STA $0090
			STA $0091
			
			JSR delay_16
			
			LDA #$06
			STA Storage
			JSR LCD_Write
			
			JMP mainLoop3
			
			
IIC_Startup_slave:
			;initialize slave settings
			
			;set baud rate 50kbps
			LDA #%10000111
			STA IICF
			;set slave address
			LDA #$10
			STA IICA
			;enable IIC and interrupts
			BSET IICC_IICEN, IICC
			BSET IICC_IICIE, IICC
			BCLR IICC_MST, IICC
			RTS
			
_Viic:
			;actual interrupt call
			;DO I NEED TO SET UP THIS INTERRUPT IN PRM FILE???
			;clear interrupt
			BSET IICS_IICIF, IICS
			;master mode?
			LDA IICC
			AND #%00100000
			BEQ _Viic_slave	;yes
			;no
			;LDA PTBD
			;AND #%00000000
			;STA PTBD
			RTI
			
_Viic_slave:
			;check if arbitration is lost
			;arbitration lost?
			LDA IICS
			AND #%00010000
			BEQ _Viic_slave_iaas	;no
			BCLR 4, IICS	;if yes, clear arbitration lost bit
			BRA _Viic_slave_iaas2
			
_Viic_slave_iaas:
			;check if IAAS = 1
			;addressed as slave?
			LDA IICS
			AND #%01000000
			BNE _Viic_slave_srw	;yes
			BRA _Viic_slave_txRx	;no
			
_Viic_slave_iaas2:
			;also checks if IAAS = 1
			;addressed as slave?
			LDA IICS
			AND #%01000000
			BNE _Viic_slave_srw	;yes
			RTI	;if no exit
			
_Viic_slave_srw:
			;check if read or write
			;slave read/write
			LDA IICS
			AND #%00000100
			BEQ _Viic_slave_setRx	;slave reads
			BRA _Viic_slave_setTx	;slave writes
			
_Viic_slave_setTx:
			;initialize transfer mode and send data
			;transmits data
			BSET 4, IICC	;transmit mode select
			LDX current
			LDA IIC_MSG, X	;selects current byte of message to send
			STA IICD	;sends message
			INCX
			STX current	;increments current
			RTI
			
_Viic_slave_setRx:
			;initialize read mode and read IICD
			;makes slave ready to receive data
			BCLR 4, IICC	;receive mode select
			LDA #0
			STA current
			LDA IICD	;dummy read
			RTI
			
_Viic_slave_txRx:
			;check if device is in transmit or receive mode
			LDA IICC
			AND #%00010000
			BEQ _Viic_slave_read	;receive
			BRA _Viic_slave_ack	;transmit
		
_Viic_slave_ack:
			;check if master has acknowledged
			LDA IICS
			AND #%00000001
			BEQ _Viic_slave_setTx	;yes, transmit next byte
			BRA _Viic_slave_setRx	;no, switch to receive mode
			
_Viic_slave_read:
			;actually read and store data
			CLRH
			LDX current
			LDA IICD
			STA IIC_MSG, X	;store received data in IIC_MSG
			INCX
			STX current	;increment current
			RTI
			
LCD_Write:

			LDA #$16 ; Constants for 0.1+ ms delay
			STA $0094

			LDA Storage
			STA PTBD
			BSET 0,PTAD
			BCLR 0,PTAD
			JSR delay_point_one
			RTS
			
LCD_ADDR:

			BCLR 1,PTAD
			LDA Storage2
			STA PTBD
			BSET 0,PTAD
			BCLR 0,PTAD
			
			LDA #$16 ; Constants for 0.1+ ms delay
			STA $0094
			
			JSR delay_point_one
			RTS
			
mainLoop3:

			LDA #$80
			STA Storage2
			JSR LCD_ADDR
			
			LDA #$40
			STA Storage2
			JSR LCD_ADDR

			LDA IIC_MSG
			CBEQA #$68, uno ; 1
			CBEQA #$64, dos ; 2
			CBEQA #$62, tres ; 3
			CBEQA #$61, alpha ; A
			
			JSR mainLoop4
			
			JSR LCD_Write
			BRA mainLoop3
			
alpha:
			LDA #%10100000
			STA Storage
			JSR delay_point_one
			RTS
					
bravo:
			LDA #%10110000
			STA Storage
			JSR delay_point_one
			RTS
			
charlie:
			LDA #%11000000
			STA Storage
			JSR delay_point_one
			RTS
			
delta:
			LDA #%11010000
			STA Storage
			JSR delay_point_one
			RTS
			
ekko:
			LDA #%11100000
			STA Storage
			JSR delay_point_one
			RTS
			
foxtrot:
			LDA #%11110000
			STA Storage
			JSR delay_point_one
			RTS
			
uno:
			LDA #%00010000
			STA Storage
			JSR delay_point_one
			RTS
			
dos:
			LDA #%00100000
			STA Storage
			JSR delay_point_one
			RTS
			
tres:
			LDA #%00110000
			STA Storage
			JSR delay_point_one
			RTS
			
mainLoop4:
			CBEQA #$A8, cuatro ; 4
			CBEQA #$A4, cinco ; 5
			CBEQA #$A2, seis ; 6
			CBEQA #$A1, bravo ; B
			
			CBEQA #$48, siete ; 7
			CBEQA #$44, ocho ; 8
			CBEQA #$42, nueve ; 9
			CBEQA #$41, charlie ; C
			
			CBEQA #$38, ekko ; E, (apparently "echo" is a keyword)
			CBEQA #$34, zero ; 0
			CBEQA #$32, foxtrot ; F
			CBEQA #$31, delta ; D
			
			RTS
			
cuatro:
			LDA #%01000000
			STA Storage
			JSR delay_point_one
			RTS
			
cinco:
			LDA #%01010000
			STA Storage
			JSR delay_point_one
			RTS
			
seis:
			LDA #%01100000
			STA Storage
			JSR delay_point_one
			RTS
			
siete:
			LDA #%01110000
			STA Storage
			JSR delay_point_one
			RTS
			
ocho:
			LDA #%10000000
			STA Storage
			JSR delay_point_one
			RTS
			
nueve:
			LDA #%10010000
			STA Storage
			JSR delay_point_one
			RTS
			
zero:
			LDA #%00000000
			STA Storage
			JSR delay_point_one
			RTS
			
delay_16:
		LDA $32
		STA $0091

		LDA $0090
		DECA
		STA $0090
		
		BNE delay_16_2				
		RTS
		delay_16_2:
			LDA $0091
			DECA
			STA $0091	
			
			BEQ delay_16
			BRA delay_16_2
			
delay_4:
		LDA $1A
		STA $0093

		LDA $0092
		DECA
		STA $0092
		
		BNE delay_4_2				
		RTS
		
delay_4_2:
			LDA $0093
			DECA
			STA $0093	
			
			BEQ delay_4
			BRA delay_4_2					

delay_point_one:
		LDA $0094
		DECA
		STA $0094
		
		BNE delay_point_one
		RTS

clear:
		LDA #%00000001
		STA PTBD
		JSR delay_point_one
		RTS
