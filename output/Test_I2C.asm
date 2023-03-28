;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module Test_I2C
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _NumberOfFields
	.globl _DS1307
	.globl _main
	.globl _I2C_read
	.globl _I2C_requestFrom
	.globl _I2C_endTransmission
	.globl _I2C_write
	.globl _I2C_beginTransmission
	.globl _I2C_begin
	.globl _UART0_printNum
	.globl _UART0_println
	.globl _UART0_print
	.globl _UART0_begin
	.globl __delay_ms
	.globl _eiph1
	.globl _eip1
	.globl _pmd
	.globl _pmen
	.globl _pdtcnt
	.globl _pdten
	.globl _scon_1
	.globl _eiph
	.globl _aindids
	.globl _spdr
	.globl _spsr
	.globl _spcr2
	.globl _spcr
	.globl _capcon4
	.globl _capcon3
	.globl _b
	.globl _eip
	.globl _c2h
	.globl _c2l
	.globl _pif
	.globl _pipen
	.globl _pinen
	.globl _picon
	.globl _adccon0
	.globl _c1h
	.globl _c1l
	.globl _c0h
	.globl _c0l
	.globl _adcdly
	.globl _adccon2
	.globl _adccon1
	.globl _acc
	.globl _pwmcon1
	.globl _piocon0
	.globl _pwm3l
	.globl _pwm2l
	.globl _pwm1l
	.globl _pwm0l
	.globl _pwmpl
	.globl _pwmcon0
	.globl _fbd
	.globl _pnp
	.globl _pwm3h
	.globl _pwm2h
	.globl _pwm1h
	.globl _pwm0h
	.globl _pwmph
	.globl _psw
	.globl _adcmph
	.globl _adcmpl
	.globl _pwm5l
	.globl _th2
	.globl _pwm4l
	.globl _tl2
	.globl _rcmp2h
	.globl _rcmp2l
	.globl _t2mod
	.globl _t2con
	.globl _ta
	.globl _piocon1
	.globl _rh3
	.globl _pwm5h
	.globl _rl3
	.globl _pwm4h
	.globl _t3con
	.globl _adcrh
	.globl _adcrl
	.globl _i2addr
	.globl _i2con
	.globl _i2toc
	.globl _i2clk
	.globl _i2stat
	.globl _i2dat
	.globl _saddr_1
	.globl _saden_1
	.globl _saden
	.globl _ip
	.globl _pwmintc
	.globl _iph
	.globl _p2s
	.globl _p1sr
	.globl _p1m2
	.globl _p1s
	.globl _p1m1
	.globl _p0sr
	.globl _p0m2
	.globl _p0s
	.globl _p0m1
	.globl _p3
	.globl _iapcn
	.globl _iapfd
	.globl _p3sr
	.globl _p3m2
	.globl _p3s
	.globl _p3m1
	.globl _bodcon1
	.globl _wdcon
	.globl _saddr
	.globl _ie
	.globl _iapah
	.globl _iapal
	.globl _iapuen
	.globl _iaptrg
	.globl _bodcon0
	.globl _auxr1
	.globl _p2
	.globl _chpcon
	.globl _eie1
	.globl _eie
	.globl _sbuf_1
	.globl _sbuf
	.globl _scon
	.globl _cken
	.globl _ckswt
	.globl _ckdiv
	.globl _capcon2
	.globl _capcon1
	.globl _capcon0
	.globl _sfrs
	.globl _p1
	.globl _wkcon
	.globl _ckcon
	.globl _th1
	.globl _th0
	.globl _tl1
	.globl _tl0
	.globl _tmod
	.globl _tcon
	.globl _pcon
	.globl _rwk
	.globl _rctrim1
	.globl _rctrim0
	.globl _dph
	.globl _dpl
	.globl _sp
	.globl _p0
	.globl _setTime_PARM_7
	.globl _setTime_PARM_6
	.globl _setTime_PARM_5
	.globl _setTime_PARM_4
	.globl _setTime_PARM_3
	.globl _setTime_PARM_2
	.globl _year
	.globl _month
	.globl _wday
	.globl _day
	.globl _hour
	.globl _minute
	.globl _second
	.globl _readDS1307
	.globl _bcd2dec
	.globl _dec2bcd
	.globl _digitalClockDisplay
	.globl _printDigits
	.globl _setTime
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_p0	=	0x0080
_sp	=	0x0081
_dpl	=	0x0082
_dph	=	0x0083
_rctrim0	=	0x0084
_rctrim1	=	0x0085
_rwk	=	0x0086
_pcon	=	0x0087
_tcon	=	0x0088
_tmod	=	0x0089
_tl0	=	0x008a
_tl1	=	0x008b
_th0	=	0x008c
_th1	=	0x008d
_ckcon	=	0x008e
_wkcon	=	0x008f
_p1	=	0x0090
_sfrs	=	0x0091
_capcon0	=	0x0092
_capcon1	=	0x0093
_capcon2	=	0x0094
_ckdiv	=	0x0095
_ckswt	=	0x0096
_cken	=	0x0097
_scon	=	0x0098
_sbuf	=	0x0099
_sbuf_1	=	0x009a
_eie	=	0x009b
_eie1	=	0x009c
_chpcon	=	0x009f
_p2	=	0x00a0
_auxr1	=	0x00a2
_bodcon0	=	0x00a3
_iaptrg	=	0x00a4
_iapuen	=	0x00a5
_iapal	=	0x00a6
_iapah	=	0x00a7
_ie	=	0x00a8
_saddr	=	0x00a9
_wdcon	=	0x00aa
_bodcon1	=	0x00ab
_p3m1	=	0x00ac
_p3s	=	0x00ac
_p3m2	=	0x00ad
_p3sr	=	0x00ad
_iapfd	=	0x00ae
_iapcn	=	0x00af
_p3	=	0x00b0
_p0m1	=	0x00b1
_p0s	=	0x00b1
_p0m2	=	0x00b2
_p0sr	=	0x00b2
_p1m1	=	0x00b3
_p1s	=	0x00b3
_p1m2	=	0x00b4
_p1sr	=	0x00b4
_p2s	=	0x00b5
_iph	=	0x00b7
_pwmintc	=	0x00b7
_ip	=	0x00b8
_saden	=	0x00b9
_saden_1	=	0x00ba
_saddr_1	=	0x00bb
_i2dat	=	0x00bc
_i2stat	=	0x00bd
_i2clk	=	0x00be
_i2toc	=	0x00bf
_i2con	=	0x00c0
_i2addr	=	0x00c1
_adcrl	=	0x00c2
_adcrh	=	0x00c3
_t3con	=	0x00c4
_pwm4h	=	0x00c4
_rl3	=	0x00c5
_pwm5h	=	0x00c5
_rh3	=	0x00c6
_piocon1	=	0x00c6
_ta	=	0x00c7
_t2con	=	0x00c8
_t2mod	=	0x00c9
_rcmp2l	=	0x00ca
_rcmp2h	=	0x00cb
_tl2	=	0x00cc
_pwm4l	=	0x00cc
_th2	=	0x00cd
_pwm5l	=	0x00cd
_adcmpl	=	0x00ce
_adcmph	=	0x00cf
_psw	=	0x00d0
_pwmph	=	0x00d1
_pwm0h	=	0x00d2
_pwm1h	=	0x00d3
_pwm2h	=	0x00d4
_pwm3h	=	0x00d5
_pnp	=	0x00d6
_fbd	=	0x00d7
_pwmcon0	=	0x00d8
_pwmpl	=	0x00d9
_pwm0l	=	0x00da
_pwm1l	=	0x00db
_pwm2l	=	0x00dc
_pwm3l	=	0x00dd
_piocon0	=	0x00de
_pwmcon1	=	0x00df
_acc	=	0x00e0
_adccon1	=	0x00e1
_adccon2	=	0x00e2
_adcdly	=	0x00e3
_c0l	=	0x00e4
_c0h	=	0x00e5
_c1l	=	0x00e6
_c1h	=	0x00e7
_adccon0	=	0x00e8
_picon	=	0x00e9
_pinen	=	0x00ea
_pipen	=	0x00eb
_pif	=	0x00ec
_c2l	=	0x00ed
_c2h	=	0x00ee
_eip	=	0x00ef
_b	=	0x00f0
_capcon3	=	0x00f1
_capcon4	=	0x00f2
_spcr	=	0x00f3
_spcr2	=	0x00f3
_spsr	=	0x00f4
_spdr	=	0x00f5
_aindids	=	0x00f6
_eiph	=	0x00f7
_scon_1	=	0x00f8
_pdten	=	0x00f9
_pdtcnt	=	0x00fa
_pmen	=	0x00fb
_pmd	=	0x00fc
_eip1	=	0x00fe
_eiph1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_second::
	.ds 2
