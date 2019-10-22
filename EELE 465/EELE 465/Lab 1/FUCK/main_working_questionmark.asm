; Justin Williams
; Bailey Galacci
; Louis Rosenblum
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
	CNTR0:		DS.B 1
	CNTR1:		DS.B 1
	CNTR2:		DS.B 1
	checkByte:	DS.B 1
	

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
			
			; PTA pins for SDA/SCL
			LDA #%1000001
			STA SOPT2
			; PTB 7 for output
			LDA PTBDD
			ORA #$FF ;11111111
			STA PTBDD
			STA PTBD
			
			; LED SETUP_______________________________________
			CLI
            
			; initialize checkByte
			LDA #0
			STA checkByte
			STA IIC_MSG
			
			; INITIALIZE CURRENT
			LDA #0
			STA current
			
			
			
			; FIN LED SETUP____________________________________
			JSR IIC_Startup_slave


mainLoop:
			JSR checkBytes
			BSET IICC_IICIE, IICC
			
			NOP

            BRA    mainLoop
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
			BEQ _Viic_slave ; no
			; yes
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
		
checkBytes:
			  LDA checkByte
			  AND #%01111110
			  BEQ A_label
			  
			  LDA checkByte
			  AND #%10111110
			  BEQ B_label
			  
			  LDA checkByte
			  AND #%11011110
			  BEQ C_label
			  
			  LDA checkByte
			  AND #%11101110
			  BEQ D_label
			  RTS

A_label:
			  JSR Apattern
			  RTS
B_label: 
			  JSR Bpattern
			  RTS
C_label:
			  JSR Cpattern
			  RTS
D_label:
			  JSR Dpattern
			  RTS


;_______________________________________________________________________
;1st pattern, static on/off

Apattern:
			  LDA #%01010101
			  STA PTBD
			  
			  RTS
;_______________________________________________________________________
;2nd pattern

Bpattern:
			 LDA #%01111111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%10111111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%11011111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%11101111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%11110111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%11111011
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%11111101
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%11111110
			 STA PTBD
			 JSR FASTLOOP
			 
			 RTS

;______________________________________________________________________
;3rd pattern

Cpattern:
			 LDA #%00011000
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00100100
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%01000010
			 STA PTBD
			 JSR FASTLOOP
			
			 LDA #%10000001
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%01000010
			 STA PTBD
			 JSR FASTLOOP
			
			 LDA #%00100100
			 STA PTBD
			 JSR FASTLOOP
			
			 LDA #%00011000
			 STA PTBD
			 
			 RTS

;____________________________________________________________________
;4th pattern
Dpattern:
			 LDA #%00111100
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00011110
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00001111
			 STA PTBD
			 JSR FASTLOOP
			
			 LDA #%00000111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00000011
			 STA PTBD
			 JSR FASTLOOP
			 
			
			 LDA #%00000001
			 STA PTBD
			 JSR FASTLOOP
			
			 LDA #%00000011
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00000111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00001111
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00011110
			 STA PTBD
			 JSR FASTLOOP
			 
			 LDA #%00111100
			 STA PTBD
			 RTS
;_______________________________________________________________________
;1 sec delay
FASTLOOP:  
		  LDA #6 ;load highest decimal value into accumulator for outer loop
		  ;LDA #2
		  STA CNTR0
LOOP0:
		  LDA #200
		  STA CNTR1
LOOP1:
		  LDA #255          ;reset inner loop variable
		  STA CNTR2         ;load value into designated inner loop register
LOOP2:
		  LDA CNTR2
		  SUB #%00000001    ;subtracts 1 from inner loop
		  STA CNTR2         ;loads value into inner loops mem loc
		  BNE LOOP2   ;loop breaks once inner loop variable is set to 0
		  
		  LDA CNTR1         ;loads the accumulator with value in outer loop memory
		  SUB #%00000001    ;subtract 1 from outer loop variable
		  STA CNTR1
		  BNE LOOP1   ; break loop once outer variable is 0
		  STA SRS
		  
		  LDA CNTR0         ;loads the accumulator with value in outer loop memory
		  SUB #%00000001    ;subtract 1 from outer loop variable
		  STA CNTR0
		  BNE LOOP0   ; break loop once outer variable is 0
		           
		  RTS



			
	

			

