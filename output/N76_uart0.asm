;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module N76_uart0
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _UART0_printNumln_PARM_2
	.globl _UART0_printNum_PARM_2
	.globl _UART0_begin
	.globl _UART0_putChar
	.globl _UART0_print
	.globl _UART0_println
	.globl _UART0_printNum
	.globl _UART0_printNumln
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
_UART0_printNum_PARM_2:
	.ds 1
_UART0_printNum_i_131072_37:
	.ds 1
_UART0_printNum_sloc0_1_0:
	.ds 4
_UART0_printNum_sloc1_1_0:
	.ds 4
_UART0_printNumln_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_UART0_printNum_dis_65536_31:
	.ds 20
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
;Allocation info for local variables in function 'UART0_begin'
;------------------------------------------------------------
;baud                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_uart0.c:11: void UART0_begin(uint8_t baud)
;	-----------------------------------------
;	 function UART0_begin
;	-----------------------------------------
_UART0_begin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./src/N76_uart0.c:13: P06_Quasi_Mode; // Setting UART pin as Quasi mode for transmit
	anl	_p0m1,#0xbf
	anl	_p0m2,#0xbf
;	./src/N76_uart0.c:14: P07_Quasi_Mode; // Setting UART pin as Quasi mode for transmit
	anl	_p0m1,#0x7f
	anl	_p0m2,#0x7f
;	./src/N76_uart0.c:16: TH1 = baud;	  // set baudrate
	mov	_th1,r7
;	./src/N76_uart0.c:17: SCON = 0x50;  // UART0 Mode1,REN=1,TI=1
	mov	_scon,#0x50
;	./src/N76_uart0.c:18: TMOD |= 0x20; // Timer1 Mode1
	orl	_tmod,#0x20
;	./src/N76_uart0.c:19: set_SMOD;	  // UART0 Double Rate Enable
	orl	_pcon,#0x80
;	./src/N76_uart0.c:20: set_T1M;
	orl	_ckcon,#0x10
;	./src/N76_uart0.c:21: clr_BRCK; // Serial port 0 baud rate clock source = Timer1
	anl	_t3con,#0xdf
;	./src/N76_uart0.c:22: set_TR1;
	orl	_tcon,#0x40
;	./src/N76_uart0.c:23: set_TI; // For printf function must setting TI = 1
	orl	_scon,#0x02
;	./src/N76_uart0.c:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_putChar'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_uart0.c:25: void UART0_putChar(uint8_t val)
;	-----------------------------------------
;	 function UART0_putChar
;	-----------------------------------------
_UART0_putChar:
	mov	r7,dpl
;	./src/N76_uart0.c:27: clr_TI;
	anl	_scon,#0xfd
;	./src/N76_uart0.c:28: SBUF = val;
	mov	_sbuf,r7
;	./src/N76_uart0.c:29: while (inbit(SCON, TI) == 0)
00101$:
	mov	a,#0x02
	anl	a,_scon
	clr	c
	rrc	a
	jz	00101$
;	./src/N76_uart0.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_print'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/N76_uart0.c:33: void UART0_print(char *str)
;	-----------------------------------------
;	 function UART0_print
;	-----------------------------------------
_UART0_print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/N76_uart0.c:36: while (str[i] != '\0')
	mov	r4,#0x00
00101$:
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
	jz	00104$
;	./src/N76_uart0.c:37: UART0_putChar(str[i++]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	inc	r4
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_UART0_putChar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	./src/N76_uart0.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_println'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	./src/N76_uart0.c:40: void UART0_println(char *str)
;	-----------------------------------------
;	 function UART0_println
;	-----------------------------------------
_UART0_println:
;	./src/N76_uart0.c:42: UART0_print(str);
	lcall	_UART0_print
;	./src/N76_uart0.c:43: UART0_print("\r\n");
	mov	dptr,#___str_0
	mov	b,#0x80
;	./src/N76_uart0.c:44: }
	ljmp	_UART0_print
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_printNum'
;------------------------------------------------------------
;base                      Allocated with name '_UART0_printNum_PARM_2'
;num                       Allocated to registers r4 r5 r6 r7 
;max                       Allocated to registers r6 
;flag                      Allocated to registers r2 
;i                         Allocated with name '_UART0_printNum_i_131072_37'
;sloc0                     Allocated with name '_UART0_printNum_sloc0_1_0'
;sloc1                     Allocated with name '_UART0_printNum_sloc1_1_0'
;dis                       Allocated with name '_UART0_printNum_dis_65536_31'
;------------------------------------------------------------
;	./src/N76_uart0.c:46: void UART0_printNum(int32_t num, uint8_t base)
;	-----------------------------------------
;	 function UART0_printNum
;	-----------------------------------------
_UART0_printNum:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/N76_uart0.c:49: int8_t max = 0, flag = 0; // max: index of dis array, flag: = 1 if negative
;	./src/N76_uart0.c:51: if (num == 0) // input 0
	clr	a
	mov	r3,a
	mov	r2,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00104$
