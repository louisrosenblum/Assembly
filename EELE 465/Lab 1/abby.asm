{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fswiss\fcharset0 Helvetica-Oblique;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\ri0\partightenfactor0

\f0\fs24 \cf0 ; Include derivative-specific definitions\
	INCLUDE \'91derivative.inc\'92\
\
;export symbols\
	XDEF _Startup, main, _Viic\
	; we export both \'91_Startup\'92 and \'91main\'92 as symbols. Either can\
	;be referenced in the linker .prm file or from C/C++ later on\
\
\
	XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack\
\
RAM:\
	IIC_addr: DS.B 1\
	msgLength: DS.B 1\
	current: DS.B 1\
\
;code section\
MyCode:	SECTION\
main:\
_Startup:\
		LDHX	#__SEG_END_SSTACK		;initialize the stack pointer\
		THX\
				CLI		;enable interrupts\
\
				;disable watchdog\
				LDA SOPT1\
				AND #$7F\
				STA SOTP1\
				;PTB pins for SDA/SCL\
				LDA #%10000011\
				STA SOPT2\
				;PTB 7 for output\
				LDA PTBDD\
				ORA #%00000011\
				STA PTBDD\
				JSR IIC_Startup_slave\
\
mainLoop:\
\
		LDX #1\
		LDA IIC_MSG, X	;load received IIC message\
		CLRX\
			;used as a test to see if I2C code works\
\
		CBEQA #$C1, LED	;check if it is C1 as expected\
		LDA PTBD	;toggle PTB1 as a heartbeat\
		EOR #%00000010\
		STA PTBD\
\
		BRA mainLoop\
\
LED:\
		;toggles PTB0 if expected message is received, TEST CODE\
		LDA PTBD\
		EOR #%00000001\
		STA PTBD\
		STA IIC_MSG	;load accumulator into message location to clear it preventing\
		;the pin to toggle continuously after 1 message\
		BRA mainLoop\
\
IIC_Startup_slave:\
	;initialize slave settings\
\
	;set baud rate 50kbps\
	LDA #%10000111\
	STA IICF\
	;set slave address\
	LDA #$10\
	STA IICA\
	;enable IIC and Interrupts\
	BSET IICC_IICEN, IICC\
	BSET IICC_IICIE, IICC\
	BCLR IICC_MST, IICC\
	RTS\
\
_Viic:\
	;actual interrupt call\
	\
	;clear interrupt\
	BSET IICS_IICIF, IICS\
	;master mode?\
	LDA IICC\
	AND #%00100000\
	BEQ _Viic_slave	;yes\
	;no\
	RTI\
\
_Viic_slave:\
	;check if arbitration lost\
\
	;Arbitration lost?\
	LDA IICS\
	AND #%00010000\
	BEQ _Viic_slave_iaas	;no\
	BCLR 4, IICS	;if yes, clear arbitration lost bit\
	BRA _Viic_slave_iias2\
\
_Viic_slave_iaas:\
	;check if IAAS = 1\
\
	;Addressed as slave?\
	LDA IICS\
	AND #%01000000\
	BNE _Viic_slave_srw	;yes\
	BRA _Viic_slave_txRx	;no\
\
_Viic_slave_iaas2:\
	;also checks if IAAS = 1\
\
	;Addressed as slave?\
	LDA IICS\
	AND #%01000000\
	BNE _Viic_slave_srw	;yes\
	RTI	;if no exit\
\
_Viic_slave_srw:\
	;check if read or write\
\
	;Slave read/write\
	LDA IICS\
	AND #%00000100\
	BEQ _Viic_slave_setRx	;slave reads\
	BRA _Viic_slave_setTx	;slave writes\
\
_Viic_slave_setTx:\
	;initialize transfer mode and send data\
\
	;transmits data\
	BSET 4, IICC	;transmit mode select\
	LDX current\
	LDA IIC_MSG, X	;selects current byte of message to send\
	STA IICD	;send message\
	INCX\
	STX current	;increments current\
	RTI\
\
_Viic_slave_setRx:\
	;Initialize read mode and read IICD\
\
	;makes slave ready to receive data\
	BCLR 4, IICC	;receive mode select\
	LDA #0\
	STA current\
	LDA IICD	;dummy read\
	RTI\
\
_Viic_slave_txRx:\
	;check if device is in transmit or receive mode\
\
	LDA IICC\
	AND #%00010000\
	BEQ _Viic_slave_read	;receive\
	BRA _Viic_slave_ack	;transmit\
\
_Viic_slave_ack:\
	;check if master has acknowledged\
\
	LDA IICS\
	AND #%00000001\
	BEQ _Viic_slave_setTx	;yes, transmit next byte\
	BRA 
\f1\i Viic
\f0\i0 slave_setRx	;no, switch to receive mode\
\
_Viic_slave_read:\
	;actually read and store data\
\
	CLRH\
	LDX current\
	LDA IICD\
	STA IIC_MSG, X	;store received data in IIC_MSG\
	INCX\
	STX current	;increment current\
	RTI\
\
\
}