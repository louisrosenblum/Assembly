;Madison Martinsen
;2/12/19
;Lab 2: Liquid-Crystal Display and Keypad
;I2C Slave Code with LED's
            
*---- Include derivative-specific definitions----
            INCLUDE 'derivative.inc'
            XDEF _Startup, main, _Viic
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack

LCD_CTRL: 	EQU $00
LCD_DATA: 	EQU $02
E:			EQU 0
RW:			EQU 2
RS:			EQU 1


*----Ram Variables (start of RAM)----
	ORG $0060
IIC_addr: 	DS.B 1
msgLength: 	DS.B 1
current:	DS.B 1
IIC_MSG:    DS.B 1
checkByte:	DS.B 1
TIME:		DS.B 1
CNTR0:		DS.B 1
CNTR1:		DS.B 1
CNTR2:		DS.B 1
recieveCheck:	DS.B 1



	
*----Code Section (start of ROM)----
	ORG $E000
MSG1: 	DC.B "1"
		DC.B $00		
MSG2: 	DC.B "2"
		DC.B $00		
MSG3: 	DC.B "3"
		DC.B $00		
MSG4: 	DC.B "4"
		DC.B $00
MSG5: 	DC.B "5"
		DC.B $00
MSG6: 	DC.B "6"
		DC.B $00
MSG7: 	DC.B "7"
		DC.B $00
MSG8: 	DC.B "8"
		DC.B $00
MSG9: 	DC.B "9"
		DC.B $00
MSG10: 	DC.B "0"
		DC.B $00
MSG11: 	DC.B "A"
		DC.B $00
MSG12: 	DC.B "B"
		DC.B $00
MSG13: 	DC.B "C"
		DC.B $00
MSG14: 	DC.B "D"
		DC.B $00
MSG15: 	DC.B "E"
		DC.B $00
MSG16: 	DC.B "F"
		DC.B $00
CLEAR:  DC.B "CLEAR"

	
main:
	_Startup:
	            LDHX   #__SEG_END_SSTACK ;Initialize the stack pointer
	            TXS ;Transfer Index Register to SP
	
	*----Enable interrupts----
				CLI ;Clear interrupt mask bit
				
	*----Turn Off Watchdog---- 
				LDA SOPT1
				AND #%01111111
				STA SOPT1
				
	*----Set PTA pins to be used for SDA/SCL
				LDA SOPT2 ;System Options Register 2
				ORA #%00000000
				STA SOPT2
				
	*----Set PTB0-7 for outputs----
				LDA #%11111111
				STA PTBDD
				
	*----Set PTA0-1 for outputs----
				LDA #%00000011
				STA PTADD
	            
	*----Initialize checkByte----
				LDA #0
				STA checkByte
				
	*----Initialize current----
				LDA #0
				STA current
	
	*----Initialize LCD ports----
				LDA #0
				STA LCD_CTRL
				STA LCD_DATA
	
	*----Initialize the LCD----
				;delay
				JSR FASTLOOP 
				;int command
				LDA #$38     ;LCD int command
				STA LCD_DATA 
				BSET E, LCD_CTRL ;clock in data
				BCLR E,LCD_CTRL
				;delay
				JSR FASTLOOP
				;int command 
				LDA #$38     ;LCD int command
				STA LCD_DATA 
				BSET E, LCD_CTRL ;clock in data
				BCLR E, LCD_CTRL
				;delay
				JSR FASTLOOP
				;int command
				LDA #$38
				JSR LCD_WRITE
*----send function set command----
		;8-bit but, 2 rows, 5X7 dots
				LDA #$38
				JSR LCD_WRITE
*----Send display contrl command
		;display on , cursor off, no blinking
				LDA #$0F
				JSR LCD_WRITE
*----Send clear display command----
		;clear display, cursor addr=0
				LDA #$00
				JSR LCD_WRITE
				JSR FASTLOOP
*----Send entry mode command----
		;increment, no display shift
				LDA #$06
				JSR LCD_WRITE
	           
				
	
	*----Start Slave----
				JSR IIC_Startup_slave
	
*------------------------------------------------------------------
mainLoop:
			JSR checkBytes ;Check which button pressed
			;BSET IICC_IICIE, IICC
			
			;JSR LCD_WRITE
			
			;JSR SEND_MESSAGE
			;JSR SEND_MESSAGE
			;JSR SEND_MESSAGE
			;JSR SEND_MESSAGE
			NOP

            BRA    mainLoop

