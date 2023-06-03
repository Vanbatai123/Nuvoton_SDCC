;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module MS51_W25Q32
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _W25Qxx_readPage
	.globl _W25Qxx_writePage
	.globl _W25Qxx_eraseChip
	.globl _W25Qxx_readMidDid
	.globl _W25Qxx_begin
	.globl _SPI_Error
	.globl _UART0_printNumln
	.globl _UART0_printNum
	.globl _UART0_println
	.globl _UART0_print
	.globl _UART0_begin
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
	.globl _data2
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
_main_u8MID_65536_61:
	.ds 1
_main_u8DID_65536_61:
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
_data2::
	.ds 256
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
;u8MID                     Allocated with name '_main_u8MID_65536_61'
;u8DID                     Allocated with name '_main_u8DID_65536_61'
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./MS51_W25Q32.c:17: void main(void)
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
;	./MS51_W25Q32.c:20: for (int16_t i = 0; i < 256; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	mov	ar5,r7
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00101$
;	./MS51_W25Q32.c:22: data2[i] = (uint8_t)(i);
	mov	a,r6
	add	a,#_data2
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data2 >> 8)
	mov	dph,a
	mov	ar5,r6
	mov	a,r5
	movx	@dptr,a
;	./MS51_W25Q32.c:20: for (int16_t i = 0; i < 256; i++)
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
	sjmp	00113$
00101$:
;	./MS51_W25Q32.c:25: UART0_begin(BAUD_38400); /* 9600 Baud Rate*/
	mov	dpl,#0xe6
	lcall	_UART0_begin
;	./MS51_W25Q32.c:26: W25Qxx_begin();
	lcall	_W25Qxx_begin
;	./MS51_W25Q32.c:28: W25Qxx_readMidDid(&u8MID, &u8DID);
	mov	_W25Qxx_readMidDid_PARM_2,#_main_u8DID_65536_61
	mov	(_W25Qxx_readMidDid_PARM_2 + 1),#0x00
	mov	(_W25Qxx_readMidDid_PARM_2 + 2),#0x40
	mov	dptr,#_main_u8MID_65536_61
	mov	b,#0x40
	lcall	_W25Qxx_readMidDid
;	./MS51_W25Q32.c:30: UART0_printNum(u8MID, HEX);
	mov	r4,_main_u8MID_65536_61
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	_UART0_printNum_PARM_2,#0x10
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNum
;	./MS51_W25Q32.c:31: UART0_print("  ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UART0_print
;	./MS51_W25Q32.c:32: UART0_printNumln(u8DID, HEX);
	mov	r4,_main_u8DID_65536_61
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	_UART0_printNumln_PARM_2,#0x10
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNumln
;	./MS51_W25Q32.c:33: if ((u8MID != 0xEF) && (u8DID != 0x14))
	mov	a,#0xef
	cjne	a,_main_u8MID_65536_61,00156$
	sjmp	00103$
00156$:
	mov	a,#0x14
	cjne	a,_main_u8DID_65536_61,00157$
	sjmp	00103$
00157$:
;	./MS51_W25Q32.c:35: SPI_Error();
	lcall	_SPI_Error
00103$:
;	./MS51_W25Q32.c:37: UART0_println("read OK");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_UART0_println
;	./MS51_W25Q32.c:39: W25Qxx_eraseChip();
	lcall	_W25Qxx_eraseChip
;	./MS51_W25Q32.c:51: W25Qxx_writePage(256, data2);
	mov	_W25Qxx_writePage_PARM_2,#_data2
	mov	(_W25Qxx_writePage_PARM_2 + 1),#(_data2 >> 8)
	mov	(_W25Qxx_writePage_PARM_2 + 2),#0x00
	mov	dptr,#0x0100
	clr	a
	mov	b,a
	lcall	_W25Qxx_writePage
;	./MS51_W25Q32.c:62: W25Qxx_readPage(256, data2);
	mov	_W25Qxx_readPage_PARM_2,#_data2
	mov	(_W25Qxx_readPage_PARM_2 + 1),#(_data2 >> 8)
	mov	(_W25Qxx_readPage_PARM_2 + 2),#0x00
	mov	dptr,#0x0100
	clr	a
	mov	b,a
	lcall	_W25Qxx_readPage
;	./MS51_W25Q32.c:64: for (uint16_t i = 0; i < 256; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00116$:
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x100 - 0x01
	add	a,r5
	jc	00108$
;	./MS51_W25Q32.c:66: UART0_printNum(data2[i], HEX);
	mov	a,r6
	add	a,#_data2
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data2 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	_UART0_printNum_PARM_2,#0x10
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_UART0_printNum
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./MS51_W25Q32.c:67: if (i % 16 == 15)
	anl	ar4,#0x0f
	mov	r5,#0x00
	cjne	r4,#0x0f,00106$
	cjne	r5,#0x00,00106$
;	./MS51_W25Q32.c:69: UART0_println("");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_UART0_println
	pop	ar6
	pop	ar7
	sjmp	00117$
00106$:
;	./MS51_W25Q32.c:73: UART0_print(" - ");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_UART0_print
	pop	ar6
	pop	ar7
00117$:
;	./MS51_W25Q32.c:64: for (uint16_t i = 0; i < 256; i++)
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
	sjmp	00116$
00108$:
;	./MS51_W25Q32.c:91: UART0_println("/////////////");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_UART0_println
;	./MS51_W25Q32.c:110: UART0_println("");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_UART0_println
;	./MS51_W25Q32.c:112: UART0_println("\nFinished the SPI Demo Code and test pass!!!\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_UART0_println
;	./MS51_W25Q32.c:113: while (1)
00110$:
;	./MS51_W25Q32.c:115: }
	sjmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "read OK"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii " - "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "/////////////"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.ascii "Finished the SPI Demo Code and test pass!!!"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
