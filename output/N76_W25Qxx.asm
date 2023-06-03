;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module N76_W25Qxx
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART0_println
	.globl _SPI_setClockDivider
	.globl _SPI_setDataMode
	.globl _SPI_setBitOrder
	.globl _SPI_transfer
	.globl _SPI_begin
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
	.globl _W25Qxx_readBuff_PARM_3
	.globl _W25Qxx_readBuff_PARM_2
	.globl _W25Qxx_readPage_PARM_2
	.globl _W25Qxx_writeBuff_PARM_3
	.globl _W25Qxx_writeBuff_PARM_2
	.globl _W25Qxx_writePage_PARM_2
	.globl _W25Qxx_eraseSectorBlock_PARM_2
	.globl _W25Qxx_readMidDid_PARM_2
	.globl _SPI_Error
	.globl _W25Qxx_begin
	.globl _W25Qxx_writeCmd
	.globl _W25Qxx_writeAddr
	.globl _W25Qxx_readMidDid
	.globl _W25Qxx_writeEnable
	.globl _W25Qxx_writeDisable
	.globl _W25Qxx_eraseChip
	.globl _W25Qxx_eraseSectorBlock
	.globl _W25Qxx_waitIdle
	.globl _W25Qxx_eraseVerify
	.globl _W25Qxx_writePage
	.globl _W25Qxx_writeBuff
	.globl _W25Qxx_readPage
	.globl _W25Qxx_readBuff
	.globl _W25Qxx_writeVerify
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
_W25Qxx_readMidDid_PARM_2:
	.ds 3
_W25Qxx_eraseSectorBlock_PARM_2:
	.ds 2
_W25Qxx_eraseSectorBlock_cmd_65536_48:
	.ds 1
_W25Qxx_writePage_PARM_2:
	.ds 3
_W25Qxx_writeBuff_PARM_2:
	.ds 3
_W25Qxx_writeBuff_PARM_3:
	.ds 2
_W25Qxx_readPage_PARM_2:
	.ds 3
_W25Qxx_readBuff_PARM_2:
	.ds 3
_W25Qxx_readBuff_PARM_3:
	.ds 4
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
;Allocation info for local variables in function 'SPI_Error'
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:13: void SPI_Error(void)
;	-----------------------------------------
;	 function SPI_Error
;	-----------------------------------------
_SPI_Error:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/N76_W25Qxx.c:15: UART0_println("\n*  SPI Error, please check the connection between MCU and SPI Flash");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UART0_println
;	./src/N76_W25Qxx.c:16: while (1)
00102$:
;	./src/N76_W25Qxx.c:18: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_begin'
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:20: void W25Qxx_begin(void)
;	-----------------------------------------
;	 function W25Qxx_begin
;	-----------------------------------------
_W25Qxx_begin:
;	./src/N76_W25Qxx.c:22: SPI_begin(SPI_MODE_MASTER);
	mov	dpl,#0x00
	lcall	_SPI_begin
;	./src/N76_W25Qxx.c:23: SPI_setBitOrder(MSBFIRST);
	mov	dpl,#0x01
	lcall	_SPI_setBitOrder
;	./src/N76_W25Qxx.c:24: SPI_setDataMode(SPI_MODE0);
	mov	dpl,#0x00
	lcall	_SPI_setDataMode
;	./src/N76_W25Qxx.c:25: SPI_setClockDivider(SPI_CLOCK_DIV2);
	mov	dpl,#0x00
;	./src/N76_W25Qxx.c:27: }
	ljmp	_SPI_setClockDivider
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_writeCmd'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:29: uint8_t W25Qxx_writeCmd(uint8_t cmd)
;	-----------------------------------------
;	 function W25Qxx_writeCmd
;	-----------------------------------------
_W25Qxx_writeCmd:
;	./src/N76_W25Qxx.c:33: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:34: status = SPI_transfer(cmd); // RESUME komutunu gönder
	lcall	_SPI_transfer
	mov	r7,dpl