*----Initialize slave settings----
IIC_Startup_slave:
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

*----Actual interrupt call----
_Viic:
			BSET IICS_IICIF, IICS
			; master mode?
			LDA IICC
			AND #%00100000
			BEQ _Viic_slave ; no
			; yes
			RTI

*----Arbitration lost----
_Viic_slave:
			LDA IICS
			AND #%00010000
			BEQ _Viic_slave_iaas ; no
			BCLR 4, IICS ; if yes, clear arbitration lost bit
			BRA _Viic_slave_iaas2

*----Check is IAAS=1----
_Viic_slave_iaas:
			LDA IICS
			AND #%01000000
			BNE _Viic_slave_srw ; yes
			BRA _Viic_slave_txRx ;no

*----Also checks if IAAS=1----
_Viic_slave_iaas2:
			;addressed as slave?
			LDA IICS
			AND #%01000000
			BNE _Viic_slave_srw ;yes
			RTI ; if no exit

*----Check if read or wirte----
_Viic_slave_srw:
			LDA IICS
			AND #%00000100
			BEQ _Viic_slave_setRx ; slave reads
			BRA _Viic_slave_setTx ; slave writes

*----Initialize transfer mode and send data----
_Viic_slave_setTx:
			BSET 4, IICC ;transmit mode select
			LDX current
			LDA IIC_MSG, X ; selects current byte of message to send
			STA IICD ; sends message
			INCX
			STX current ; increments current
			RTI

*----Initalize read mode and read IICD----
_Viic_slave_setRx:
			; makes slave ready to receive data
			BCLR 4, IICC ;recieve mode select
			LDA #0
			STA current
			LDA IICD ;dummy read
			RTI

*----Check if device is in transmit or recieve mode----
_Viic_slave_txRx:
			LDA IICC
			AND #%00010000
			BEQ _Viic_slave_read ; receive
			BRA _Viic_slave_ack  ; transmit

*----Check if master has acknowledge----			
_Viic_slave_ack:
			; IICS is checking for an acknowledge
			LDA IICS
			AND #%00000001
			BEQ _Viic_slave_setTx ; yes, transmit next byte
			BRA _Viic_slave_setRx ; no , switch to receive mode

*----Slave reads and stores data----
_Viic_slave_read:
			CLRH
			LDX current
			LDA IICD
			STA IIC_MSG, X ; store recieved data in IIC_MSG
			INCX
			STX current ; increment current
			RTI

*--------------------------------------------------------------
checkBytes:
			  LDA IIC_MSG 
			  AND #%01110111 ;check for 1
			  BEQ one
			  
			  LDA IIC_MSG
			  AND #%01111011 ;check for 2
			  BEQ two
			  
			  LDA IIC_MSG
			  AND #%01111101 ;check for 2
			  BEQ three
			  
			  LDA IIC_MSG
			  AND #%10110111 ;check for 4
			  BEQ four

			  
			  LDA IIC_MSG
			  AND #%10111011 ;check for 5
			  BEQ five
			  
			  LDA IIC_MSG
			  AND #%10111101 ;check for 6
			  BEQ six
			  
			  LDA IIC_MSG
			  AND #%11010111 ;check for 7
			  BEQ seven
			  
			  LDA IIC_MSG
			  AND #%11011011 ;check for 8
			  BEQ eight
			  
			  LDA IIC_MSG
			  AND #%11011101 ;check for 9
			  BEQ nine
			  
			  LDA IIC_MSG
			  AND #%11101011 ;check for 0
			  BEQ zero
			  
			  LDA IIC_MSG
			  AND #%01111110 ;check for A
			  BEQ letterA
			  
			  LDA IIC_MSG
			  AND #%10111110 ;check for B
			  BEQ B
			  
			  LDA IIC_MSG
			  AND #%11011110 ;check for C
			  BEQ C
			  
			  LDA IIC_MSG
			  AND #%11101110 ;check for D
			  BEQ D
			  
			  LDA IIC_MSG
			  AND #%11100111 ;check for *
			  BEQ star
			  
			  LDA IIC_MSG
			  AND #%11101101 ;check for #
			  BEQ pound
			  
			  RTS
one:
			JSR one_1
			RTS
two: 
			JSR two_2
			RTS
three:
			JSR three_3
			RTS
four:
			JSR four_4
			RTS
five:
			JSR five_5
			RTS
six:
			JSR six_6
			RTS
