;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module N76_I2C
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timeOut
	.globl _xRamInc
	.globl _xRamWrite
	.globl _xRamRead
	.globl __delay_us
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
	.globl _I2C_requestFrom_PARM_2
	.globl _I2C_writeBuffer_PARM_2
	.globl _t
	.globl _I2C_begin
	.globl _I2C_beginTransmission
	.globl _I2C_write
	.globl _I2C_writeBuffer
	.globl _I2C_endTransmission
	.globl _I2C_requestFrom
	.globl _I2C_read
	.globl _I2C_available
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
_t::
	.ds 1
_I2C_writeBuffer_PARM_2:
	.ds 1
_I2C_requestFrom_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	./src/N76_I2C.c:10: uint8_t t = 0;
	mov	_t,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timeOut'
;------------------------------------------------------------
;	./src/N76_I2C.c:20: uint8_t timeOut(void)
;	-----------------------------------------
;	 function timeOut
;	-----------------------------------------
_timeOut:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/N76_I2C.c:22: _delay_us(100);
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	__delay_us
;	./src/N76_I2C.c:23: if (++t > 10)
	inc	_t
	mov	a,_t
	add	a,#0xff - 0x0a
	jnc	00102$
;	./src/N76_I2C.c:24: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	./src/N76_I2C.c:25: return 0;
	mov	dpl,#0x00
;	./src/N76_I2C.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_begin'
;------------------------------------------------------------
;	./src/N76_I2C.c:28: void I2C_begin()
;	-----------------------------------------
;	 function I2C_begin
;	-----------------------------------------
_I2C_begin:
;	./src/N76_I2C.c:30: setb(P1M1, 3); // set P1.3 as open drain
	orl	_p1m1,#0x08
;	./src/N76_I2C.c:31: setb(P1M2, 3);
	orl	_p1m2,#0x08
;	./src/N76_I2C.c:32: setb(P1M1, 4); // set P1.4 as open drain
	orl	_p1m1,#0x10
;	./src/N76_I2C.c:33: setb(P1M2, 4);
	orl	_p1m2,#0x10
;	./src/N76_I2C.c:36: I2CLK = I2C_CLOCK; // I2C clock = Fsys/(4*(I2CLK+1))
	mov	_i2clk,#0x27
;	./src/N76_I2C.c:39: setb(I2CON, I2CEN); // set_I2CEN;
	orl	_i2con,#0x40
;	./src/N76_I2C.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_beginTransmission'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_I2C.c:42: uint8_t I2C_beginTransmission(uint8_t addr)
;	-----------------------------------------
;	 function I2C_beginTransmission
;	-----------------------------------------
_I2C_beginTransmission:
	mov	r7,dpl
;	./src/N76_I2C.c:44: xRamWrite(XRAM_I2C_TX_IDX, 0);
	mov	_xRamWrite_PARM_2,#0x00
	mov	dptr,#0x02bc
	push	ar7
	lcall	_xRamWrite
;	./src/N76_I2C.c:45: xRamWrite(XRAM_I2C_TX_LEN, 0);
	mov	_xRamWrite_PARM_2,#0x00
	mov	dptr,#0x02bd
	lcall	_xRamWrite
	pop	ar7
;	./src/N76_I2C.c:54: setb(I2CON, STA);
	orl	_i2con,#0x20
;	./src/N76_I2C.c:55: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:57: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:59: while (inbit(I2CON, SI) == 0)
00103$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r6,a
	jnz	00105$
;	./src/N76_I2C.c:60: if (timeOut())
	push	ar7
	lcall	_timeOut
	mov	a,dpl
	pop	ar7
	jz	00103$
;	./src/N76_I2C.c:61: return 2;
	mov	dpl,#0x02
	ret
00105$:
;	./src/N76_I2C.c:65: I2DAT = (addr << 1) | I2C_WRITE;
	mov	a,r7
	add	a,r7
	mov	_i2dat,a
;	./src/N76_I2C.c:67: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:69: clrb(I2CON, STA);
	anl	_i2con,#0xdf