;	./src/N76_W25Qxx.c:35: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:37: if (status == W25Qxx_OK)
	mov	a,r7
	jnz	00102$
;	./src/N76_W25Qxx.c:38: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	./src/N76_W25Qxx.c:40: return 0;
	mov	dpl,#0x00
;	./src/N76_W25Qxx.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_writeAddr'
;------------------------------------------------------------
;addr                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:43: void W25Qxx_writeAddr(uint32_t addr)
;	-----------------------------------------
;	 function W25Qxx_writeAddr
;	-----------------------------------------
_W25Qxx_writeAddr:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/N76_W25Qxx.c:45: SPI_transfer((uint8_t)((addr >> 16) & 0xFF));
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_transfer
	pop	ar4
	pop	ar5
;	./src/N76_W25Qxx.c:46: SPI_transfer((uint8_t)((addr >> 8) & 0xFF));
	mov	dpl,r5
	push	ar5
	push	ar4
	lcall	_SPI_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:47: SPI_transfer((uint8_t)(addr & 0xFF));
	mov	dpl,r4
;	./src/N76_W25Qxx.c:48: }
	ljmp	_SPI_transfer
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_readMidDid'
;------------------------------------------------------------
;DID                       Allocated with name '_W25Qxx_readMidDid_PARM_2'
;MFID                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:50: void W25Qxx_readMidDid(uint8_t *MFID, uint8_t *DID)
;	-----------------------------------------
;	 function W25Qxx_readMidDid
;	-----------------------------------------
_W25Qxx_readMidDid:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/N76_W25Qxx.c:52: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:53: SPI_transfer(W25Q_CMD_READ_MANUFACTURER);
	mov	dpl,#0x90
	push	ar7
	push	ar6
	push	ar5
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:54: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:55: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:56: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:57: *MFID = SPI_transfer(0xFF);
	mov	dpl,#0xff
	lcall	_SPI_transfer
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	./src/N76_W25Qxx.c:58: *DID = SPI_transfer(0xFF);
	mov	r5,_W25Qxx_readMidDid_PARM_2
	mov	r6,(_W25Qxx_readMidDid_PARM_2 + 1)
	mov	r7,(_W25Qxx_readMidDid_PARM_2 + 2)
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	lcall	_SPI_transfer
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	./src/N76_W25Qxx.c:59: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_writeEnable'
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:62: void W25Qxx_writeEnable(void)
;	-----------------------------------------
;	 function W25Qxx_writeEnable
;	-----------------------------------------
_W25Qxx_writeEnable:
;	./src/N76_W25Qxx.c:64: W25Qxx_writeCmd(W25Q_CMD_WRITE_ENABLE);
	mov	dpl,#0x06
;	./src/N76_W25Qxx.c:65: }
	ljmp	_W25Qxx_writeCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_writeDisable'
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:67: void W25Qxx_writeDisable(void)
;	-----------------------------------------
;	 function W25Qxx_writeDisable
;	-----------------------------------------
_W25Qxx_writeDisable:
;	./src/N76_W25Qxx.c:69: W25Qxx_writeCmd(W25Q_CMD_WRITE_DISABLE);
	mov	dpl,#0x04
;	./src/N76_W25Qxx.c:70: }
	ljmp	_W25Qxx_writeCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_eraseChip'
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:72: void W25Qxx_eraseChip(void)
;	-----------------------------------------
;	 function W25Qxx_eraseChip
;	-----------------------------------------
_W25Qxx_eraseChip:
;	./src/N76_W25Qxx.c:74: W25Qxx_writeEnable();
	lcall	_W25Qxx_writeEnable
;	./src/N76_W25Qxx.c:75: W25Qxx_writeCmd(W25Q_CMD_CHIP_ERASE);
	mov	dpl,#0xc7
	lcall	_W25Qxx_writeCmd
;	./src/N76_W25Qxx.c:76: W25Qxx_waitIdle();
	lcall	_W25Qxx_waitIdle