seven:
			JSR seven_7
			RTS
eight:
			JSR eight_8
			RTS
nine:
			JSR nine_9
			RTS
zero:
			JSR zero_0
			RTS
letterA:
			JSR letterA_A
			RTS
B:
			JSR B_B
			RTS
C:
			JSR C_C
			RTS
D:
			JSR D_D
			RTS
star:
			JSR star_S
			RTS
pound:
			JSR pound_P
			RTS
one_1: 
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L3:	LDA MSG1,X
			BEQ OUTMSG1
			JSR LCD_WRITE
			INCX
			BRA L3
OUTMSG1:	
			LDA CLEAR
			STA IIC_MSG
			RTS

two_2: 
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L4:	LDA MSG2,X
			BEQ OUTMSG2
			JSR LCD_WRITE
			INCX
			BRA L4
OUTMSG2:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
three_3:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L5:	LDA MSG3,X
			BEQ OUTMSG3
			JSR LCD_WRITE
			INCX
			BRA L5
OUTMSG3:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
four_4:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L6:	LDA MSG4,X
			BEQ OUTMSG4
			JSR LCD_WRITE
			INCX
			BRA L6
OUTMSG4:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
five_5:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L7:	LDA MSG5,X
			BEQ OUTMSG5
			JSR LCD_WRITE
			INCX
			BRA L7
OUTMSG5:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
six_6:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L8:	LDA MSG6,X
			BEQ OUTMSG6
			JSR LCD_WRITE
			INCX
			BRA L8
OUTMSG6:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
seven_7:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L9:	LDA MSG7,X
			BEQ OUTMSG7
			JSR LCD_WRITE
			INCX
			BRA L9
OUTMSG7:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
eight_8:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L10:	LDA MSG8,X
			BEQ OUTMSG8
			JSR LCD_WRITE
			INCX
			BRA L10
OUTMSG8:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
nine_9:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L11:	LDA MSG9,X
			BEQ OUTMSG9
			JSR LCD_WRITE
			INCX
			BRA L11
OUTMSG9:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
zero_0:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L12:	LDA MSG10,X
			BEQ OUTMSG10
			JSR LCD_WRITE
			INCX
			BRA L12
OUTMSG10:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
letterA_A:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L13:	LDA MSG11,X
			BEQ OUTMSG11
			JSR LCD_WRITE
			INCX
			BRA L13
OUTMSG11:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
B_B:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L14:	LDA MSG12,X
			BEQ OUTMSG12
			JSR LCD_WRITE
			INCX
			BRA L14
OUTMSG12:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
C_C:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L15:	LDA MSG13,X
			BEQ OUTMSG13
			JSR LCD_WRITE
			INCX
			BRA L15
OUTMSG13:	
			LDA CLEAR
			STA IIC_MSG
			RTS
D_D:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L16:	LDA MSG14,X
			BEQ OUTMSG14
			JSR LCD_WRITE
			INCX
			BRA L16
OUTMSG14:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
star_S:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L17:	LDA MSG15,X
			BEQ OUTMSG15
			JSR LCD_WRITE
			INCX
			BRA L17
OUTMSG15:	
			LDA CLEAR
			STA IIC_MSG
			RTS

pound_P:
			LDA #$00
			JSR LCD_ADDR
			CLRH
			CLRX
		L18:	LDA MSG16,X
			BEQ OUTMSG16
			JSR LCD_WRITE
			INCX
			BRA L18
OUTMSG16:	
			LDA CLEAR
			STA IIC_MSG
			RTS
			
 
 
*----Routine sends LCD Data----
 LCD_WRITE: 
 			STA LCD_DATA
 			BSET E, LCD_CTRL
 			BCLR E, LCD_CTRL
 			JSR FASTLOOP
 			RTS
 			
 *----ROUTINE SENDS LCD ADDRESS----
LCD_ADDR:
		BCLR RS,LCD_CTRL
		STA LCD_DATA
		BSET E,LCD_CTRL
		BCLR E,LCD_CTRL
		JSR FASTLOOP
		BSET RS,LCD_CTRL
		RTS
		
*----1 second delay----
FASTLOOP:  
		  LDA #6 ;load highest decimal value into accumulator for outer loop
		  ;LDA #2
		  STA CNTR0
LOOP0:
		  LDA #100
		  STA CNTR1
LOOP1:
		  LDA #100          ;reset inner loop variable
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
		  
		
	

			