_minute::
	.ds 2
_hour::
	.ds 2
_day::
	.ds 2
_wday::
	.ds 2
_month::
	.ds 2
_year::
	.ds 2
_setTime_PARM_2:
	.ds 1
_setTime_PARM_3:
	.ds 1
_setTime_PARM_4:
	.ds 1
_setTime_PARM_5:
	.ds 1
_setTime_PARM_6:
	.ds 1
_setTime_PARM_7:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./Test_I2C.c:30: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./Test_I2C.c:33: I2C_begin();
	lcall	_I2C_begin
;	./Test_I2C.c:35: setTime(12, 30, 45, 1, 8, 2, 15); // 12:30:45 CN 08-02-2015
	mov	_setTime_PARM_2,#0x1e
	mov	_setTime_PARM_3,#0x2d
	mov	_setTime_PARM_4,#0x01
	mov	_setTime_PARM_5,#0x08
	mov	_setTime_PARM_6,#0x02
	mov	_setTime_PARM_7,#0x0f
	mov	dpl,#0x0c
	lcall	_setTime
;	./Test_I2C.c:36: UART0_begin(BAUD_115200);
	mov	dpl,#0xf7
	lcall	_UART0_begin
;	./Test_I2C.c:37: while (1)
00102$:
;	./Test_I2C.c:41: readDS1307();
	lcall	_readDS1307