;	./src/N76_W25Qxx.c:77: W25Qxx_writeDisable();
;	./src/N76_W25Qxx.c:78: }
	ljmp	_W25Qxx_writeDisable
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_eraseSectorBlock'
;------------------------------------------------------------
;num                       Allocated with name '_W25Qxx_eraseSectorBlock_PARM_2'
;cmd                       Allocated with name '_W25Qxx_eraseSectorBlock_cmd_65536_48'
;addr                      Allocated to registers r3 r4 r5 r6 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:80: uint8_t W25Qxx_eraseSectorBlock(uint8_t cmd, uint16_t num)
;	-----------------------------------------
;	 function W25Qxx_eraseSectorBlock
;	-----------------------------------------
_W25Qxx_eraseSectorBlock:
	mov	_W25Qxx_eraseSectorBlock_cmd_65536_48,dpl
;	./src/N76_W25Qxx.c:82: uint32_t addr = 0;
;	./src/N76_W25Qxx.c:83: if (cmd == W25Q_CMD_SECTOR_ERASE_4K)
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	a,#0x20
	cjne	a,_W25Qxx_eraseSectorBlock_cmd_65536_48,00113$
;	./src/N76_W25Qxx.c:85: if (num >= SECTOR_SIZE_4K)
	mov	a,#0x100 - 0x04
	add	a,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
	jnc	00102$
;	./src/N76_W25Qxx.c:86: return W25Qxx_ERR_PARAM;
	mov	dpl,#0x02
	ret
00102$:
;	./src/N76_W25Qxx.c:87: addr = SECTOR_BYTE_4K * num;
	mov	a,_W25Qxx_eraseSectorBlock_PARM_2
	swap	a
	anl	a,#0xf0
	mov	r2,a
	mov	r1,#0x00
	mov	ar3,r1
	mov	ar4,r2
	mov	r5,#0x00
	mov	r6,#0x00
	sjmp	00114$
00113$:
;	./src/N76_W25Qxx.c:89: else if (cmd == W25Q_CMD_BLOCK_ERASE_32K)
	mov	a,#0x52
	cjne	a,_W25Qxx_eraseSectorBlock_cmd_65536_48,00110$
;	./src/N76_W25Qxx.c:91: if (num >= BLOCK_SIZE_32K)
	clr	c
	mov	a,_W25Qxx_eraseSectorBlock_PARM_2
	subb	a,#0x80
	mov	a,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
	subb	a,#0x00
	jc	00104$
;	./src/N76_W25Qxx.c:92: return W25Qxx_ERR_PARAM;
	mov	dpl,#0x02
	ret
00104$:
;	./src/N76_W25Qxx.c:93: addr = BLOCK_BYTE_32K * num;
	mov	r0,_W25Qxx_eraseSectorBlock_PARM_2
	mov	r1,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
	mov	r2,#0x00
	mov	r7,#0x00
	mov	ar5,r1
	mov	a,r2
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
	mov	a,r0
	clr	c
	rrc	a
	orl	a,r5
	mov	r5,a
	mov	a,r0
	rr	a
	anl	a,#0x80
	mov	r4,a
	mov	r3,#0x00
	sjmp	00114$
00110$:
;	./src/N76_W25Qxx.c:95: else if (cmd == W25Q_CMD_BLOCK_ERASE_64K)
	mov	a,#0xd8
	cjne	a,_W25Qxx_eraseSectorBlock_cmd_65536_48,00114$
;	./src/N76_W25Qxx.c:97: if (num >= BLOCK_SIZE_64K)
	clr	c
	mov	a,_W25Qxx_eraseSectorBlock_PARM_2
	subb	a,#0x40
	mov	a,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
	subb	a,#0x00
	jc	00106$
;	./src/N76_W25Qxx.c:98: return W25Qxx_ERR_PARAM;
	mov	dpl,#0x02
	ret
00106$:
;	./src/N76_W25Qxx.c:99: addr = BLOCK_BYTE_64K * num;
	mov	r0,_W25Qxx_eraseSectorBlock_PARM_2
	mov	r1,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
	mov	r2,#0x00
	mov	r7,#0x00
	mov	ar6,r1
	mov	ar5,r0
	mov	r3,#0x00
	mov	r4,#0x00
