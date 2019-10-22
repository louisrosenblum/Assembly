;*******************************************************************
;* This stationery serves as the framework for a user application. *
;* For a more comprehensive program that demonstrates the more     *
;* advanced functionality of this processor, please see the        *
;* demonstration applications, located in the examples             *
;* subdirectory of the "Freescale CodeWarrior for HC08" program    *
;* directory.                                                      *
;*******************************************************************

; Working Lab 2 LED Slave Abigail Stroh

; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            

; export symbols
            XDEF _Startup, main, _Viic
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            
            
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack

LCD_CTRL: 	EQU $00
LCD_DATA: 	EQU $02
E:		EQU 0
RW:		EQU 2
RS:		EQU 1
            
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
cluster:		DS.B 1
bucket: 		DS.B 1
numba:		DS.B 50
temp: 		DS.B 1
tens: 		DS.B 1
ones:		DS.B 1

khuns:		DS.B 1
ktens: 		DS.B 1
kones:		DS.B 1

; code section
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

MSGN: DC.B "n"
		DC.B $00
MSGT: DC.B "t"
		DC.B $00
MSGE: DC.B "e"
		DC.B $00
MSGR: DC.B "r"
		DC.B $00
MSGCOL: DC.B ":"
		DC.B $00
MSGSPAC: DC.B " "
		DC.B $00
MSGK: DC.B "K"
		DC.B $00
MSGCOM: DC.B ","
		DC.B $00 	
		
main:		
_Startup:
            LDHX   #__SEG_END_SSTACK ; initialize the stack pointer
            TXS

			LDA #$FF
			STA cluster
			
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

			;set PTAD ports as outputs
			BSET 0, PTADD
			BSET 1, PTADD
			
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
			
;defining variable values
			
			CLI		;enables interrupts

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
			
			JSR IIC_Startup_slave
			
			
mainLoop:
			LDA #$FF
			STA cluster

			
			JSR spit
			
			BRA sit
			
part_dos:
				BCLR 0,PTAD
				BCLR 1,PTAD
				LDA #$01
				JSR LCD_WRITE
				JSR FASTLOOP
	
				BCLR 0,PTAD
				BCLR 1,PTAD
				LDA #$02
				JSR LCD_WRITE
				JSR FASTLOOP
				
				LDA #$FF
				STA cluster
			
				BRA part_tres
				
sit:
		NOP
		NOP
		LDA cluster
		BEQ part_dos
		BRA sit


sit2:
		NOP
		NOP
		LDA cluster
		BEQ part_tres
		BRA sit2
				
part_tres:
			
			LDA IIC_MSG
			STA temp
			
			LDHX #$000A
			
			LDA temp
			DIV
			STA tens
			
			STHX $0199
			
			LDA $0199
			STA ones
			
			LDA tens
			
			JSR compare
			

			LDA ones
			
			JSR compare
			
			JSR C_press
			
			JSR FASTLOOP
			
			JSR spac_press
			
			JSR FASTLOOP
			
			LDA ones
			ADD #$03
			STA kones
			
			LDA tens
			ADD #$1B
			STA ktens
			
			
			LDHX #$000A
			
			LDA ktens
			DIV
			STA khuns
			
			STHX $0203
			
			LDA $0203
			STA ktens
			
			LDA kones
			
			CBEQA #$01,kapow
			CBEQA #$02,kapow
			CBEQA #$00,kapow
			
			LDA khuns
			
			JSR compare
			
			LDA ktens
			
			JSR compare
			
			LDA kones
			
			JSR compare
			
			JSR k_press
			
			BRA part_cuatro

part_cuatro:
			NOP
			NOP
			LDA IIC_MSG
			CBEQA #$38, get_ready
			
			NOP
			BRA part_cuatro

get_ready:
			JMP mainLoop
			
			RTS

compare:
		CBEQA #$01,One
		CBEQA #$02,Two
		CBEQA #$03,Three
		CBEQA #$04,Four
		CBEQA #$05,Five
		
		JSR compare2
			
		JSR FASTLOOP
		JSR FASTLOOP
		RTS

kapow:
			LDA ktens
			ADD #$01
			STA ktens
			
			RTS
			

One:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX

L3:
	LDA MSG1,X
	BEQ OUTMSG1
	JSR LCD_WRITE
	INCX
	BRA L3

OUTMSG1:
	LDA CLEAR
	STA IIC_MSG
	RTS	

Two:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX

L4:
	LDA MSG2,X
	BEQ OUTMSG2
	JSR LCD_WRITE
	INCX
	BRA L4

OUTMSG2:
	LDA CLEAR
	STA IIC_MSG
	RTS

Three:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX

L5:
	LDA MSG3,X
	BEQ OUTMSG3
	JSR LCD_WRITE
	INCX
	BRA L5

OUTMSG3:
	LDA CLEAR
	STA IIC_MSG
	RTS
	
Four:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX

L6:
	LDA MSG4,X
	BEQ OUTMSG4
	JSR LCD_WRITE
	INCX
	BRA L6

OUTMSG4:
	LDA CLEAR
	STA IIC_MSG
	RTS

Five:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX
L7:	
	LDA MSG5,X
	BEQ OUTMSG5
	JSR LCD_WRITE
	INCX
	BRA L7