;	./src/N76_I2C.c:70: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:71: while (inbit(I2CON, SI) == 0)
00108$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	jnz	00110$
;	./src/N76_I2C.c:72: if (timeOut())
	lcall	_timeOut
	mov	a,dpl
	jz	00108$
;	./src/N76_I2C.c:73: return 3;
	mov	dpl,#0x03
	ret
00110$:
;	./src/N76_I2C.c:75: return 0;
	mov	dpl,#0x00
;	./src/N76_I2C.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_write'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_I2C.c:78: void I2C_write(uint8_t data)
;	-----------------------------------------
;	 function I2C_write
;	-----------------------------------------
_I2C_write:
	mov	r7,dpl
;	./src/N76_I2C.c:81: xRamWrite(xRamRead(XRAM_I2C_TX_IDX)+XRAM_I2C_TX_BUFF,data);
	mov	dptr,#0x02bc
	push	ar7
	lcall	_xRamRead
	mov	r6,dpl
	pop	ar7
	mov	r5,#0x00
	mov	a,#0xc0
	add	a,r6
	mov	r6,a
	mov	a,#0x02
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	mov	_xRamWrite_PARM_2,r7
	lcall	_xRamWrite
;	./src/N76_I2C.c:82: xRamInc(XRAM_I2C_TX_IDX);
	mov	dptr,#0x02bc
	lcall	_xRamInc
;	./src/N76_I2C.c:83: xRamWrite(XRAM_I2C_TX_LEN, xRamRead(XRAM_I2C_TX_IDX));
	mov	dptr,#0x02bc
	lcall	_xRamRead
	mov	_xRamWrite_PARM_2,dpl
	mov	dptr,#0x02bd
;	./src/N76_I2C.c:84: }
	ljmp	_xRamWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_writeBuffer'
;------------------------------------------------------------
;len                       Allocated with name '_I2C_writeBuffer_PARM_2'
;data                      Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/N76_I2C.c:86: void I2C_writeBuffer(uint8_t *data, uint8_t len)
;	-----------------------------------------
;	 function I2C_writeBuffer
;	-----------------------------------------
_I2C_writeBuffer:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/N76_I2C.c:88: uint8_t i = 0;
	mov	r4,#0x00
00103$:
;	./src/N76_I2C.c:89: for (; i < len; ++i)
	clr	c
	mov	a,r4
	subb	a,_I2C_writeBuffer_PARM_2
	jnc	00105$