00114$:
;	./src/N76_W25Qxx.c:102: W25Qxx_writeEnable();
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_W25Qxx_writeEnable
;	./src/N76_W25Qxx.c:104: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:106: SPI_transfer(cmd);
	mov	dpl,_W25Qxx_eraseSectorBlock_cmd_65536_48
	lcall	_SPI_transfer
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	./src/N76_W25Qxx.c:107: W25Qxx_writeAddr(addr);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_W25Qxx_writeAddr
;	./src/N76_W25Qxx.c:109: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:110: W25Qxx_waitIdle();
	lcall	_W25Qxx_waitIdle
;	./src/N76_W25Qxx.c:111: W25Qxx_writeDisable();
	lcall	_W25Qxx_writeDisable
;	./src/N76_W25Qxx.c:113: return W25Qxx_OK;
	mov	dpl,#0x00
;	./src/N76_W25Qxx.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_waitIdle'
;------------------------------------------------------------
;u8Status                  Allocated to registers 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:116: void W25Qxx_waitIdle(void)
;	-----------------------------------------
;	 function W25Qxx_waitIdle
;	-----------------------------------------
_W25Qxx_waitIdle:
;	./src/N76_W25Qxx.c:120: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:121: do
00101$:
;	./src/N76_W25Qxx.c:123: SPI_transfer(W25Q_CMD_READ_STATUS_REG1);
	mov	dpl,#0x05
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:124: u8Status = SPI_transfer(0xFF);
	mov	dpl,#0xff
	lcall	_SPI_transfer
	mov	a,dpl
;	./src/N76_W25Qxx.c:125: } while (inbit(u8Status, REG1_BUSY) == 1);
	anl	a,#0x01
	mov	r7,a
	cjne	r7,#0x01,00114$
	sjmp	00101$