;	./Test_I2C.c:43: digitalClockDisplay();
	lcall	_digitalClockDisplay
;	./Test_I2C.c:44: _delay_ms(600);
	mov	dptr,#0x0258
	clr	a
	mov	b,a
	lcall	__delay_ms
;	./Test_I2C.c:46: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'readDS1307'
;------------------------------------------------------------
;	./Test_I2C.c:48: void readDS1307()
;	-----------------------------------------
;	 function readDS1307
;	-----------------------------------------
_readDS1307:
;	./Test_I2C.c:50: I2C_beginTransmission(DS1307);
	mov	dptr,#_DS1307
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_I2C_beginTransmission
;	./Test_I2C.c:51: I2C_write((uint8_t)0x00);
	mov	dpl,#0x00
	lcall	_I2C_write
;	./Test_I2C.c:52: I2C_endTransmission();
	lcall	_I2C_endTransmission
;	./Test_I2C.c:53: I2C_requestFrom(DS1307, NumberOfFields);
	mov	dptr,#_DS1307
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_NumberOfFields
	clr	a
	movc	a,@a+dptr
	mov	_I2C_requestFrom_PARM_2,a
	mov	dpl,r7
	lcall	_I2C_requestFrom
;	./Test_I2C.c:55: second = bcd2dec(I2C_read() & 0x7f);
	lcall	_I2C_read
	mov	a,dpl
	anl	a,#0x7f
	mov	dpl,a
	lcall	_bcd2dec
	mov	_second,dpl
	mov	(_second + 1),dph