OUTMSG5:	
	LDA CLEAR
	STA IIC_MSG
	RTS	

compare2:
		CBEQA #$06,Six
		CBEQA #$07,Seven
		CBEQA #$08,Eight
		CBEQA #$09,Nine
		CBEQA #$00,Zero
		RTS
Six:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX
L8:	
	LDA MSG6,X
	BEQ OUTMSG6
	JSR LCD_WRITE
	INCX
	BRA L8
OUTMSG6:	
	LDA CLEAR
	STA IIC_MSG
	RTS
	
Seven:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
		
L9:	
		LDA MSG7,X
		BEQ OUTMSG7
		JSR LCD_WRITE
		INCX
		BRA L9
OUTMSG7:	
		LDA CLEAR
		STA IIC_MSG
		RTS		
		
Eight:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX
L10:	
	LDA MSG8,X
	BEQ OUTMSG8
	JSR LCD_WRITE
	INCX
	BRA L10
OUTMSG8:
	LDA CLEAR
	STA IIC_MSG
	RTS	
	
Nine:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX
L11:	
	LDA MSG9,X
	BEQ OUTMSG9
	JSR LCD_WRITE
	INCX
	BRA L11
OUTMSG9:	
	LDA CLEAR
	STA IIC_MSG
	RTS	
	
Zero:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX
L12:	
	LDA MSG10,X
	BEQ OUTMSG10
	JSR LCD_WRITE
	INCX
	BRA L12
OUTMSG10:	
	LDA CLEAR
	STA IIC_MSG
	RTS	
			



			

			
			
			
			
			

spit:

		BCLR 0,PTAD
		BCLR 1,PTAD
		LDA #$01
		JSR LCD_WRITE
		JSR FASTLOOP
	
		BCLR 0,PTAD
		BCLR 1,PTAD
		LDA #$02
		JSR LCD_WRITE
		JSR FASTLOOP
				
				
		NOP
		NOP
		JSR E_press
		JSR n_press
		JSR t_press
		JSR e_press
		JSR r_press
		JSR spac_press
		JSR n_press
		JSR col_press
		JSR spac_press
		
		
	NOP
	RTS	
	

		

		
	
splash:
		BCLR 0,PTAD
		BCLR 1,PTAD
		LDA #$01
		JSR LCD_WRITE
		JSR FASTLOOP
	
		BCLR 0,PTAD
		BCLR 1,PTAD
		LDA #$02
		JSR LCD_WRITE
		JSR FASTLOOP
		
		RTS
		

	
C_press:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX
L15:	
	LDA MSG13,X
	BEQ OUTMSG13
	JSR LCD_WRITE
	INCX
	BRA L15
OUTMSG13:	
	LDA CLEAR
	STA IIC_MSG
	RTS	
	
E_press:
	LDA #$00
	JSR LCD_ADDR
	CLRH
	CLRX
L17:	
	LDA MSG15,X
	BEQ OUTMSG15
	JSR LCD_WRITE
	INCX
	BRA L17
OUTMSG15:	
	LDA CLEAR
	STA IIC_MSG
	RTS					
		
n_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
N17:	
		LDA MSGN,X
		BEQ OUTMSGN
		JSR LCD_WRITE
		INCX
		BRA N17
OUTMSGN:	
		LDA CLEAR
		STA IIC_MSG
		RTS
t_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
T17:	
		LDA MSGT,X
		BEQ OUTMSGT
		JSR LCD_WRITE
		INCX
		BRA T17
OUTMSGT:	
		LDA CLEAR
		STA IIC_MSG
		RTS
e_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
E17:	
		LDA MSGE,X
		BEQ OUTMSGE
		JSR LCD_WRITE
		INCX
		BRA E17
OUTMSGE:	
		LDA CLEAR
		STA IIC_MSG
		RTS	
r_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
R17:	
		LDA MSGR,X
		BEQ OUTMSGR
		JSR LCD_WRITE
		INCX
		BRA R17
OUTMSGR:	
		LDA CLEAR
		STA IIC_MSG
		RTS
	
col_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
COL17:	
		LDA MSGCOL,X
		BEQ OUTMSGCOL
		JSR LCD_WRITE
		INCX
		BRA COL17
OUTMSGCOL:	
		LDA CLEAR
		STA IIC_MSG
		RTS
		
spac_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
SPAC17:	
		LDA MSGSPAC,X
		BEQ OUTMSGSPAC
		JSR LCD_WRITE
		INCX
		BRA SPAC17
OUTMSGSPAC:	
		LDA CLEAR
		STA IIC_MSG
		RTS
		
k_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
K17:	
		LDA MSGK,X
		BEQ OUTMSGK
		JSR LCD_WRITE
		INCX
		BRA K17
OUTMSGK:	
		LDA CLEAR
		STA IIC_MSG
		RTS
		
com_press:
		LDA #$00
		JSR LCD_ADDR
		CLRH
		CLRX
COM17:	
		LDA MSGCOM,X
		BEQ OUTMSGCOM
		JSR LCD_WRITE
		INCX
		BRA COM17
OUTMSGCOM:	
		LDA CLEAR
		STA IIC_MSG
		RTS						
	
		
			
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
			
			LDA #$00
			STA cluster
			
			RTI

			;and we back:
			
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

