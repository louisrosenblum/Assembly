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
			
			;and we back:
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
			
;defining variable values
			
			;slowing down LED speed
			LDA #$FF
			STA $0060
			LDA #$C8
			STA $0061
			LDA #$06
			STA $0062
			
			;for Part B
			LDA #$05
			STA $0063
			STA $0064
			LDA #$03
			STA $0065
			
			;for Part C
			LDA #$08
			STA $0066
			LDA #%00011000
			STA $0067
			LDA #$06
			STA $0068
			LDA #%00100100
			STA $0069
			LDA #%01000010
			STA $0070
			LDA #%10000001
			STA $0071
			
			CLI		;enables interrupts
			
			JSR IIC_Startup_slave
			
			
mainLoop:
			
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

			;and we back:
   
Part_A:			
           	LDA PTBD
            EOR #%01010101	;turns on every other LED
            STA PTBD
            BRA mainLoop3    
            
Part_B:

			LDA #%11111110	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			LDA #%11111101	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			LDA #%11111011	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			LDA #%11110111	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			LDA #%11101111	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			LDA #%11011111	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			LDA #%101111111	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			LDA #%01111111	;turns on every LED except 0
			STA PTBD
			JSR Delay
			
			BRA mainLoop3

Delay:

			;following loops are to slow down the flashing of the LEDs
            LDA $0060
            DECA
            STA $0060
            BEQ toggleB
            BRA Delay
            

toggleB:
			LDA $0061
			DECA
			STA $0061
			BEQ toggleB2
			LDA #$FF
			STA $0060
			BRA Delay
			RTS
			
mainLoop3:
			;added because Part_D was out of range of mainLoop
			;JSR _Viic
			LDA IIC_MSG
			CBEQA #$40, Part_A
			CBEQA #$80, Part_B
			CBEQA #$20, Part_C
			CBEQA #$10, mainLoop4
			BRA mainLoop3
                       
Part_C:
			;following loops are to slow down the flashing of the LEDs
			LDA $0060
            DECA
            STA $0060
            BEQ toggle
            BRA Part_C

toggle:
			LDA $0061
			DECA
			STA $0061
			BEQ toggle2
			LDA #$FF
			STA $0060
			BRA Part_C
			
toggle2:
			LDA $0062
			DECA
			STA $0062
			BEQ switch
			
			LDA #$C8
			STA $0061
			BRA Part_C
			
switch:		
			;depending on value of counter code jumps to different subroutine for desired pattern	
			LDA $0068
			CBEQA #$06, one
			CBEQA #$05, two
			CBEQA #$04, three
			CBEQA #$03, four
			CBEQA #$02, three
			CBEQA #$01, two
			CBEQA #$00, restart		

one:
			;when desired pattern is OOOXXOOO
			LDA $0067
			STA PTBD
			
			;decrement counter
			LDA $0068
			DECA
			STA $0068
			BRA resetC

two:
			;when desired pattern is OOXOOXOO
			LDA $0069
			STA PTBD
			
			;decrement counter
			LDA $0068
			DECA
			STA $0068
			BRA resetC

three:
			;when desired pattern is OXOOOOXO
			LDA $0070
			STA PTBD
			
			;decrement counter
			LDA $0068
			DECA
			STA $0068
			BRA resetC

four:		
			;when desired pattern is XOOOOOOX
			LDA $0071
			STA PTBD
			
			;decrement counter
			LDA $0068
			DECA
			STA $0068
			BRA resetC
			
mainLoop4:
			BRA Part_D

resetC:
			;reseting valus for delay loops
			LDA #$FF
			STA $0060
			LDA #$C8 
			STA $0061
			LDA #$06
			STA $0062
			JMP mainLoop3
			
restart:
			;restarting the pattern
			LDA $0067
			STA PTBD
			
			;starting counter over
			LDA #$05
			STA $0068
			BRA resetC

Part_D:
			;setting start pattern: OOXXXXOO
			LDA #%00111100
			STA PTBD
			JSR Delay
			
			LDA #%01111000
			STA PTBD
			JSR Delay
			
			LDA #%11110000
			STA PTBD
			JSR Delay
			
			LDA #%11100000
			STA PTBD
			JSR Delay
			
			LDA #%11000000
			STA PTBD
			JSR Delay
			
			LDA #%10000000
			STA PTBD
			JSR Delay
			
			LDA #%11000000
			STA PTBD
			JSR Delay
			
			LDA #%11100000
			STA PTBD
			JSR Delay
			
			LDA #%11110000
			STA PTBD
			JSR Delay
			
			LDA #%01111000
			STA PTBD
			JSR Delay

			JMP mainLoop3