;	./Test_I2C.c:56: minute = bcd2dec(I2C_read());
	lcall	_I2C_read
	lcall	_bcd2dec
	mov	_minute,dpl
	mov	(_minute + 1),dph
;	./Test_I2C.c:57: hour = bcd2dec(I2C_read() & 0x3f); // chế độ 24h.
	lcall	_I2C_read
	mov	a,dpl
	anl	a,#0x3f
	mov	dpl,a
	lcall	_bcd2dec
	mov	_hour,dpl
	mov	(_hour + 1),dph
;	./Test_I2C.c:58: wday = bcd2dec(I2C_read());
	lcall	_I2C_read
	lcall	_bcd2dec
	mov	_wday,dpl
	mov	(_wday + 1),dph
;	./Test_I2C.c:59: day = bcd2dec(I2C_read());
	lcall	_I2C_read
	lcall	_bcd2dec
	mov	_day,dpl
	mov	(_day + 1),dph
;	./Test_I2C.c:60: month = bcd2dec(I2C_read());
	lcall	_I2C_read
	lcall	_bcd2dec
	mov	_month,dpl
	mov	(_month + 1),dph
;	./Test_I2C.c:61: year = bcd2dec(I2C_read());
	lcall	_I2C_read
	lcall	_bcd2dec
	mov	_year,dpl
	mov	(_year + 1),dph
;	./Test_I2C.c:62: year += 2000;
	mov	a,#0xd0
	add	a,_year
	mov	_year,a
	mov	a,#0x07
	addc	a,(_year + 1)
	mov	(_year + 1),a
;	./Test_I2C.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd2dec'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	./Test_I2C.c:65: int bcd2dec(uint8_t num)
;	-----------------------------------------
;	 function bcd2dec
;	-----------------------------------------
_bcd2dec:
	mov	r7,dpl
;	./Test_I2C.c:67: return ((num / 16 * 10) + (num % 16));
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x10
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
;	./Test_I2C.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec2bcd'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	./Test_I2C.c:70: int dec2bcd(uint8_t num)
;	-----------------------------------------
;	 function dec2bcd
;	-----------------------------------------
_dec2bcd:
	mov	r7,dpl