00114$:
;	./src/N76_W25Qxx.c:127: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_eraseVerify'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;u8Data                    Allocated to registers r5 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:130: uint8_t W25Qxx_eraseVerify(void)
;	-----------------------------------------
;	 function W25Qxx_eraseVerify
;	-----------------------------------------
_W25Qxx_eraseVerify:
;	./src/N76_W25Qxx.c:135: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:137: SPI_transfer(W25Q_CMD_READ_DATA);
	mov	dpl,#0x03
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:138: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:139: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:140: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:142: for (i = 0; i < 256; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	./src/N76_W25Qxx.c:144: u8Data = SPI_transfer(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_SPI_transfer
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:145: if (u8Data != 0xFF)
	cjne	r5,#0xff,00120$
	sjmp	00105$
00120$:
;	./src/N76_W25Qxx.c:147: return W25Qxx_ERR;
	mov	dpl,#0x01
	ret
00105$:
;	./src/N76_W25Qxx.c:142: for (i = 0; i < 256; i++)
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
00121$:
	mov	ar5,r7
	mov	a,#0x100 - 0x01
	add	a,r5
	jnc	00104$
;	./src/N76_W25Qxx.c:151: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:152: return W25Qxx_OK;
	mov	dpl,#0x00
;	./src/N76_W25Qxx.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_writePage'
;------------------------------------------------------------
;data                      Allocated with name '_W25Qxx_writePage_PARM_2'
;pageNum                   Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:155: void W25Qxx_writePage(uint32_t pageNum, uint8_t *data)
;	-----------------------------------------
;	 function W25Qxx_writePage
;	-----------------------------------------
_W25Qxx_writePage:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	./src/N76_W25Qxx.c:158: i = (uint32_t)pageNum * (uint32_t)PAGE_BYTE;
	mov	ar7,r6
	mov	ar6,r5
	mov	ar5,r4
	mov	r4,#0x00
;	./src/N76_W25Qxx.c:160: W25Qxx_writeEnable();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_W25Qxx_writeEnable
;	./src/N76_W25Qxx.c:162: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:163: SPI_transfer(W25Q_CMD_PAGE_PROGRAM);
	mov	dpl,#0x02
	lcall	_SPI_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:164: W25Qxx_writeAddr(i);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_W25Qxx_writeAddr
;	./src/N76_W25Qxx.c:167: for (i = 0; i < PAGE_BYTE; i++)
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	./src/N76_W25Qxx.c:169: SPI_transfer((uint8_t)data[i]);
	mov	a,r4
	add	a,_W25Qxx_writePage_PARM_2
	mov	r1,a
	mov	a,r5
	addc	a,(_W25Qxx_writePage_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_W25Qxx_writePage_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:167: for (i = 0; i < PAGE_BYTE; i++)
	inc	r4
	cjne	r4,#0x00,00115$
	inc	r5
	cjne	r5,#0x00,00115$
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	./src/N76_W25Qxx.c:171: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:173: W25Qxx_waitIdle(); // wait ultil done
	lcall	_W25Qxx_waitIdle
;	./src/N76_W25Qxx.c:174: W25Qxx_writeDisable();
;	./src/N76_W25Qxx.c:175: }
	ljmp	_W25Qxx_writeDisable
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_writeBuff'
;------------------------------------------------------------
;data                      Allocated with name '_W25Qxx_writeBuff_PARM_2'
;len                       Allocated with name '_W25Qxx_writeBuff_PARM_3'
;addr                      Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:177: void W25Qxx_writeBuff(uint32_t addr, uint8_t *data, uint16_t len)
;	-----------------------------------------
;	 function W25Qxx_writeBuff
;	-----------------------------------------
_W25Qxx_writeBuff:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/N76_W25Qxx.c:181: W25Qxx_writeEnable();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_W25Qxx_writeEnable
;	./src/N76_W25Qxx.c:182: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:184: SPI_transfer(W25Q_CMD_PAGE_PROGRAM);
	mov	dpl,#0x02
	lcall	_SPI_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:185: W25Qxx_writeAddr(addr);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_W25Qxx_writeAddr
;	./src/N76_W25Qxx.c:188: for (i = 0; i < len; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,_W25Qxx_writeBuff_PARM_3
	mov	a,r7
	subb	a,(_W25Qxx_writeBuff_PARM_3 + 1)
	jnc	00101$
;	./src/N76_W25Qxx.c:190: SPI_transfer((uint8_t)data[i]);
	mov	a,r6
	add	a,_W25Qxx_writeBuff_PARM_2
	mov	r3,a
	mov	a,r7
	addc	a,(_W25Qxx_writeBuff_PARM_2 + 1)
	mov	r4,a
	mov	r5,(_W25Qxx_writeBuff_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_SPI_transfer
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:188: for (i = 0; i < len; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	./src/N76_W25Qxx.c:193: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:194: W25Qxx_waitIdle(); // wait ultil done
	lcall	_W25Qxx_waitIdle
;	./src/N76_W25Qxx.c:195: W25Qxx_writeDisable();
;	./src/N76_W25Qxx.c:196: }
	ljmp	_W25Qxx_writeDisable
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_readPage'
;------------------------------------------------------------
;data                      Allocated with name '_W25Qxx_readPage_PARM_2'
;pageNum                   Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:198: void W25Qxx_readPage(uint32_t pageNum, uint8_t *data)
;	-----------------------------------------
;	 function W25Qxx_readPage
;	-----------------------------------------
_W25Qxx_readPage:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	./src/N76_W25Qxx.c:201: i = pageNum * PAGE_BYTE;
	mov	ar7,r6
	mov	ar6,r5
	mov	ar5,r4
	mov	r4,#0x00
;	./src/N76_W25Qxx.c:203: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:204: SPI_transfer(W25Q_CMD_READ_DATA);
	mov	dpl,#0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:205: W25Qxx_writeAddr(i);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_W25Qxx_writeAddr
;	./src/N76_W25Qxx.c:207: for (i = 0; i < PAGE_BYTE; i++)
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	./src/N76_W25Qxx.c:209: data[i] = SPI_transfer(0x00);
	mov	a,r4
	add	a,_W25Qxx_readPage_PARM_2
	mov	r1,a
	mov	a,r5
	addc	a,(_W25Qxx_readPage_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_W25Qxx_readPage_PARM_2 + 2)
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_SPI_transfer
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
;	./src/N76_W25Qxx.c:207: for (i = 0; i < PAGE_BYTE; i++)
	inc	r4
	cjne	r4,#0x00,00115$
	inc	r5
	cjne	r5,#0x00,00115$
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	./src/N76_W25Qxx.c:211: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:212: }//-----------------------------------------------------------------------------------------------------------
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_readBuff'
;------------------------------------------------------------
;data                      Allocated with name '_W25Qxx_readBuff_PARM_2'
;len                       Allocated with name '_W25Qxx_readBuff_PARM_3'
;addr                      Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:213: void W25Qxx_readBuff(uint32_t addr, uint8_t *data, uint32_t len)
;	-----------------------------------------
;	 function W25Qxx_readBuff
;	-----------------------------------------
_W25Qxx_readBuff:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/N76_W25Qxx.c:217: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:218: SPI_transfer(W25Q_CMD_READ_DATA);
	mov	dpl,#0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:219: W25Qxx_writeAddr(addr);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_W25Qxx_writeAddr
;	./src/N76_W25Qxx.c:221: for (i = 0; i < len; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	ar2,r6
	mov	ar3,r7
	mov	r4,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,_W25Qxx_readBuff_PARM_3
	mov	a,r3
	subb	a,(_W25Qxx_readBuff_PARM_3 + 1)
	mov	a,r4
	subb	a,(_W25Qxx_readBuff_PARM_3 + 2)
	mov	a,r5
	subb	a,(_W25Qxx_readBuff_PARM_3 + 3)
	jnc	00101$
;	./src/N76_W25Qxx.c:223: data[i] = SPI_transfer(0x00);
	mov	a,r6
	add	a,_W25Qxx_readBuff_PARM_2
	mov	r3,a
	mov	a,r7
	addc	a,(_W25Qxx_readBuff_PARM_2 + 1)
	mov	r4,a
	mov	r5,(_W25Qxx_readBuff_PARM_2 + 2)
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_SPI_transfer
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	./src/N76_W25Qxx.c:221: for (i = 0; i < len; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	./src/N76_W25Qxx.c:225: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:226: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'W25Qxx_writeVerify'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;u8Data                    Allocated to registers r5 
;------------------------------------------------------------
;	./src/N76_W25Qxx.c:228: uint8_t W25Qxx_writeVerify(void)
;	-----------------------------------------
;	 function W25Qxx_writeVerify
;	-----------------------------------------
_W25Qxx_writeVerify:
;	./src/N76_W25Qxx.c:233: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_W25Qxx.c:235: SPI_transfer(W25Q_CMD_READ_DATA);
	mov	dpl,#0x03
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:236: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:237: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:238: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	./src/N76_W25Qxx.c:240: for (i = 0; i < 256; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	./src/N76_W25Qxx.c:242: u8Data = SPI_transfer(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_SPI_transfer
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	./src/N76_W25Qxx.c:244: if (u8Data != (uint8_t)i)
	mov	ar4,r6
	mov	a,r5
	cjne	a,ar4,00120$
	sjmp	00105$
00120$:
;	./src/N76_W25Qxx.c:246: return W25Qxx_ERR;
	mov	dpl,#0x01
	ret
00105$:
;	./src/N76_W25Qxx.c:240: for (i = 0; i < 256; i++)
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
00121$:
	mov	ar5,r7
	mov	a,#0x100 - 0x01
	add	a,r5
	jnc	00104$
;	./src/N76_W25Qxx.c:249: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_W25Qxx.c:251: return W25Qxx_OK;
	mov	dpl,#0x00
;	./src/N76_W25Qxx.c:252: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.ascii "*  SPI Error, please check the connection between MCU and SP"
	.ascii "I Flash"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
