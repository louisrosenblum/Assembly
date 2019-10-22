; Justin Williams
; Bailey Galacci
; Lab 1
; SLAVE FILE
            INCLUDE 'derivative.inc'
            

; export symbols
            XDEF _Startup, main, _Viic
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack

RAM:
	IIC_addr: 	DS.B 1
	msgLength: 	DS.B 1
	current:	DS.B 1
	IIC_MSG:    DS.B 1

; variable/data section
MY_ZEROPAGE: SECTION  SHORT         ; Insert here your data definition

; code section
MyCode:     SECTION
main:
_Startup:
            LDHX   #__SEG_END_SSTACK ; initialize the stack pointer
            TXS
			CLI			; enable interrupts
			
			; Disable Watchdog
			LDA SOPT1
			AND #$7F
			STA SOPT1
			
			; PTB pins for SDA/SCL
			LDA #%1000011
			STA SOPT2
			; PTB 7 for output
			LDA PTBDD
			ORA #$FF
			STA PTBDD
			
			JSR IIC_Startup_slave


mainLoop:
			LDX #1
			LDA IIC_MSG, X ; load received IIC message
			CLRX
			
			; used as a test to see if I2C works
			
			CBEQA #$C1, LED ; check if it is a C1 as expected
			LDA PTBD ;toggle PTB1 as heartbeat
			EOR #%0000010
			STA PTBD
			
            BRA    mainLoop
; -------------------------------------------------------------------
LED: ; toggles PTB0 if expected messae is received ; TEST CODE
			LDA PTBD
			EOR #%0000001
			STA PTBD
			STA IIC_MSG ;load accumulator into message location to clear it preventing the pin to toggle 
			; continuously after 1 message
			BRA mainLoop
;___________________________________________________________________
IIC_Startup_slave:
			;initialize slave settings
			; set baud rate to 50kbps
			LDA #%10000111
			STA IICF
			; set slave address
			LDA #$10
			STA IICA
			; enable IIC and Interrupts
			BSET IICC_IICEN, IICC
			BSET IICC_IICIE, IICC
			BCLR IICC_MST  , IICC
			RTS
;___________________________________________________________________
_Viic: ; actual interrupt call
			BSET IICS_IICIF, IICS
			; master mode?
			LDA IICC
			AND #%00100000
			BEQ _Viic_slave ; yes
			; no
			RTI
; __________________________________________________________________
_Viic_slave:
			;arbitration lost
			LDA IICS
			AND #%00010000
			BEQ _Viic_slave_iaas ; no
			BCLR 4, IICS ; if yes, clear arbitration lost bit
			BRA _Viic_slave_iaas2
; __________________________________________________________________
_Viic_slave_iaas:
			LDA IICS
			AND #%01000000
			BNE _Viic_slave_srw ; yes
			BRA _Viic_slave_txRx ;no
;___________________________________________________________________
_Viic_slave_iaas2:
			;addressed as slave?
			LDA IICS
			AND #%01000000
			BNE _Viic_slave_srw ;yes
			RTI ; if no exit
;___________________________________________________________________
_Viic_slave_srw:
			LDA IICS
			AND #%00000100
			BEQ _Viic_slave_setRx ; slave reads
			BRA _Viic_slave_setTx ; slave writes
;___________________________________________________________________
_Viic_slave_setTx:
			; TRANSMITS DATA
			BSET 4, IICC ;transmit mode select
			LDX current
			LDA IIC_MSG, X ; selects current byte of message to send
			STA IICD ; sends message
			INCX
			STX current ; increments current
			RTI
;___________________________________________________________________
_Viic_slave_setRx:
			; makes slave ready to receive data
			BCLR 4, IICC ;recieve mode select
			LDA #0
			STA current
			LDA IICD ;dummy read
			RTI
;___________________________________________________________________
_Viic_slave_txRx:
			LDA IICC
			AND #%00010000
			BEQ _Viic_slave_read ; receive
			BRA _Viic_slave_ack  ; transmit
;___________________________________________________________________			
_Viic_slave_ack:
			; IICS is checking for an acknowledge
			LDA IICS
			AND #%00000001
			BEQ _Viic_slave_setTx ; yes, transmit next byte
			BRA _Viic_slave_setRx ; no , switch to receive mode

;___________________________________________________________________
_Viic_slave_read:
			CLRH
			LDX current
			LDA IICD
			STA IIC_MSG, X ; store recieved data in IIC_MSG
			INCX
			STX current ; increment current
			RTI
;___________________________________________________________________