;	./Test_I2C.c:72: return ((num / 10 * 16) + (num % 10));
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r5
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
;	./Test_I2C.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'digitalClockDisplay'
;------------------------------------------------------------
;	./Test_I2C.c:75: void digitalClockDisplay()
;	-----------------------------------------
;	 function digitalClockDisplay
;	-----------------------------------------
_digitalClockDisplay:
;	./Test_I2C.c:78: UART0_printNum(hour);
	mov	r4,_hour
	mov	a,(_hour + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_UART0_printNum
;	./Test_I2C.c:79: printDigits(minute);
	mov	dpl,_minute
	mov	dph,(_minute + 1)
	lcall	_printDigits
;	./Test_I2C.c:80: printDigits(second);
	mov	dpl,_second
	mov	dph,(_second + 1)
	lcall	_printDigits
;	./Test_I2C.c:81: UART0_print(" ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UART0_print
;	./Test_I2C.c:82: UART0_printNum(day);
	mov	r4,_day
	mov	a,(_day + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_UART0_printNum
;	./Test_I2C.c:83: UART0_print(" ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UART0_print
;	./Test_I2C.c:84: UART0_printNum(month);
	mov	r4,_month
	mov	a,(_month + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_UART0_printNum
;	./Test_I2C.c:85: UART0_print(" ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UART0_print
;	./Test_I2C.c:86: UART0_printNum(year);
	mov	r4,_year
	mov	a,(_year + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_UART0_printNum
;	./Test_I2C.c:87: UART0_println("");
	mov	dptr,#___str_1
	mov	b,#0x80
;	./Test_I2C.c:88: }
	ljmp	_UART0_println
;------------------------------------------------------------
;Allocation info for local variables in function 'printDigits'
;------------------------------------------------------------
;digits                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	./Test_I2C.c:90: void printDigits(int digits)
;	-----------------------------------------
;	 function printDigits
;	-----------------------------------------
_printDigits:
	mov	r6,dpl
	mov	r7,dph
;	./Test_I2C.c:93: UART0_print(":");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_UART0_print
	pop	ar6
	pop	ar7
;	./Test_I2C.c:95: if (digits < 10)
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	./Test_I2C.c:96: UART0_print("0");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_UART0_print
	pop	ar6
	pop	ar7
00102$:
;	./Test_I2C.c:97: UART0_printNum(digits);
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
;	./Test_I2C.c:98: }
	ljmp	_UART0_printNum
;------------------------------------------------------------
;Allocation info for local variables in function 'setTime'
;------------------------------------------------------------
;min                       Allocated with name '_setTime_PARM_2'
;sec                       Allocated with name '_setTime_PARM_3'
;wd                        Allocated with name '_setTime_PARM_4'
;d                         Allocated with name '_setTime_PARM_5'
;mth                       Allocated with name '_setTime_PARM_6'
;yr                        Allocated with name '_setTime_PARM_7'
;hr                        Allocated to registers r7 
;------------------------------------------------------------
;	./Test_I2C.c:101: void setTime(uint8_t hr, uint8_t min, uint8_t sec, uint8_t wd, uint8_t d, uint8_t mth, uint8_t yr)
;	-----------------------------------------
;	 function setTime
;	-----------------------------------------
_setTime:
	mov	r7,dpl
;	./Test_I2C.c:103: I2C_beginTransmission(DS1307);
	mov	dptr,#_DS1307
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_I2C_beginTransmission
;	./Test_I2C.c:104: I2C_write(0x00); // đặt lại pointer
	mov	dpl,#0x00
	lcall	_I2C_write
;	./Test_I2C.c:105: I2C_write(dec2bcd(sec));
	mov	dpl,_setTime_PARM_3
	lcall	_dec2bcd
	lcall	_I2C_write
;	./Test_I2C.c:106: I2C_write(dec2bcd(min));
	mov	dpl,_setTime_PARM_2
	lcall	_dec2bcd
	lcall	_I2C_write
	pop	ar7
;	./Test_I2C.c:107: I2C_write(dec2bcd(hr));
	mov	dpl,r7
	lcall	_dec2bcd
	lcall	_I2C_write
;	./Test_I2C.c:108: I2C_write(dec2bcd(wd)); // day of week: Sunday = 1, Saturday = 7
	mov	dpl,_setTime_PARM_4
	lcall	_dec2bcd
	lcall	_I2C_write
;	./Test_I2C.c:109: I2C_write(dec2bcd(d));
	mov	dpl,_setTime_PARM_5
	lcall	_dec2bcd
	lcall	_I2C_write
;	./Test_I2C.c:110: I2C_write(dec2bcd(mth));
	mov	dpl,_setTime_PARM_6
	lcall	_dec2bcd
	lcall	_I2C_write
;	./Test_I2C.c:111: I2C_write(dec2bcd(yr));
	mov	dpl,_setTime_PARM_7
	lcall	_dec2bcd
	lcall	_I2C_write
;	./Test_I2C.c:112: I2C_endTransmission();
;	./Test_I2C.c:113: }
	ljmp	_I2C_endTransmission
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DS1307:
	.db #0x68	; 104	'h'
_NumberOfFields:
	.db #0x07	; 7
___str_0:
	.ascii " "
	.db 0x00
___str_1:
	.db 0x00
___str_2:
	.ascii ":"
	.db 0x00
___str_3:
	.ascii "0"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