;	./src/N76_I2C.c:91: I2C_write(data[i]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_I2C_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/N76_I2C.c:89: for (; i < len; ++i)
	inc	r4
	sjmp	00103$
00105$:
;	./src/N76_I2C.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_endTransmission'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_I2C.c:95: uint8_t I2C_endTransmission(void)
;	-----------------------------------------
;	 function I2C_endTransmission
;	-----------------------------------------
_I2C_endTransmission:
;	./src/N76_I2C.c:99: for (i = 0; i < xRamRead(XRAM_I2C_TX_LEN); ++i)
	mov	r7,#0x00
00113$:
	mov	dptr,#0x02bd
	push	ar7
	lcall	_xRamRead
	mov	r6,dpl
	pop	ar7
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00106$
;	./src/N76_I2C.c:103: I2DAT = xRamRead(XRAM_I2C_TX_BUFF+i);
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0xc0
	add	a,r5
	mov	r5,a
	mov	a,#0x02
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	_xRamRead
	mov	_i2dat,dpl
	pop	ar7
;	./src/N76_I2C.c:106: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:107: clrb(I2CON, STA);
	anl	_i2con,#0xdf
;	./src/N76_I2C.c:108: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:109: while (inbit(I2CON, SI) == 0)
00103$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r6,a
	jnz	00114$
;	./src/N76_I2C.c:110: if (timeOut())
	push	ar7
	lcall	_timeOut
	mov	a,dpl
	pop	ar7
	jz	00103$
;	./src/N76_I2C.c:111: return 1;
	mov	dpl,#0x01
	ret
00114$:
;	./src/N76_I2C.c:99: for (i = 0; i < xRamRead(XRAM_I2C_TX_LEN); ++i)
	inc	r7
	sjmp	00113$
00106$:
;	./src/N76_I2C.c:116: setb(I2CON, STO);
	orl	_i2con,#0x10
;	./src/N76_I2C.c:117: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:120: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:121: while (inbit(I2CON, STO) == 1)
00109$:
	mov	a,#0x10
	anl	a,_i2con
	swap	a
	anl	a,#0x0f
	mov	r7,a
	cjne	r7,#0x01,00111$
;	./src/N76_I2C.c:122: if (timeOut())
	lcall	_timeOut
	mov	a,dpl
	jz	00109$
;	./src/N76_I2C.c:123: return 3;
	mov	dpl,#0x03
	ret
00111$:
;	./src/N76_I2C.c:129: return 0;
	mov	dpl,#0x00
;	./src/N76_I2C.c:130: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_requestFrom'
;------------------------------------------------------------
;len                       Allocated with name '_I2C_requestFrom_PARM_2'
;addr                      Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_I2C.c:132: uint8_t I2C_requestFrom(uint8_t addr, uint8_t len)
;	-----------------------------------------
;	 function I2C_requestFrom
;	-----------------------------------------
_I2C_requestFrom:
	mov	r7,dpl
;	./src/N76_I2C.c:135: xRamWrite(XRAM_I2C_RX_LEN, len);
	mov	_xRamWrite_PARM_2,_I2C_requestFrom_PARM_2
	mov	dptr,#0x02bf
	push	ar7
	lcall	_xRamWrite
;	./src/N76_I2C.c:136: xRamWrite(XRAM_I2C_RX_IDX, 0);
	mov	_xRamWrite_PARM_2,#0x00
	mov	dptr,#0x02be
	lcall	_xRamWrite
	pop	ar7
;	./src/N76_I2C.c:145: setb(I2CON, STA);
	orl	_i2con,#0x20
;	./src/N76_I2C.c:146: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:149: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:150: while (inbit(I2CON, SI) == 0)
00103$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r6,a
	jnz	00105$
;	./src/N76_I2C.c:151: if (timeOut())
	push	ar7
	lcall	_timeOut
	mov	a,dpl
	pop	ar7
	jz	00103$
;	./src/N76_I2C.c:152: return 2;
	mov	dpl,#0x02
	ret
00105$:
;	./src/N76_I2C.c:155: I2DAT = (addr << 1) | I2C_READ;
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	mov	_i2dat,a
;	./src/N76_I2C.c:156: clrb(I2CON, STA);
	anl	_i2con,#0xdf
;	./src/N76_I2C.c:157: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:160: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:161: while (inbit(I2CON, SI) == 0)
00108$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	jnz	00142$
;	./src/N76_I2C.c:162: if (timeOut())
	lcall	_timeOut
	mov	a,dpl
	jz	00108$
;	./src/N76_I2C.c:163: return 3;
	mov	dpl,#0x03
	ret
;	./src/N76_I2C.c:166: for (i = 0; i < xRamRead(XRAM_I2C_RX_LEN) - 1; i++)
00142$:
	mov	r7,#0x00
00128$:
	mov	dptr,#0x02bf
	push	ar7
	lcall	_xRamRead
	mov	r6,dpl
	pop	ar7
	mov	r5,#0x00
	dec	r6
	cjne	r6,#0xff,00204$
	dec	r5
00204$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
;	./src/N76_I2C.c:170: setb(I2CON, AA);
	orl	_i2con,#0x04
;	./src/N76_I2C.c:171: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:173: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:174: while (inbit(I2CON, SI) == 0)
00113$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	jnz	00115$
;	./src/N76_I2C.c:175: if (timeOut())
	push	ar7
	lcall	_timeOut
	mov	a,dpl
	pop	ar7
	jz	00113$
;	./src/N76_I2C.c:176: return 4;
	mov	dpl,#0x04
	ret
00115$:
;	./src/N76_I2C.c:178: xRamWrite(XRAM_I2C_RX_BUFF+i,I2DAT);
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0xe0
	add	a,r5
	mov	r5,a
	mov	a,#0x02
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	_xRamWrite_PARM_2,_i2dat
	push	ar7
	lcall	_xRamWrite
	pop	ar7
;	./src/N76_I2C.c:166: for (i = 0; i < xRamRead(XRAM_I2C_RX_LEN) - 1; i++)
	inc	r7
	sjmp	00128$
00116$:
;	./src/N76_I2C.c:182: clrb(I2CON, AA);
	anl	_i2con,#0xfb
;	./src/N76_I2C.c:183: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:185: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:186: while (inbit(I2CON, SI) == 0)
00119$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	jnz	00121$
;	./src/N76_I2C.c:187: if (timeOut())
	lcall	_timeOut
	mov	a,dpl
	jz	00119$
;	./src/N76_I2C.c:188: return 5;
	mov	dpl,#0x05
	ret
00121$:
;	./src/N76_I2C.c:190: xRamWrite(XRAM_I2C_RX_BUFF+xRamRead(XRAM_I2C_RX_LEN) - 1,I2DAT);
	mov	dptr,#0x02bf
	lcall	_xRamRead
	mov	r7,dpl
	mov	r6,#0x00
	mov	a,#0xdf
	add	a,r7
	mov	r7,a
	mov	a,#0x02
	addc	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	_xRamWrite_PARM_2,_i2dat
	lcall	_xRamWrite
;	./src/N76_I2C.c:193: setb(I2CON, STO);
	orl	_i2con,#0x10
;	./src/N76_I2C.c:194: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_I2C.c:197: t = 0;
	mov	_t,#0x00
;	./src/N76_I2C.c:198: while (inbit(I2CON, STO) == 1)
00124$:
	mov	a,#0x10
	anl	a,_i2con
	swap	a
	anl	a,#0x0f
	mov	r7,a
	cjne	r7,#0x01,00126$
;	./src/N76_I2C.c:199: if (timeOut())
	lcall	_timeOut
	mov	a,dpl
	jz	00124$
;	./src/N76_I2C.c:200: return 6;
	mov	dpl,#0x06
	ret
00126$:
;	./src/N76_I2C.c:205: return 0;
	mov	dpl,#0x00
;	./src/N76_I2C.c:206: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_read'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_I2C.c:208: uint8_t I2C_read(void)
;	-----------------------------------------
;	 function I2C_read
;	-----------------------------------------
_I2C_read:
;	./src/N76_I2C.c:210: int8_t value = -1;
	mov	r7,#0xff
;	./src/N76_I2C.c:212: if (xRamRead(XRAM_I2C_RX_IDX) < xRamRead(XRAM_I2C_RX_LEN))
	mov	dptr,#0x02be
	push	ar7
	lcall	_xRamRead
	mov	r6,dpl
	mov	dptr,#0x02bf
	push	ar6
	lcall	_xRamRead
	mov	r5,dpl
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00102$
;	./src/N76_I2C.c:215: value = xRamRead(xRamRead(XRAM_I2C_RX_IDX)+XRAM_I2C_RX_BUFF);
	mov	dptr,#0x02be
	lcall	_xRamRead
	mov	r6,dpl
	mov	r5,#0x00
	mov	a,#0xe0
	add	a,r6
	mov	r6,a
	mov	a,#0x02
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	lcall	_xRamRead
	mov	r7,dpl
;	./src/N76_I2C.c:216: xRamInc(XRAM_I2C_RX_IDX);
	mov	dptr,#0x02be
	push	ar7
	lcall	_xRamInc
	pop	ar7
00102$:
;	./src/N76_I2C.c:218: return value;
	mov	dpl,r7
;	./src/N76_I2C.c:219: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_available'
;------------------------------------------------------------
;	./src/N76_I2C.c:221: int16_t I2C_available()
;	-----------------------------------------
;	 function I2C_available
;	-----------------------------------------
_I2C_available:
;	./src/N76_I2C.c:223: return xRamRead(XRAM_I2C_RX_LEN) - xRamRead(XRAM_I2C_RX_IDX);
	mov	dptr,#0x02bf
	lcall	_xRamRead
	mov	r7,dpl
	mov	r6,#0x00
	mov	dptr,#0x02be
	push	ar7
	push	ar6
	lcall	_xRamRead
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r7
	clr	c
	subb	a,r5
	mov	r7,a
	mov	a,r6
	subb	a,r4
;	./src/N76_I2C.c:224: }
	mov	dpl,r7
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