;	./src/N76_uart0.c:53: dis[max++] = '0';
	mov	r3,#0x01
	mov	dptr,#_UART0_printNum_dis_65536_31
	mov	a,#0x30
	movx	@dptr,a
	sjmp	00131$
00104$:
;	./src/N76_uart0.c:55: else if (num < 0) // negative number
	mov	a,r7
	jnb	acc.7,00131$
;	./src/N76_uart0.c:57: num = 0 - num;
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
;	./src/N76_uart0.c:58: flag = 1;
	mov	r2,#0x01
;	./src/N76_uart0.c:60: while (num > 0) // convert to base number and add to dis array
00131$:
00109$:
	clr	c
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00197$
	ljmp	00138$
00197$:
;	./src/N76_uart0.c:62: if (num % base >= 10)
	mov	_UART0_printNum_sloc0_1_0,_UART0_printNum_PARM_2
	mov	(_UART0_printNum_sloc0_1_0 + 1),#0x00
	mov	(_UART0_printNum_sloc0_1_0 + 2),#0x00
	mov	(_UART0_printNum_sloc0_1_0 + 3),#0x00
	mov	__modslong_PARM_2,_UART0_printNum_sloc0_1_0
	mov	(__modslong_PARM_2 + 1),(_UART0_printNum_sloc0_1_0 + 1)
	mov	(__modslong_PARM_2 + 2),(_UART0_printNum_sloc0_1_0 + 2)
	mov	(__modslong_PARM_2 + 3),(_UART0_printNum_sloc0_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modslong
	mov	_UART0_printNum_sloc1_1_0,dpl
	mov	(_UART0_printNum_sloc1_1_0 + 1),dph
	mov	(_UART0_printNum_sloc1_1_0 + 2),b
	mov	(_UART0_printNum_sloc1_1_0 + 3),a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,_UART0_printNum_sloc1_1_0
	subb	a,#0x0a
	mov	a,(_UART0_printNum_sloc1_1_0 + 1)
	subb	a,#0x00
	mov	a,(_UART0_printNum_sloc1_1_0 + 2)
	subb	a,#0x00
	mov	a,(_UART0_printNum_sloc1_1_0 + 3)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00107$
;	./src/N76_uart0.c:63: dis[max] = num % base + 55;
	mov	a,r3
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r0
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r1
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	r1,_UART0_printNum_sloc1_1_0
	mov	a,#0x37
	add	a,r1
	mov	r1,a
	movx	@dptr,a
	sjmp	00108$
00107$:
;	./src/N76_uart0.c:65: dis[max] = num % base + 48;
	mov	a,r3
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r0
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r1
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	r1,_UART0_printNum_sloc1_1_0
	mov	a,#0x30
	add	a,r1
	mov	r1,a
	movx	@dptr,a
00108$:
;	./src/N76_uart0.c:67: num = num / base;
	mov	__divslong_PARM_2,_UART0_printNum_sloc0_1_0
	mov	(__divslong_PARM_2 + 1),(_UART0_printNum_sloc0_1_0 + 1)
	mov	(__divslong_PARM_2 + 2),(_UART0_printNum_sloc0_1_0 + 2)
	mov	(__divslong_PARM_2 + 3),(_UART0_printNum_sloc0_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar3
	push	ar2
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
;	./src/N76_uart0.c:68: max++;
	inc	r3
	ljmp	00109$
00138$:
	mov	ar7,r3
;	./src/N76_uart0.c:71: if (base == HEX) // add 0x for HEX and 0B for BIN
	mov	a,#0x10
	cjne	a,_UART0_printNum_PARM_2,00117$
;	./src/N76_uart0.c:73: if (max % 2 == 1)
	mov	a,r3
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	__modsint_PARM_2,#0x02
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r1,dpl
	mov	r4,dph
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r1,#0x01,00113$
	cjne	r4,#0x00,00113$
;	./src/N76_uart0.c:74: dis[max++] = '0';
	mov	a,r3
	inc	a
	mov	r7,a
	mov	a,r5
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r6
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
00113$:
;	./src/N76_uart0.c:76: dis[max++] = 'x';
	mov	a,r7
	mov	r6,a
	inc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r6
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r4
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	a,#0x78
	movx	@dptr,a
;	./src/N76_uart0.c:77: dis[max++] = '0';
	mov	a,r5
	mov	r6,a
	inc	a
	mov	r7,a
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r5
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
	sjmp	00118$
00117$:
;	./src/N76_uart0.c:79: else if (base == BIN)
	mov	a,#0x02
	cjne	a,_UART0_printNum_PARM_2,00118$
;	./src/N76_uart0.c:81: dis[max++] = 'B';
	mov	a,r3
	inc	a
	mov	r6,a
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r3
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r5
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	a,#0x42
	movx	@dptr,a
;	./src/N76_uart0.c:82: dis[max++] = '0';
	mov	a,r6
	mov	r5,a
	inc	a
	mov	r7,a
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r6
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
00118$:
;	./src/N76_uart0.c:85: if (flag == 1) // add minus to negative number
	cjne	r2,#0x01,00137$
;	./src/N76_uart0.c:86: dis[max++] = '-';
	mov	ar6,r7
	inc	r7
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r5
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	mov	a,#0x2d
	movx	@dptr,a
;	./src/N76_uart0.c:88: for (uint8_t i = 0; i < max / 2; i++) // revert dis array
00137$:
	mov	a,r7
	dec	a
	mov	_UART0_printNum_sloc1_1_0,a
	mov	_UART0_printNum_i_131072_37,#0x00
00123$:
	mov	a,r7
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	__divsint_PARM_2,#0x02
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar7
	mov	r0,_UART0_printNum_i_131072_37
	mov	r5,#0x00
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r5
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00121$
;	./src/N76_uart0.c:90: dis[max] = dis[i];
	push	ar7
	mov	a,r3
	add	a,#_UART0_printNum_dis_65536_31
	mov	r2,a
	mov	a,r4
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	r5,a
	mov	a,_UART0_printNum_i_131072_37
	add	a,#_UART0_printNum_dis_65536_31
	mov	r0,a
	clr	a
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r5
	movx	@dptr,a
;	./src/N76_uart0.c:91: dis[i] = dis[max - 1 - i];
	mov	r5,_UART0_printNum_i_131072_37
	mov	a,_UART0_printNum_sloc1_1_0
	clr	c
	subb	a,r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r5
	add	a,#_UART0_printNum_dis_65536_31
	mov	r5,a
	mov	a,r2
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	r2,a
	mov	dpl,r5
	mov	dph,r2
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r0
	mov	dph,r1
	movx	@dptr,a
;	./src/N76_uart0.c:92: dis[max - 1 - i] = dis[max];
	mov	dpl,r5
	mov	dph,r2
	mov	a,r7
	movx	@dptr,a
;	./src/N76_uart0.c:88: for (uint8_t i = 0; i < max / 2; i++) // revert dis array
	inc	_UART0_printNum_i_131072_37
	pop	ar7
	sjmp	00123$
00121$:
;	./src/N76_uart0.c:94: dis[max] = '\0';  // end string character
	mov	a,r3
	add	a,#_UART0_printNum_dis_65536_31
	mov	dpl,a
	mov	a,r4
	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	./src/N76_uart0.c:95: UART0_print(dis); // print dis
	mov	dptr,#_UART0_printNum_dis_65536_31
	mov	b,#0x00
;	./src/N76_uart0.c:96: }
	ljmp	_UART0_print
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_printNumln'
;------------------------------------------------------------
;base                      Allocated with name '_UART0_printNumln_PARM_2'
;num                       Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./src/N76_uart0.c:98: void UART0_printNumln(long num, uint8_t base)
;	-----------------------------------------
;	 function UART0_printNumln
;	-----------------------------------------
_UART0_printNumln:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/N76_uart0.c:100: UART0_printNum(num, base);
	mov	_UART0_printNum_PARM_2,_UART0_printNumln_PARM_2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNum
;	./src/N76_uart0.c:101: UART0_println("");
	mov	dptr,#___str_1
	mov	b,#0x80
;	./src/N76_uart0.c:102: }
	ljmp	_UART0_println
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
