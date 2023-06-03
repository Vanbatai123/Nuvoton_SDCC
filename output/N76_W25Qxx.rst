                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module N76_W25Qxx
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART0_println
                                     12 	.globl _SPI_setClockDivider
                                     13 	.globl _SPI_setDataMode
                                     14 	.globl _SPI_setBitOrder
                                     15 	.globl _SPI_transfer
                                     16 	.globl _SPI_begin
                                     17 	.globl _eiph1
                                     18 	.globl _eip1
                                     19 	.globl _pmd
                                     20 	.globl _pmen
                                     21 	.globl _pdtcnt
                                     22 	.globl _pdten
                                     23 	.globl _scon_1
                                     24 	.globl _eiph
                                     25 	.globl _aindids
                                     26 	.globl _spdr
                                     27 	.globl _spsr
                                     28 	.globl _spcr2
                                     29 	.globl _spcr
                                     30 	.globl _capcon4
                                     31 	.globl _capcon3
                                     32 	.globl _b
                                     33 	.globl _eip
                                     34 	.globl _c2h
                                     35 	.globl _c2l
                                     36 	.globl _pif
                                     37 	.globl _pipen
                                     38 	.globl _pinen
                                     39 	.globl _picon
                                     40 	.globl _adccon0
                                     41 	.globl _c1h
                                     42 	.globl _c1l
                                     43 	.globl _c0h
                                     44 	.globl _c0l
                                     45 	.globl _adcdly
                                     46 	.globl _adccon2
                                     47 	.globl _adccon1
                                     48 	.globl _acc
                                     49 	.globl _pwmcon1
                                     50 	.globl _piocon0
                                     51 	.globl _pwm3l
                                     52 	.globl _pwm2l
                                     53 	.globl _pwm1l
                                     54 	.globl _pwm0l
                                     55 	.globl _pwmpl
                                     56 	.globl _pwmcon0
                                     57 	.globl _fbd
                                     58 	.globl _pnp
                                     59 	.globl _pwm3h
                                     60 	.globl _pwm2h
                                     61 	.globl _pwm1h
                                     62 	.globl _pwm0h
                                     63 	.globl _pwmph
                                     64 	.globl _psw
                                     65 	.globl _adcmph
                                     66 	.globl _adcmpl
                                     67 	.globl _pwm5l
                                     68 	.globl _th2
                                     69 	.globl _pwm4l
                                     70 	.globl _tl2
                                     71 	.globl _rcmp2h
                                     72 	.globl _rcmp2l
                                     73 	.globl _t2mod
                                     74 	.globl _t2con
                                     75 	.globl _ta
                                     76 	.globl _piocon1
                                     77 	.globl _rh3
                                     78 	.globl _pwm5h
                                     79 	.globl _rl3
                                     80 	.globl _pwm4h
                                     81 	.globl _t3con
                                     82 	.globl _adcrh
                                     83 	.globl _adcrl
                                     84 	.globl _i2addr
                                     85 	.globl _i2con
                                     86 	.globl _i2toc
                                     87 	.globl _i2clk
                                     88 	.globl _i2stat
                                     89 	.globl _i2dat
                                     90 	.globl _saddr_1
                                     91 	.globl _saden_1
                                     92 	.globl _saden
                                     93 	.globl _ip
                                     94 	.globl _pwmintc
                                     95 	.globl _iph
                                     96 	.globl _p2s
                                     97 	.globl _p1sr
                                     98 	.globl _p1m2
                                     99 	.globl _p1s
                                    100 	.globl _p1m1
                                    101 	.globl _p0sr
                                    102 	.globl _p0m2
                                    103 	.globl _p0s
                                    104 	.globl _p0m1
                                    105 	.globl _p3
                                    106 	.globl _iapcn
                                    107 	.globl _iapfd
                                    108 	.globl _p3sr
                                    109 	.globl _p3m2
                                    110 	.globl _p3s
                                    111 	.globl _p3m1
                                    112 	.globl _bodcon1
                                    113 	.globl _wdcon
                                    114 	.globl _saddr
                                    115 	.globl _ie
                                    116 	.globl _iapah
                                    117 	.globl _iapal
                                    118 	.globl _iapuen
                                    119 	.globl _iaptrg
                                    120 	.globl _bodcon0
                                    121 	.globl _auxr1
                                    122 	.globl _p2
                                    123 	.globl _chpcon
                                    124 	.globl _eie1
                                    125 	.globl _eie
                                    126 	.globl _sbuf_1
                                    127 	.globl _sbuf
                                    128 	.globl _scon
                                    129 	.globl _cken
                                    130 	.globl _ckswt
                                    131 	.globl _ckdiv
                                    132 	.globl _capcon2
                                    133 	.globl _capcon1
                                    134 	.globl _capcon0
                                    135 	.globl _sfrs
                                    136 	.globl _p1
                                    137 	.globl _wkcon
                                    138 	.globl _ckcon
                                    139 	.globl _th1
                                    140 	.globl _th0
                                    141 	.globl _tl1
                                    142 	.globl _tl0
                                    143 	.globl _tmod
                                    144 	.globl _tcon
                                    145 	.globl _pcon
                                    146 	.globl _rwk
                                    147 	.globl _rctrim1
                                    148 	.globl _rctrim0
                                    149 	.globl _dph
                                    150 	.globl _dpl
                                    151 	.globl _sp
                                    152 	.globl _p0
                                    153 	.globl _W25Qxx_readBuff_PARM_3
                                    154 	.globl _W25Qxx_readBuff_PARM_2
                                    155 	.globl _W25Qxx_readPage_PARM_2
                                    156 	.globl _W25Qxx_writeBuff_PARM_3
                                    157 	.globl _W25Qxx_writeBuff_PARM_2
                                    158 	.globl _W25Qxx_writePage_PARM_2
                                    159 	.globl _W25Qxx_eraseSectorBlock_PARM_2
                                    160 	.globl _W25Qxx_readMidDid_PARM_2
                                    161 	.globl _SPI_Error
                                    162 	.globl _W25Qxx_begin
                                    163 	.globl _W25Qxx_writeCmd
                                    164 	.globl _W25Qxx_writeAddr
                                    165 	.globl _W25Qxx_readMidDid
                                    166 	.globl _W25Qxx_writeEnable
                                    167 	.globl _W25Qxx_writeDisable
                                    168 	.globl _W25Qxx_eraseChip
                                    169 	.globl _W25Qxx_eraseSectorBlock
                                    170 	.globl _W25Qxx_waitIdle
                                    171 	.globl _W25Qxx_eraseVerify
                                    172 	.globl _W25Qxx_writePage
                                    173 	.globl _W25Qxx_writeBuff
                                    174 	.globl _W25Qxx_readPage
                                    175 	.globl _W25Qxx_readBuff
                                    176 	.globl _W25Qxx_writeVerify
                                    177 ;--------------------------------------------------------
                                    178 ; special function registers
                                    179 ;--------------------------------------------------------
                                    180 	.area RSEG    (ABS,DATA)
      000000                        181 	.org 0x0000
                           000080   182 _p0	=	0x0080
                           000081   183 _sp	=	0x0081
                           000082   184 _dpl	=	0x0082
                           000083   185 _dph	=	0x0083
                           000084   186 _rctrim0	=	0x0084
                           000085   187 _rctrim1	=	0x0085
                           000086   188 _rwk	=	0x0086
                           000087   189 _pcon	=	0x0087
                           000088   190 _tcon	=	0x0088
                           000089   191 _tmod	=	0x0089
                           00008A   192 _tl0	=	0x008a
                           00008B   193 _tl1	=	0x008b
                           00008C   194 _th0	=	0x008c
                           00008D   195 _th1	=	0x008d
                           00008E   196 _ckcon	=	0x008e
                           00008F   197 _wkcon	=	0x008f
                           000090   198 _p1	=	0x0090
                           000091   199 _sfrs	=	0x0091
                           000092   200 _capcon0	=	0x0092
                           000093   201 _capcon1	=	0x0093
                           000094   202 _capcon2	=	0x0094
                           000095   203 _ckdiv	=	0x0095
                           000096   204 _ckswt	=	0x0096
                           000097   205 _cken	=	0x0097
                           000098   206 _scon	=	0x0098
                           000099   207 _sbuf	=	0x0099
                           00009A   208 _sbuf_1	=	0x009a
                           00009B   209 _eie	=	0x009b
                           00009C   210 _eie1	=	0x009c
                           00009F   211 _chpcon	=	0x009f
                           0000A0   212 _p2	=	0x00a0
                           0000A2   213 _auxr1	=	0x00a2
                           0000A3   214 _bodcon0	=	0x00a3
                           0000A4   215 _iaptrg	=	0x00a4
                           0000A5   216 _iapuen	=	0x00a5
                           0000A6   217 _iapal	=	0x00a6
                           0000A7   218 _iapah	=	0x00a7
                           0000A8   219 _ie	=	0x00a8
                           0000A9   220 _saddr	=	0x00a9
                           0000AA   221 _wdcon	=	0x00aa
                           0000AB   222 _bodcon1	=	0x00ab
                           0000AC   223 _p3m1	=	0x00ac
                           0000AC   224 _p3s	=	0x00ac
                           0000AD   225 _p3m2	=	0x00ad
                           0000AD   226 _p3sr	=	0x00ad
                           0000AE   227 _iapfd	=	0x00ae
                           0000AF   228 _iapcn	=	0x00af
                           0000B0   229 _p3	=	0x00b0
                           0000B1   230 _p0m1	=	0x00b1
                           0000B1   231 _p0s	=	0x00b1
                           0000B2   232 _p0m2	=	0x00b2
                           0000B2   233 _p0sr	=	0x00b2
                           0000B3   234 _p1m1	=	0x00b3
                           0000B3   235 _p1s	=	0x00b3
                           0000B4   236 _p1m2	=	0x00b4
                           0000B4   237 _p1sr	=	0x00b4
                           0000B5   238 _p2s	=	0x00b5
                           0000B7   239 _iph	=	0x00b7
                           0000B7   240 _pwmintc	=	0x00b7
                           0000B8   241 _ip	=	0x00b8
                           0000B9   242 _saden	=	0x00b9
                           0000BA   243 _saden_1	=	0x00ba
                           0000BB   244 _saddr_1	=	0x00bb
                           0000BC   245 _i2dat	=	0x00bc
                           0000BD   246 _i2stat	=	0x00bd
                           0000BE   247 _i2clk	=	0x00be
                           0000BF   248 _i2toc	=	0x00bf
                           0000C0   249 _i2con	=	0x00c0
                           0000C1   250 _i2addr	=	0x00c1
                           0000C2   251 _adcrl	=	0x00c2
                           0000C3   252 _adcrh	=	0x00c3
                           0000C4   253 _t3con	=	0x00c4
                           0000C4   254 _pwm4h	=	0x00c4
                           0000C5   255 _rl3	=	0x00c5
                           0000C5   256 _pwm5h	=	0x00c5
                           0000C6   257 _rh3	=	0x00c6
                           0000C6   258 _piocon1	=	0x00c6
                           0000C7   259 _ta	=	0x00c7
                           0000C8   260 _t2con	=	0x00c8
                           0000C9   261 _t2mod	=	0x00c9
                           0000CA   262 _rcmp2l	=	0x00ca
                           0000CB   263 _rcmp2h	=	0x00cb
                           0000CC   264 _tl2	=	0x00cc
                           0000CC   265 _pwm4l	=	0x00cc
                           0000CD   266 _th2	=	0x00cd
                           0000CD   267 _pwm5l	=	0x00cd
                           0000CE   268 _adcmpl	=	0x00ce
                           0000CF   269 _adcmph	=	0x00cf
                           0000D0   270 _psw	=	0x00d0
                           0000D1   271 _pwmph	=	0x00d1
                           0000D2   272 _pwm0h	=	0x00d2
                           0000D3   273 _pwm1h	=	0x00d3
                           0000D4   274 _pwm2h	=	0x00d4
                           0000D5   275 _pwm3h	=	0x00d5
                           0000D6   276 _pnp	=	0x00d6
                           0000D7   277 _fbd	=	0x00d7
                           0000D8   278 _pwmcon0	=	0x00d8
                           0000D9   279 _pwmpl	=	0x00d9
                           0000DA   280 _pwm0l	=	0x00da
                           0000DB   281 _pwm1l	=	0x00db
                           0000DC   282 _pwm2l	=	0x00dc
                           0000DD   283 _pwm3l	=	0x00dd
                           0000DE   284 _piocon0	=	0x00de
                           0000DF   285 _pwmcon1	=	0x00df
                           0000E0   286 _acc	=	0x00e0
                           0000E1   287 _adccon1	=	0x00e1
                           0000E2   288 _adccon2	=	0x00e2
                           0000E3   289 _adcdly	=	0x00e3
                           0000E4   290 _c0l	=	0x00e4
                           0000E5   291 _c0h	=	0x00e5
                           0000E6   292 _c1l	=	0x00e6
                           0000E7   293 _c1h	=	0x00e7
                           0000E8   294 _adccon0	=	0x00e8
                           0000E9   295 _picon	=	0x00e9
                           0000EA   296 _pinen	=	0x00ea
                           0000EB   297 _pipen	=	0x00eb
                           0000EC   298 _pif	=	0x00ec
                           0000ED   299 _c2l	=	0x00ed
                           0000EE   300 _c2h	=	0x00ee
                           0000EF   301 _eip	=	0x00ef
                           0000F0   302 _b	=	0x00f0
                           0000F1   303 _capcon3	=	0x00f1
                           0000F2   304 _capcon4	=	0x00f2
                           0000F3   305 _spcr	=	0x00f3
                           0000F3   306 _spcr2	=	0x00f3
                           0000F4   307 _spsr	=	0x00f4
                           0000F5   308 _spdr	=	0x00f5
                           0000F6   309 _aindids	=	0x00f6
                           0000F7   310 _eiph	=	0x00f7
                           0000F8   311 _scon_1	=	0x00f8
                           0000F9   312 _pdten	=	0x00f9
                           0000FA   313 _pdtcnt	=	0x00fa
                           0000FB   314 _pmen	=	0x00fb
                           0000FC   315 _pmd	=	0x00fc
                           0000FE   316 _eip1	=	0x00fe
                           0000FF   317 _eiph1	=	0x00ff
                                    318 ;--------------------------------------------------------
                                    319 ; special function bits
                                    320 ;--------------------------------------------------------
                                    321 	.area RSEG    (ABS,DATA)
      000000                        322 	.org 0x0000
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable register banks
                                    325 ;--------------------------------------------------------
                                    326 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        327 	.ds 8
                                    328 ;--------------------------------------------------------
                                    329 ; internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area DSEG    (DATA)
      000017                        332 _W25Qxx_readMidDid_PARM_2:
      000017                        333 	.ds 3
      00001A                        334 _W25Qxx_eraseSectorBlock_PARM_2:
      00001A                        335 	.ds 2
      00001C                        336 _W25Qxx_eraseSectorBlock_cmd_65536_48:
      00001C                        337 	.ds 1
      00001D                        338 _W25Qxx_writePage_PARM_2:
      00001D                        339 	.ds 3
      000020                        340 _W25Qxx_writeBuff_PARM_2:
      000020                        341 	.ds 3
      000023                        342 _W25Qxx_writeBuff_PARM_3:
      000023                        343 	.ds 2
      000025                        344 _W25Qxx_readPage_PARM_2:
      000025                        345 	.ds 3
      000028                        346 _W25Qxx_readBuff_PARM_2:
      000028                        347 	.ds 3
      00002B                        348 _W25Qxx_readBuff_PARM_3:
      00002B                        349 	.ds 4
                                    350 ;--------------------------------------------------------
                                    351 ; overlayable items in internal ram
                                    352 ;--------------------------------------------------------
                                    353 ;--------------------------------------------------------
                                    354 ; indirectly addressable internal ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area ISEG    (DATA)
                                    357 ;--------------------------------------------------------
                                    358 ; absolute internal ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area IABS    (ABS,DATA)
                                    361 	.area IABS    (ABS,DATA)
                                    362 ;--------------------------------------------------------
                                    363 ; bit data
                                    364 ;--------------------------------------------------------
                                    365 	.area BSEG    (BIT)
                                    366 ;--------------------------------------------------------
                                    367 ; paged external ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area PSEG    (PAG,XDATA)
                                    370 ;--------------------------------------------------------
                                    371 ; external ram data
                                    372 ;--------------------------------------------------------
                                    373 	.area XSEG    (XDATA)
                                    374 ;--------------------------------------------------------
                                    375 ; absolute external ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XABS    (ABS,XDATA)
                                    378 ;--------------------------------------------------------
                                    379 ; external initialized ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area XISEG   (XDATA)
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT0 (CODE)
                                    384 	.area GSINIT1 (CODE)
                                    385 	.area GSINIT2 (CODE)
                                    386 	.area GSINIT3 (CODE)
                                    387 	.area GSINIT4 (CODE)
                                    388 	.area GSINIT5 (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area CSEG    (CODE)
                                    392 ;--------------------------------------------------------
                                    393 ; global & static initialisations
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
                                    396 	.area GSINIT  (CODE)
                                    397 	.area GSFINAL (CODE)
                                    398 	.area GSINIT  (CODE)
                                    399 ;--------------------------------------------------------
                                    400 ; Home
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area HOME    (CODE)
                                    404 ;--------------------------------------------------------
                                    405 ; code
                                    406 ;--------------------------------------------------------
                                    407 	.area CSEG    (CODE)
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'SPI_Error'
                                    410 ;------------------------------------------------------------
                                    411 ;	./src/N76_W25Qxx.c:13: void SPI_Error(void)
                                    412 ;	-----------------------------------------
                                    413 ;	 function SPI_Error
                                    414 ;	-----------------------------------------
      0008D9                        415 _SPI_Error:
                           000007   416 	ar7 = 0x07
                           000006   417 	ar6 = 0x06
                           000005   418 	ar5 = 0x05
                           000004   419 	ar4 = 0x04
                           000003   420 	ar3 = 0x03
                           000002   421 	ar2 = 0x02
                           000001   422 	ar1 = 0x01
                           000000   423 	ar0 = 0x00
                                    424 ;	./src/N76_W25Qxx.c:15: UART0_println("\n*  SPI Error, please check the connection between MCU and SPI Flash");
      0008D9 90 10 93         [24]  425 	mov	dptr,#___str_0
      0008DC 75 F0 80         [24]  426 	mov	b,#0x80
      0008DF 12 06 63         [24]  427 	lcall	_UART0_println
                                    428 ;	./src/N76_W25Qxx.c:16: while (1)
      0008E2                        429 00102$:
                                    430 ;	./src/N76_W25Qxx.c:18: }
      0008E2 80 FE            [24]  431 	sjmp	00102$
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'W25Qxx_begin'
                                    434 ;------------------------------------------------------------
                                    435 ;	./src/N76_W25Qxx.c:20: void W25Qxx_begin(void)
                                    436 ;	-----------------------------------------
                                    437 ;	 function W25Qxx_begin
                                    438 ;	-----------------------------------------
      0008E4                        439 _W25Qxx_begin:
                                    440 ;	./src/N76_W25Qxx.c:22: SPI_begin(SPI_MODE_MASTER);
      0008E4 75 82 00         [24]  441 	mov	dpl,#0x00
      0008E7 12 05 85         [24]  442 	lcall	_SPI_begin
                                    443 ;	./src/N76_W25Qxx.c:23: SPI_setBitOrder(MSBFIRST);
      0008EA 75 82 01         [24]  444 	mov	dpl,#0x01
      0008ED 12 05 C2         [24]  445 	lcall	_SPI_setBitOrder
                                    446 ;	./src/N76_W25Qxx.c:24: SPI_setDataMode(SPI_MODE0);
      0008F0 75 82 00         [24]  447 	mov	dpl,#0x00
      0008F3 12 05 CE         [24]  448 	lcall	_SPI_setDataMode
                                    449 ;	./src/N76_W25Qxx.c:25: SPI_setClockDivider(SPI_CLOCK_DIV2);
      0008F6 75 82 00         [24]  450 	mov	dpl,#0x00
                                    451 ;	./src/N76_W25Qxx.c:27: }
      0008F9 02 05 D8         [24]  452 	ljmp	_SPI_setClockDivider
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'W25Qxx_writeCmd'
                                    455 ;------------------------------------------------------------
                                    456 ;cmd                       Allocated to registers 
                                    457 ;status                    Allocated to registers r7 
                                    458 ;------------------------------------------------------------
                                    459 ;	./src/N76_W25Qxx.c:29: uint8_t W25Qxx_writeCmd(uint8_t cmd)
                                    460 ;	-----------------------------------------
                                    461 ;	 function W25Qxx_writeCmd
                                    462 ;	-----------------------------------------
      0008FC                        463 _W25Qxx_writeCmd:
                                    464 ;	./src/N76_W25Qxx.c:33: clrb(SPI_Px_SS, SPI_PIN_SS);
      0008FC 53 90 FD         [24]  465 	anl	_p1,#0xfd
                                    466 ;	./src/N76_W25Qxx.c:34: status = SPI_transfer(cmd); // RESUME komutunu gönder
      0008FF 12 05 AF         [24]  467 	lcall	_SPI_transfer
      000902 AF 82            [24]  468 	mov	r7,dpl
                                    469 ;	./src/N76_W25Qxx.c:35: setb(SPI_Px_SS, SPI_PIN_SS);
      000904 43 90 02         [24]  470 	orl	_p1,#0x02
                                    471 ;	./src/N76_W25Qxx.c:37: if (status == W25Qxx_OK)
      000907 EF               [12]  472 	mov	a,r7
      000908 70 04            [24]  473 	jnz	00102$
                                    474 ;	./src/N76_W25Qxx.c:38: return 1;
      00090A 75 82 01         [24]  475 	mov	dpl,#0x01
      00090D 22               [24]  476 	ret
      00090E                        477 00102$:
                                    478 ;	./src/N76_W25Qxx.c:40: return 0;
      00090E 75 82 00         [24]  479 	mov	dpl,#0x00
                                    480 ;	./src/N76_W25Qxx.c:41: }
      000911 22               [24]  481 	ret
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'W25Qxx_writeAddr'
                                    484 ;------------------------------------------------------------
                                    485 ;addr                      Allocated to registers r4 r5 r6 r7 
                                    486 ;------------------------------------------------------------
                                    487 ;	./src/N76_W25Qxx.c:43: void W25Qxx_writeAddr(uint32_t addr)
                                    488 ;	-----------------------------------------
                                    489 ;	 function W25Qxx_writeAddr
                                    490 ;	-----------------------------------------
      000912                        491 _W25Qxx_writeAddr:
      000912 AC 82            [24]  492 	mov	r4,dpl
      000914 AD 83            [24]  493 	mov	r5,dph
      000916 AE F0            [24]  494 	mov	r6,b
      000918 FF               [12]  495 	mov	r7,a
                                    496 ;	./src/N76_W25Qxx.c:45: SPI_transfer((uint8_t)((addr >> 16) & 0xFF));
      000919 8E 82            [24]  497 	mov	dpl,r6
      00091B C0 07            [24]  498 	push	ar7
      00091D C0 06            [24]  499 	push	ar6
      00091F C0 05            [24]  500 	push	ar5
      000921 C0 04            [24]  501 	push	ar4
      000923 12 05 AF         [24]  502 	lcall	_SPI_transfer
      000926 D0 04            [24]  503 	pop	ar4
      000928 D0 05            [24]  504 	pop	ar5
                                    505 ;	./src/N76_W25Qxx.c:46: SPI_transfer((uint8_t)((addr >> 8) & 0xFF));
      00092A 8D 82            [24]  506 	mov	dpl,r5
      00092C C0 05            [24]  507 	push	ar5
      00092E C0 04            [24]  508 	push	ar4
      000930 12 05 AF         [24]  509 	lcall	_SPI_transfer
      000933 D0 04            [24]  510 	pop	ar4
      000935 D0 05            [24]  511 	pop	ar5
      000937 D0 06            [24]  512 	pop	ar6
      000939 D0 07            [24]  513 	pop	ar7
                                    514 ;	./src/N76_W25Qxx.c:47: SPI_transfer((uint8_t)(addr & 0xFF));
      00093B 8C 82            [24]  515 	mov	dpl,r4
                                    516 ;	./src/N76_W25Qxx.c:48: }
      00093D 02 05 AF         [24]  517 	ljmp	_SPI_transfer
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'W25Qxx_readMidDid'
                                    520 ;------------------------------------------------------------
                                    521 ;DID                       Allocated with name '_W25Qxx_readMidDid_PARM_2'
                                    522 ;MFID                      Allocated to registers r5 r6 r7 
                                    523 ;------------------------------------------------------------
                                    524 ;	./src/N76_W25Qxx.c:50: void W25Qxx_readMidDid(uint8_t *MFID, uint8_t *DID)
                                    525 ;	-----------------------------------------
                                    526 ;	 function W25Qxx_readMidDid
                                    527 ;	-----------------------------------------
      000940                        528 _W25Qxx_readMidDid:
      000940 AD 82            [24]  529 	mov	r5,dpl
      000942 AE 83            [24]  530 	mov	r6,dph
      000944 AF F0            [24]  531 	mov	r7,b
                                    532 ;	./src/N76_W25Qxx.c:52: clrb(SPI_Px_SS, SPI_PIN_SS);
      000946 53 90 FD         [24]  533 	anl	_p1,#0xfd
                                    534 ;	./src/N76_W25Qxx.c:53: SPI_transfer(W25Q_CMD_READ_MANUFACTURER);
      000949 75 82 90         [24]  535 	mov	dpl,#0x90
      00094C C0 07            [24]  536 	push	ar7
      00094E C0 06            [24]  537 	push	ar6
      000950 C0 05            [24]  538 	push	ar5
      000952 12 05 AF         [24]  539 	lcall	_SPI_transfer
                                    540 ;	./src/N76_W25Qxx.c:54: SPI_transfer(0x00);
      000955 75 82 00         [24]  541 	mov	dpl,#0x00
      000958 12 05 AF         [24]  542 	lcall	_SPI_transfer
                                    543 ;	./src/N76_W25Qxx.c:55: SPI_transfer(0x00);
      00095B 75 82 00         [24]  544 	mov	dpl,#0x00
      00095E 12 05 AF         [24]  545 	lcall	_SPI_transfer
                                    546 ;	./src/N76_W25Qxx.c:56: SPI_transfer(0x00);
      000961 75 82 00         [24]  547 	mov	dpl,#0x00
      000964 12 05 AF         [24]  548 	lcall	_SPI_transfer
                                    549 ;	./src/N76_W25Qxx.c:57: *MFID = SPI_transfer(0xFF);
      000967 75 82 FF         [24]  550 	mov	dpl,#0xff
      00096A 12 05 AF         [24]  551 	lcall	_SPI_transfer
      00096D AC 82            [24]  552 	mov	r4,dpl
      00096F D0 05            [24]  553 	pop	ar5
      000971 D0 06            [24]  554 	pop	ar6
      000973 D0 07            [24]  555 	pop	ar7
      000975 8D 82            [24]  556 	mov	dpl,r5
      000977 8E 83            [24]  557 	mov	dph,r6
      000979 8F F0            [24]  558 	mov	b,r7
      00097B EC               [12]  559 	mov	a,r4
      00097C 12 0E 15         [24]  560 	lcall	__gptrput
                                    561 ;	./src/N76_W25Qxx.c:58: *DID = SPI_transfer(0xFF);
      00097F AD 17            [24]  562 	mov	r5,_W25Qxx_readMidDid_PARM_2
      000981 AE 18            [24]  563 	mov	r6,(_W25Qxx_readMidDid_PARM_2 + 1)
      000983 AF 19            [24]  564 	mov	r7,(_W25Qxx_readMidDid_PARM_2 + 2)
      000985 75 82 FF         [24]  565 	mov	dpl,#0xff
      000988 C0 07            [24]  566 	push	ar7
      00098A C0 06            [24]  567 	push	ar6
      00098C C0 05            [24]  568 	push	ar5
      00098E 12 05 AF         [24]  569 	lcall	_SPI_transfer
      000991 AC 82            [24]  570 	mov	r4,dpl
      000993 D0 05            [24]  571 	pop	ar5
      000995 D0 06            [24]  572 	pop	ar6
      000997 D0 07            [24]  573 	pop	ar7
      000999 8D 82            [24]  574 	mov	dpl,r5
      00099B 8E 83            [24]  575 	mov	dph,r6
      00099D 8F F0            [24]  576 	mov	b,r7
      00099F EC               [12]  577 	mov	a,r4
      0009A0 12 0E 15         [24]  578 	lcall	__gptrput
                                    579 ;	./src/N76_W25Qxx.c:59: setb(SPI_Px_SS, SPI_PIN_SS);
      0009A3 43 90 02         [24]  580 	orl	_p1,#0x02
                                    581 ;	./src/N76_W25Qxx.c:60: }
      0009A6 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'W25Qxx_writeEnable'
                                    585 ;------------------------------------------------------------
                                    586 ;	./src/N76_W25Qxx.c:62: void W25Qxx_writeEnable(void)
                                    587 ;	-----------------------------------------
                                    588 ;	 function W25Qxx_writeEnable
                                    589 ;	-----------------------------------------
      0009A7                        590 _W25Qxx_writeEnable:
                                    591 ;	./src/N76_W25Qxx.c:64: W25Qxx_writeCmd(W25Q_CMD_WRITE_ENABLE);
      0009A7 75 82 06         [24]  592 	mov	dpl,#0x06
                                    593 ;	./src/N76_W25Qxx.c:65: }
      0009AA 02 08 FC         [24]  594 	ljmp	_W25Qxx_writeCmd
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'W25Qxx_writeDisable'
                                    597 ;------------------------------------------------------------
                                    598 ;	./src/N76_W25Qxx.c:67: void W25Qxx_writeDisable(void)
                                    599 ;	-----------------------------------------
                                    600 ;	 function W25Qxx_writeDisable
                                    601 ;	-----------------------------------------
      0009AD                        602 _W25Qxx_writeDisable:
                                    603 ;	./src/N76_W25Qxx.c:69: W25Qxx_writeCmd(W25Q_CMD_WRITE_DISABLE);
      0009AD 75 82 04         [24]  604 	mov	dpl,#0x04
                                    605 ;	./src/N76_W25Qxx.c:70: }
      0009B0 02 08 FC         [24]  606 	ljmp	_W25Qxx_writeCmd
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'W25Qxx_eraseChip'
                                    609 ;------------------------------------------------------------
                                    610 ;	./src/N76_W25Qxx.c:72: void W25Qxx_eraseChip(void)
                                    611 ;	-----------------------------------------
                                    612 ;	 function W25Qxx_eraseChip
                                    613 ;	-----------------------------------------
      0009B3                        614 _W25Qxx_eraseChip:
                                    615 ;	./src/N76_W25Qxx.c:74: W25Qxx_writeEnable();
      0009B3 12 09 A7         [24]  616 	lcall	_W25Qxx_writeEnable
                                    617 ;	./src/N76_W25Qxx.c:75: W25Qxx_writeCmd(W25Q_CMD_CHIP_ERASE);
      0009B6 75 82 C7         [24]  618 	mov	dpl,#0xc7
      0009B9 12 08 FC         [24]  619 	lcall	_W25Qxx_writeCmd
                                    620 ;	./src/N76_W25Qxx.c:76: W25Qxx_waitIdle();
      0009BC 12 0A 79         [24]  621 	lcall	_W25Qxx_waitIdle
                                    622 ;	./src/N76_W25Qxx.c:77: W25Qxx_writeDisable();
                                    623 ;	./src/N76_W25Qxx.c:78: }
      0009BF 02 09 AD         [24]  624 	ljmp	_W25Qxx_writeDisable
                                    625 ;------------------------------------------------------------
                                    626 ;Allocation info for local variables in function 'W25Qxx_eraseSectorBlock'
                                    627 ;------------------------------------------------------------
                                    628 ;num                       Allocated with name '_W25Qxx_eraseSectorBlock_PARM_2'
                                    629 ;cmd                       Allocated with name '_W25Qxx_eraseSectorBlock_cmd_65536_48'
                                    630 ;addr                      Allocated to registers r3 r4 r5 r6 
                                    631 ;------------------------------------------------------------
                                    632 ;	./src/N76_W25Qxx.c:80: uint8_t W25Qxx_eraseSectorBlock(uint8_t cmd, uint16_t num)
                                    633 ;	-----------------------------------------
                                    634 ;	 function W25Qxx_eraseSectorBlock
                                    635 ;	-----------------------------------------
      0009C2                        636 _W25Qxx_eraseSectorBlock:
      0009C2 85 82 1C         [24]  637 	mov	_W25Qxx_eraseSectorBlock_cmd_65536_48,dpl
                                    638 ;	./src/N76_W25Qxx.c:82: uint32_t addr = 0;
                                    639 ;	./src/N76_W25Qxx.c:83: if (cmd == W25Q_CMD_SECTOR_ERASE_4K)
      0009C5 E4               [12]  640 	clr	a
      0009C6 FB               [12]  641 	mov	r3,a
      0009C7 FC               [12]  642 	mov	r4,a
      0009C8 FD               [12]  643 	mov	r5,a
      0009C9 FE               [12]  644 	mov	r6,a
      0009CA 74 20            [12]  645 	mov	a,#0x20
      0009CC B5 1C 1C         [24]  646 	cjne	a,_W25Qxx_eraseSectorBlock_cmd_65536_48,00113$
                                    647 ;	./src/N76_W25Qxx.c:85: if (num >= SECTOR_SIZE_4K)
      0009CF 74 FC            [12]  648 	mov	a,#0x100 - 0x04
      0009D1 25 1B            [12]  649 	add	a,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
      0009D3 50 04            [24]  650 	jnc	00102$
                                    651 ;	./src/N76_W25Qxx.c:86: return W25Qxx_ERR_PARAM;
      0009D5 75 82 02         [24]  652 	mov	dpl,#0x02
      0009D8 22               [24]  653 	ret
      0009D9                        654 00102$:
                                    655 ;	./src/N76_W25Qxx.c:87: addr = SECTOR_BYTE_4K * num;
      0009D9 E5 1A            [12]  656 	mov	a,_W25Qxx_eraseSectorBlock_PARM_2
      0009DB C4               [12]  657 	swap	a
      0009DC 54 F0            [12]  658 	anl	a,#0xf0
      0009DE FA               [12]  659 	mov	r2,a
      0009DF 79 00            [12]  660 	mov	r1,#0x00
      0009E1 89 03            [24]  661 	mov	ar3,r1
      0009E3 8A 04            [24]  662 	mov	ar4,r2
      0009E5 7D 00            [12]  663 	mov	r5,#0x00
      0009E7 7E 00            [12]  664 	mov	r6,#0x00
      0009E9 80 5B            [24]  665 	sjmp	00114$
      0009EB                        666 00113$:
                                    667 ;	./src/N76_W25Qxx.c:89: else if (cmd == W25Q_CMD_BLOCK_ERASE_32K)
      0009EB 74 52            [12]  668 	mov	a,#0x52
      0009ED B5 1C 32         [24]  669 	cjne	a,_W25Qxx_eraseSectorBlock_cmd_65536_48,00110$
                                    670 ;	./src/N76_W25Qxx.c:91: if (num >= BLOCK_SIZE_32K)
      0009F0 C3               [12]  671 	clr	c
      0009F1 E5 1A            [12]  672 	mov	a,_W25Qxx_eraseSectorBlock_PARM_2
      0009F3 94 80            [12]  673 	subb	a,#0x80
      0009F5 E5 1B            [12]  674 	mov	a,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
      0009F7 94 00            [12]  675 	subb	a,#0x00
      0009F9 40 04            [24]  676 	jc	00104$
                                    677 ;	./src/N76_W25Qxx.c:92: return W25Qxx_ERR_PARAM;
      0009FB 75 82 02         [24]  678 	mov	dpl,#0x02
      0009FE 22               [24]  679 	ret
      0009FF                        680 00104$:
                                    681 ;	./src/N76_W25Qxx.c:93: addr = BLOCK_BYTE_32K * num;
      0009FF A8 1A            [24]  682 	mov	r0,_W25Qxx_eraseSectorBlock_PARM_2
      000A01 A9 1B            [24]  683 	mov	r1,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
      000A03 7A 00            [12]  684 	mov	r2,#0x00
      000A05 7F 00            [12]  685 	mov	r7,#0x00
      000A07 89 05            [24]  686 	mov	ar5,r1
      000A09 EA               [12]  687 	mov	a,r2
      000A0A 54 01            [12]  688 	anl	a,#0x01
      000A0C A2 E0            [12]  689 	mov	c,acc.0
      000A0E CD               [12]  690 	xch	a,r5
      000A0F 13               [12]  691 	rrc	a
      000A10 CD               [12]  692 	xch	a,r5
      000A11 13               [12]  693 	rrc	a
      000A12 CD               [12]  694 	xch	a,r5
      000A13 FE               [12]  695 	mov	r6,a
      000A14 E8               [12]  696 	mov	a,r0
      000A15 C3               [12]  697 	clr	c
      000A16 13               [12]  698 	rrc	a
      000A17 4D               [12]  699 	orl	a,r5
      000A18 FD               [12]  700 	mov	r5,a
      000A19 E8               [12]  701 	mov	a,r0
      000A1A 03               [12]  702 	rr	a
      000A1B 54 80            [12]  703 	anl	a,#0x80
      000A1D FC               [12]  704 	mov	r4,a
      000A1E 7B 00            [12]  705 	mov	r3,#0x00
      000A20 80 24            [24]  706 	sjmp	00114$
      000A22                        707 00110$:
                                    708 ;	./src/N76_W25Qxx.c:95: else if (cmd == W25Q_CMD_BLOCK_ERASE_64K)
      000A22 74 D8            [12]  709 	mov	a,#0xd8
      000A24 B5 1C 1F         [24]  710 	cjne	a,_W25Qxx_eraseSectorBlock_cmd_65536_48,00114$
                                    711 ;	./src/N76_W25Qxx.c:97: if (num >= BLOCK_SIZE_64K)
      000A27 C3               [12]  712 	clr	c
      000A28 E5 1A            [12]  713 	mov	a,_W25Qxx_eraseSectorBlock_PARM_2
      000A2A 94 40            [12]  714 	subb	a,#0x40
      000A2C E5 1B            [12]  715 	mov	a,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
      000A2E 94 00            [12]  716 	subb	a,#0x00
      000A30 40 04            [24]  717 	jc	00106$
                                    718 ;	./src/N76_W25Qxx.c:98: return W25Qxx_ERR_PARAM;
      000A32 75 82 02         [24]  719 	mov	dpl,#0x02
      000A35 22               [24]  720 	ret
      000A36                        721 00106$:
                                    722 ;	./src/N76_W25Qxx.c:99: addr = BLOCK_BYTE_64K * num;
      000A36 A8 1A            [24]  723 	mov	r0,_W25Qxx_eraseSectorBlock_PARM_2
      000A38 A9 1B            [24]  724 	mov	r1,(_W25Qxx_eraseSectorBlock_PARM_2 + 1)
      000A3A 7A 00            [12]  725 	mov	r2,#0x00
      000A3C 7F 00            [12]  726 	mov	r7,#0x00
      000A3E 89 06            [24]  727 	mov	ar6,r1
      000A40 88 05            [24]  728 	mov	ar5,r0
      000A42 7B 00            [12]  729 	mov	r3,#0x00
      000A44 7C 00            [12]  730 	mov	r4,#0x00
      000A46                        731 00114$:
                                    732 ;	./src/N76_W25Qxx.c:102: W25Qxx_writeEnable();
      000A46 C0 06            [24]  733 	push	ar6
      000A48 C0 05            [24]  734 	push	ar5
      000A4A C0 04            [24]  735 	push	ar4
      000A4C C0 03            [24]  736 	push	ar3
      000A4E 12 09 A7         [24]  737 	lcall	_W25Qxx_writeEnable
                                    738 ;	./src/N76_W25Qxx.c:104: clrb(SPI_Px_SS, SPI_PIN_SS);
      000A51 53 90 FD         [24]  739 	anl	_p1,#0xfd
                                    740 ;	./src/N76_W25Qxx.c:106: SPI_transfer(cmd);
      000A54 85 1C 82         [24]  741 	mov	dpl,_W25Qxx_eraseSectorBlock_cmd_65536_48
      000A57 12 05 AF         [24]  742 	lcall	_SPI_transfer
      000A5A D0 03            [24]  743 	pop	ar3
      000A5C D0 04            [24]  744 	pop	ar4
      000A5E D0 05            [24]  745 	pop	ar5
      000A60 D0 06            [24]  746 	pop	ar6
                                    747 ;	./src/N76_W25Qxx.c:107: W25Qxx_writeAddr(addr);
      000A62 8B 82            [24]  748 	mov	dpl,r3
      000A64 8C 83            [24]  749 	mov	dph,r4
      000A66 8D F0            [24]  750 	mov	b,r5
      000A68 EE               [12]  751 	mov	a,r6
      000A69 12 09 12         [24]  752 	lcall	_W25Qxx_writeAddr
                                    753 ;	./src/N76_W25Qxx.c:109: setb(SPI_Px_SS, SPI_PIN_SS);
      000A6C 43 90 02         [24]  754 	orl	_p1,#0x02
                                    755 ;	./src/N76_W25Qxx.c:110: W25Qxx_waitIdle();
      000A6F 12 0A 79         [24]  756 	lcall	_W25Qxx_waitIdle
                                    757 ;	./src/N76_W25Qxx.c:111: W25Qxx_writeDisable();
      000A72 12 09 AD         [24]  758 	lcall	_W25Qxx_writeDisable
                                    759 ;	./src/N76_W25Qxx.c:113: return W25Qxx_OK;
      000A75 75 82 00         [24]  760 	mov	dpl,#0x00
                                    761 ;	./src/N76_W25Qxx.c:114: }
      000A78 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'W25Qxx_waitIdle'
                                    765 ;------------------------------------------------------------
                                    766 ;u8Status                  Allocated to registers 
                                    767 ;------------------------------------------------------------
                                    768 ;	./src/N76_W25Qxx.c:116: void W25Qxx_waitIdle(void)
                                    769 ;	-----------------------------------------
                                    770 ;	 function W25Qxx_waitIdle
                                    771 ;	-----------------------------------------
      000A79                        772 _W25Qxx_waitIdle:
                                    773 ;	./src/N76_W25Qxx.c:120: clrb(SPI_Px_SS, SPI_PIN_SS);
      000A79 53 90 FD         [24]  774 	anl	_p1,#0xfd
                                    775 ;	./src/N76_W25Qxx.c:121: do
      000A7C                        776 00101$:
                                    777 ;	./src/N76_W25Qxx.c:123: SPI_transfer(W25Q_CMD_READ_STATUS_REG1);
      000A7C 75 82 05         [24]  778 	mov	dpl,#0x05
      000A7F 12 05 AF         [24]  779 	lcall	_SPI_transfer
                                    780 ;	./src/N76_W25Qxx.c:124: u8Status = SPI_transfer(0xFF);
      000A82 75 82 FF         [24]  781 	mov	dpl,#0xff
      000A85 12 05 AF         [24]  782 	lcall	_SPI_transfer
      000A88 E5 82            [12]  783 	mov	a,dpl
                                    784 ;	./src/N76_W25Qxx.c:125: } while (inbit(u8Status, REG1_BUSY) == 1);
      000A8A 54 01            [12]  785 	anl	a,#0x01
      000A8C FF               [12]  786 	mov	r7,a
      000A8D BF 01 02         [24]  787 	cjne	r7,#0x01,00114$
      000A90 80 EA            [24]  788 	sjmp	00101$
      000A92                        789 00114$:
                                    790 ;	./src/N76_W25Qxx.c:127: setb(SPI_Px_SS, SPI_PIN_SS);
      000A92 43 90 02         [24]  791 	orl	_p1,#0x02
                                    792 ;	./src/N76_W25Qxx.c:128: }
      000A95 22               [24]  793 	ret
                                    794 ;------------------------------------------------------------
                                    795 ;Allocation info for local variables in function 'W25Qxx_eraseVerify'
                                    796 ;------------------------------------------------------------
                                    797 ;i                         Allocated to registers r6 r7 
                                    798 ;u8Data                    Allocated to registers r5 
                                    799 ;------------------------------------------------------------
                                    800 ;	./src/N76_W25Qxx.c:130: uint8_t W25Qxx_eraseVerify(void)
                                    801 ;	-----------------------------------------
                                    802 ;	 function W25Qxx_eraseVerify
                                    803 ;	-----------------------------------------
      000A96                        804 _W25Qxx_eraseVerify:
                                    805 ;	./src/N76_W25Qxx.c:135: clrb(SPI_Px_SS, SPI_PIN_SS);
      000A96 53 90 FD         [24]  806 	anl	_p1,#0xfd
                                    807 ;	./src/N76_W25Qxx.c:137: SPI_transfer(W25Q_CMD_READ_DATA);
      000A99 75 82 03         [24]  808 	mov	dpl,#0x03
      000A9C 12 05 AF         [24]  809 	lcall	_SPI_transfer
                                    810 ;	./src/N76_W25Qxx.c:138: SPI_transfer(0x00);
      000A9F 75 82 00         [24]  811 	mov	dpl,#0x00
      000AA2 12 05 AF         [24]  812 	lcall	_SPI_transfer
                                    813 ;	./src/N76_W25Qxx.c:139: SPI_transfer(0x00);
      000AA5 75 82 00         [24]  814 	mov	dpl,#0x00
      000AA8 12 05 AF         [24]  815 	lcall	_SPI_transfer
                                    816 ;	./src/N76_W25Qxx.c:140: SPI_transfer(0x00);
      000AAB 75 82 00         [24]  817 	mov	dpl,#0x00
      000AAE 12 05 AF         [24]  818 	lcall	_SPI_transfer
                                    819 ;	./src/N76_W25Qxx.c:142: for (i = 0; i < 256; i++)
      000AB1 7E 00            [12]  820 	mov	r6,#0x00
      000AB3 7F 00            [12]  821 	mov	r7,#0x00
      000AB5                        822 00104$:
                                    823 ;	./src/N76_W25Qxx.c:144: u8Data = SPI_transfer(0x00);
      000AB5 75 82 00         [24]  824 	mov	dpl,#0x00
      000AB8 C0 07            [24]  825 	push	ar7
      000ABA C0 06            [24]  826 	push	ar6
      000ABC 12 05 AF         [24]  827 	lcall	_SPI_transfer
      000ABF AD 82            [24]  828 	mov	r5,dpl
      000AC1 D0 06            [24]  829 	pop	ar6
      000AC3 D0 07            [24]  830 	pop	ar7
                                    831 ;	./src/N76_W25Qxx.c:145: if (u8Data != 0xFF)
      000AC5 BD FF 02         [24]  832 	cjne	r5,#0xff,00120$
      000AC8 80 04            [24]  833 	sjmp	00105$
      000ACA                        834 00120$:
                                    835 ;	./src/N76_W25Qxx.c:147: return W25Qxx_ERR;
      000ACA 75 82 01         [24]  836 	mov	dpl,#0x01
      000ACD 22               [24]  837 	ret
      000ACE                        838 00105$:
                                    839 ;	./src/N76_W25Qxx.c:142: for (i = 0; i < 256; i++)
      000ACE 0E               [12]  840 	inc	r6
      000ACF BE 00 01         [24]  841 	cjne	r6,#0x00,00121$
      000AD2 0F               [12]  842 	inc	r7
      000AD3                        843 00121$:
      000AD3 8F 05            [24]  844 	mov	ar5,r7
      000AD5 74 FF            [12]  845 	mov	a,#0x100 - 0x01
      000AD7 2D               [12]  846 	add	a,r5
      000AD8 50 DB            [24]  847 	jnc	00104$
                                    848 ;	./src/N76_W25Qxx.c:151: setb(SPI_Px_SS, SPI_PIN_SS);
      000ADA 43 90 02         [24]  849 	orl	_p1,#0x02
                                    850 ;	./src/N76_W25Qxx.c:152: return W25Qxx_OK;
      000ADD 75 82 00         [24]  851 	mov	dpl,#0x00
                                    852 ;	./src/N76_W25Qxx.c:153: }
      000AE0 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'W25Qxx_writePage'
                                    856 ;------------------------------------------------------------
                                    857 ;data                      Allocated with name '_W25Qxx_writePage_PARM_2'
                                    858 ;pageNum                   Allocated to registers r4 r5 r6 r7 
                                    859 ;i                         Allocated to registers r4 r5 r6 r7 
                                    860 ;------------------------------------------------------------
                                    861 ;	./src/N76_W25Qxx.c:155: void W25Qxx_writePage(uint32_t pageNum, uint8_t *data)
                                    862 ;	-----------------------------------------
                                    863 ;	 function W25Qxx_writePage
                                    864 ;	-----------------------------------------
      000AE1                        865 _W25Qxx_writePage:
      000AE1 AC 82            [24]  866 	mov	r4,dpl
      000AE3 AD 83            [24]  867 	mov	r5,dph
      000AE5 AE F0            [24]  868 	mov	r6,b
                                    869 ;	./src/N76_W25Qxx.c:158: i = (uint32_t)pageNum * (uint32_t)PAGE_BYTE;
      000AE7 8E 07            [24]  870 	mov	ar7,r6
      000AE9 8D 06            [24]  871 	mov	ar6,r5
      000AEB 8C 05            [24]  872 	mov	ar5,r4
      000AED 7C 00            [12]  873 	mov	r4,#0x00
                                    874 ;	./src/N76_W25Qxx.c:160: W25Qxx_writeEnable();
      000AEF C0 07            [24]  875 	push	ar7
      000AF1 C0 06            [24]  876 	push	ar6
      000AF3 C0 05            [24]  877 	push	ar5
      000AF5 C0 04            [24]  878 	push	ar4
      000AF7 12 09 A7         [24]  879 	lcall	_W25Qxx_writeEnable
                                    880 ;	./src/N76_W25Qxx.c:162: clrb(SPI_Px_SS, SPI_PIN_SS);
      000AFA 53 90 FD         [24]  881 	anl	_p1,#0xfd
                                    882 ;	./src/N76_W25Qxx.c:163: SPI_transfer(W25Q_CMD_PAGE_PROGRAM);
      000AFD 75 82 02         [24]  883 	mov	dpl,#0x02
      000B00 12 05 AF         [24]  884 	lcall	_SPI_transfer
      000B03 D0 04            [24]  885 	pop	ar4
      000B05 D0 05            [24]  886 	pop	ar5
      000B07 D0 06            [24]  887 	pop	ar6
      000B09 D0 07            [24]  888 	pop	ar7
                                    889 ;	./src/N76_W25Qxx.c:164: W25Qxx_writeAddr(i);
      000B0B 8C 82            [24]  890 	mov	dpl,r4
      000B0D 8D 83            [24]  891 	mov	dph,r5
      000B0F 8E F0            [24]  892 	mov	b,r6
      000B11 EF               [12]  893 	mov	a,r7
      000B12 12 09 12         [24]  894 	lcall	_W25Qxx_writeAddr
                                    895 ;	./src/N76_W25Qxx.c:167: for (i = 0; i < PAGE_BYTE; i++)
      000B15 7C 00            [12]  896 	mov	r4,#0x00
      000B17 7D 00            [12]  897 	mov	r5,#0x00
      000B19 7E 00            [12]  898 	mov	r6,#0x00
      000B1B 7F 00            [12]  899 	mov	r7,#0x00
      000B1D                        900 00102$:
                                    901 ;	./src/N76_W25Qxx.c:169: SPI_transfer((uint8_t)data[i]);
      000B1D EC               [12]  902 	mov	a,r4
      000B1E 25 1D            [12]  903 	add	a,_W25Qxx_writePage_PARM_2
      000B20 F9               [12]  904 	mov	r1,a
      000B21 ED               [12]  905 	mov	a,r5
      000B22 35 1E            [12]  906 	addc	a,(_W25Qxx_writePage_PARM_2 + 1)
      000B24 FA               [12]  907 	mov	r2,a
      000B25 AB 1F            [24]  908 	mov	r3,(_W25Qxx_writePage_PARM_2 + 2)
      000B27 89 82            [24]  909 	mov	dpl,r1
      000B29 8A 83            [24]  910 	mov	dph,r2
      000B2B 8B F0            [24]  911 	mov	b,r3
      000B2D 12 0F B5         [24]  912 	lcall	__gptrget
      000B30 F5 82            [12]  913 	mov	dpl,a
      000B32 C0 07            [24]  914 	push	ar7
      000B34 C0 06            [24]  915 	push	ar6
      000B36 C0 05            [24]  916 	push	ar5
      000B38 C0 04            [24]  917 	push	ar4
      000B3A 12 05 AF         [24]  918 	lcall	_SPI_transfer
      000B3D D0 04            [24]  919 	pop	ar4
      000B3F D0 05            [24]  920 	pop	ar5
      000B41 D0 06            [24]  921 	pop	ar6
      000B43 D0 07            [24]  922 	pop	ar7
                                    923 ;	./src/N76_W25Qxx.c:167: for (i = 0; i < PAGE_BYTE; i++)
      000B45 0C               [12]  924 	inc	r4
      000B46 BC 00 09         [24]  925 	cjne	r4,#0x00,00115$
      000B49 0D               [12]  926 	inc	r5
      000B4A BD 00 05         [24]  927 	cjne	r5,#0x00,00115$
      000B4D 0E               [12]  928 	inc	r6
      000B4E BE 00 01         [24]  929 	cjne	r6,#0x00,00115$
      000B51 0F               [12]  930 	inc	r7
      000B52                        931 00115$:
      000B52 C3               [12]  932 	clr	c
      000B53 ED               [12]  933 	mov	a,r5
      000B54 94 01            [12]  934 	subb	a,#0x01
      000B56 EE               [12]  935 	mov	a,r6
      000B57 94 00            [12]  936 	subb	a,#0x00
      000B59 EF               [12]  937 	mov	a,r7
      000B5A 94 00            [12]  938 	subb	a,#0x00
      000B5C 40 BF            [24]  939 	jc	00102$
                                    940 ;	./src/N76_W25Qxx.c:171: setb(SPI_Px_SS, SPI_PIN_SS);
      000B5E 43 90 02         [24]  941 	orl	_p1,#0x02
                                    942 ;	./src/N76_W25Qxx.c:173: W25Qxx_waitIdle(); // wait ultil done
      000B61 12 0A 79         [24]  943 	lcall	_W25Qxx_waitIdle
                                    944 ;	./src/N76_W25Qxx.c:174: W25Qxx_writeDisable();
                                    945 ;	./src/N76_W25Qxx.c:175: }
      000B64 02 09 AD         [24]  946 	ljmp	_W25Qxx_writeDisable
                                    947 ;------------------------------------------------------------
                                    948 ;Allocation info for local variables in function 'W25Qxx_writeBuff'
                                    949 ;------------------------------------------------------------
                                    950 ;data                      Allocated with name '_W25Qxx_writeBuff_PARM_2'
                                    951 ;len                       Allocated with name '_W25Qxx_writeBuff_PARM_3'
                                    952 ;addr                      Allocated to registers r4 r5 r6 r7 
                                    953 ;i                         Allocated to registers r6 r7 
                                    954 ;------------------------------------------------------------
                                    955 ;	./src/N76_W25Qxx.c:177: void W25Qxx_writeBuff(uint32_t addr, uint8_t *data, uint16_t len)
                                    956 ;	-----------------------------------------
                                    957 ;	 function W25Qxx_writeBuff
                                    958 ;	-----------------------------------------
      000B67                        959 _W25Qxx_writeBuff:
      000B67 AC 82            [24]  960 	mov	r4,dpl
      000B69 AD 83            [24]  961 	mov	r5,dph
      000B6B AE F0            [24]  962 	mov	r6,b
      000B6D FF               [12]  963 	mov	r7,a
                                    964 ;	./src/N76_W25Qxx.c:181: W25Qxx_writeEnable();
      000B6E C0 07            [24]  965 	push	ar7
      000B70 C0 06            [24]  966 	push	ar6
      000B72 C0 05            [24]  967 	push	ar5
      000B74 C0 04            [24]  968 	push	ar4
      000B76 12 09 A7         [24]  969 	lcall	_W25Qxx_writeEnable
                                    970 ;	./src/N76_W25Qxx.c:182: clrb(SPI_Px_SS, SPI_PIN_SS);
      000B79 53 90 FD         [24]  971 	anl	_p1,#0xfd
                                    972 ;	./src/N76_W25Qxx.c:184: SPI_transfer(W25Q_CMD_PAGE_PROGRAM);
      000B7C 75 82 02         [24]  973 	mov	dpl,#0x02
      000B7F 12 05 AF         [24]  974 	lcall	_SPI_transfer
      000B82 D0 04            [24]  975 	pop	ar4
      000B84 D0 05            [24]  976 	pop	ar5
      000B86 D0 06            [24]  977 	pop	ar6
      000B88 D0 07            [24]  978 	pop	ar7
                                    979 ;	./src/N76_W25Qxx.c:185: W25Qxx_writeAddr(addr);
      000B8A 8C 82            [24]  980 	mov	dpl,r4
      000B8C 8D 83            [24]  981 	mov	dph,r5
      000B8E 8E F0            [24]  982 	mov	b,r6
      000B90 EF               [12]  983 	mov	a,r7
      000B91 12 09 12         [24]  984 	lcall	_W25Qxx_writeAddr
                                    985 ;	./src/N76_W25Qxx.c:188: for (i = 0; i < len; i++)
      000B94 7E 00            [12]  986 	mov	r6,#0x00
      000B96 7F 00            [12]  987 	mov	r7,#0x00
      000B98                        988 00103$:
      000B98 C3               [12]  989 	clr	c
      000B99 EE               [12]  990 	mov	a,r6
      000B9A 95 23            [12]  991 	subb	a,_W25Qxx_writeBuff_PARM_3
      000B9C EF               [12]  992 	mov	a,r7
      000B9D 95 24            [12]  993 	subb	a,(_W25Qxx_writeBuff_PARM_3 + 1)
      000B9F 50 27            [24]  994 	jnc	00101$
                                    995 ;	./src/N76_W25Qxx.c:190: SPI_transfer((uint8_t)data[i]);
      000BA1 EE               [12]  996 	mov	a,r6
      000BA2 25 20            [12]  997 	add	a,_W25Qxx_writeBuff_PARM_2
      000BA4 FB               [12]  998 	mov	r3,a
      000BA5 EF               [12]  999 	mov	a,r7
      000BA6 35 21            [12] 1000 	addc	a,(_W25Qxx_writeBuff_PARM_2 + 1)
      000BA8 FC               [12] 1001 	mov	r4,a
      000BA9 AD 22            [24] 1002 	mov	r5,(_W25Qxx_writeBuff_PARM_2 + 2)
      000BAB 8B 82            [24] 1003 	mov	dpl,r3
      000BAD 8C 83            [24] 1004 	mov	dph,r4
      000BAF 8D F0            [24] 1005 	mov	b,r5
      000BB1 12 0F B5         [24] 1006 	lcall	__gptrget
      000BB4 F5 82            [12] 1007 	mov	dpl,a
      000BB6 C0 07            [24] 1008 	push	ar7
      000BB8 C0 06            [24] 1009 	push	ar6
      000BBA 12 05 AF         [24] 1010 	lcall	_SPI_transfer
      000BBD D0 06            [24] 1011 	pop	ar6
      000BBF D0 07            [24] 1012 	pop	ar7
                                   1013 ;	./src/N76_W25Qxx.c:188: for (i = 0; i < len; i++)
      000BC1 0E               [12] 1014 	inc	r6
      000BC2 BE 00 D3         [24] 1015 	cjne	r6,#0x00,00103$
      000BC5 0F               [12] 1016 	inc	r7
      000BC6 80 D0            [24] 1017 	sjmp	00103$
      000BC8                       1018 00101$:
                                   1019 ;	./src/N76_W25Qxx.c:193: setb(SPI_Px_SS, SPI_PIN_SS);
      000BC8 43 90 02         [24] 1020 	orl	_p1,#0x02
                                   1021 ;	./src/N76_W25Qxx.c:194: W25Qxx_waitIdle(); // wait ultil done
      000BCB 12 0A 79         [24] 1022 	lcall	_W25Qxx_waitIdle
                                   1023 ;	./src/N76_W25Qxx.c:195: W25Qxx_writeDisable();
                                   1024 ;	./src/N76_W25Qxx.c:196: }
      000BCE 02 09 AD         [24] 1025 	ljmp	_W25Qxx_writeDisable
                                   1026 ;------------------------------------------------------------
                                   1027 ;Allocation info for local variables in function 'W25Qxx_readPage'
                                   1028 ;------------------------------------------------------------
                                   1029 ;data                      Allocated with name '_W25Qxx_readPage_PARM_2'
                                   1030 ;pageNum                   Allocated to registers r4 r5 r6 r7 
                                   1031 ;i                         Allocated to registers r4 r5 r6 r7 
                                   1032 ;------------------------------------------------------------
                                   1033 ;	./src/N76_W25Qxx.c:198: void W25Qxx_readPage(uint32_t pageNum, uint8_t *data)
                                   1034 ;	-----------------------------------------
                                   1035 ;	 function W25Qxx_readPage
                                   1036 ;	-----------------------------------------
      000BD1                       1037 _W25Qxx_readPage:
      000BD1 AC 82            [24] 1038 	mov	r4,dpl
      000BD3 AD 83            [24] 1039 	mov	r5,dph
      000BD5 AE F0            [24] 1040 	mov	r6,b
                                   1041 ;	./src/N76_W25Qxx.c:201: i = pageNum * PAGE_BYTE;
      000BD7 8E 07            [24] 1042 	mov	ar7,r6
      000BD9 8D 06            [24] 1043 	mov	ar6,r5
      000BDB 8C 05            [24] 1044 	mov	ar5,r4
      000BDD 7C 00            [12] 1045 	mov	r4,#0x00
                                   1046 ;	./src/N76_W25Qxx.c:203: clrb(SPI_Px_SS, SPI_PIN_SS);
      000BDF 53 90 FD         [24] 1047 	anl	_p1,#0xfd
                                   1048 ;	./src/N76_W25Qxx.c:204: SPI_transfer(W25Q_CMD_READ_DATA);
      000BE2 75 82 03         [24] 1049 	mov	dpl,#0x03
      000BE5 C0 07            [24] 1050 	push	ar7
      000BE7 C0 06            [24] 1051 	push	ar6
      000BE9 C0 05            [24] 1052 	push	ar5
      000BEB C0 04            [24] 1053 	push	ar4
      000BED 12 05 AF         [24] 1054 	lcall	_SPI_transfer
      000BF0 D0 04            [24] 1055 	pop	ar4
      000BF2 D0 05            [24] 1056 	pop	ar5
      000BF4 D0 06            [24] 1057 	pop	ar6
      000BF6 D0 07            [24] 1058 	pop	ar7
                                   1059 ;	./src/N76_W25Qxx.c:205: W25Qxx_writeAddr(i);
      000BF8 8C 82            [24] 1060 	mov	dpl,r4
      000BFA 8D 83            [24] 1061 	mov	dph,r5
      000BFC 8E F0            [24] 1062 	mov	b,r6
      000BFE EF               [12] 1063 	mov	a,r7
      000BFF 12 09 12         [24] 1064 	lcall	_W25Qxx_writeAddr
                                   1065 ;	./src/N76_W25Qxx.c:207: for (i = 0; i < PAGE_BYTE; i++)
      000C02 7C 00            [12] 1066 	mov	r4,#0x00
      000C04 7D 00            [12] 1067 	mov	r5,#0x00
      000C06 7E 00            [12] 1068 	mov	r6,#0x00
      000C08 7F 00            [12] 1069 	mov	r7,#0x00
      000C0A                       1070 00102$:
                                   1071 ;	./src/N76_W25Qxx.c:209: data[i] = SPI_transfer(0x00);
      000C0A EC               [12] 1072 	mov	a,r4
      000C0B 25 25            [12] 1073 	add	a,_W25Qxx_readPage_PARM_2
      000C0D F9               [12] 1074 	mov	r1,a
      000C0E ED               [12] 1075 	mov	a,r5
      000C0F 35 26            [12] 1076 	addc	a,(_W25Qxx_readPage_PARM_2 + 1)
      000C11 FA               [12] 1077 	mov	r2,a
      000C12 AB 27            [24] 1078 	mov	r3,(_W25Qxx_readPage_PARM_2 + 2)
      000C14 75 82 00         [24] 1079 	mov	dpl,#0x00
      000C17 C0 07            [24] 1080 	push	ar7
      000C19 C0 06            [24] 1081 	push	ar6
      000C1B C0 05            [24] 1082 	push	ar5
      000C1D C0 04            [24] 1083 	push	ar4
      000C1F C0 03            [24] 1084 	push	ar3
      000C21 C0 02            [24] 1085 	push	ar2
      000C23 C0 01            [24] 1086 	push	ar1
      000C25 12 05 AF         [24] 1087 	lcall	_SPI_transfer
      000C28 A8 82            [24] 1088 	mov	r0,dpl
      000C2A D0 01            [24] 1089 	pop	ar1
      000C2C D0 02            [24] 1090 	pop	ar2
      000C2E D0 03            [24] 1091 	pop	ar3
      000C30 D0 04            [24] 1092 	pop	ar4
      000C32 D0 05            [24] 1093 	pop	ar5
      000C34 D0 06            [24] 1094 	pop	ar6
      000C36 D0 07            [24] 1095 	pop	ar7
      000C38 89 82            [24] 1096 	mov	dpl,r1
      000C3A 8A 83            [24] 1097 	mov	dph,r2
      000C3C 8B F0            [24] 1098 	mov	b,r3
      000C3E E8               [12] 1099 	mov	a,r0
      000C3F 12 0E 15         [24] 1100 	lcall	__gptrput
                                   1101 ;	./src/N76_W25Qxx.c:207: for (i = 0; i < PAGE_BYTE; i++)
      000C42 0C               [12] 1102 	inc	r4
      000C43 BC 00 09         [24] 1103 	cjne	r4,#0x00,00115$
      000C46 0D               [12] 1104 	inc	r5
      000C47 BD 00 05         [24] 1105 	cjne	r5,#0x00,00115$
      000C4A 0E               [12] 1106 	inc	r6
      000C4B BE 00 01         [24] 1107 	cjne	r6,#0x00,00115$
      000C4E 0F               [12] 1108 	inc	r7
      000C4F                       1109 00115$:
      000C4F C3               [12] 1110 	clr	c
      000C50 ED               [12] 1111 	mov	a,r5
      000C51 94 01            [12] 1112 	subb	a,#0x01
      000C53 EE               [12] 1113 	mov	a,r6
      000C54 94 00            [12] 1114 	subb	a,#0x00
      000C56 EF               [12] 1115 	mov	a,r7
      000C57 94 00            [12] 1116 	subb	a,#0x00
      000C59 40 AF            [24] 1117 	jc	00102$
                                   1118 ;	./src/N76_W25Qxx.c:211: setb(SPI_Px_SS, SPI_PIN_SS);
      000C5B 43 90 02         [24] 1119 	orl	_p1,#0x02
                                   1120 ;	./src/N76_W25Qxx.c:212: }//-----------------------------------------------------------------------------------------------------------
      000C5E 22               [24] 1121 	ret
                                   1122 ;------------------------------------------------------------
                                   1123 ;Allocation info for local variables in function 'W25Qxx_readBuff'
                                   1124 ;------------------------------------------------------------
                                   1125 ;data                      Allocated with name '_W25Qxx_readBuff_PARM_2'
                                   1126 ;len                       Allocated with name '_W25Qxx_readBuff_PARM_3'
                                   1127 ;addr                      Allocated to registers r4 r5 r6 r7 
                                   1128 ;i                         Allocated to registers r6 r7 
                                   1129 ;------------------------------------------------------------
                                   1130 ;	./src/N76_W25Qxx.c:213: void W25Qxx_readBuff(uint32_t addr, uint8_t *data, uint32_t len)
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function W25Qxx_readBuff
                                   1133 ;	-----------------------------------------
      000C5F                       1134 _W25Qxx_readBuff:
      000C5F AC 82            [24] 1135 	mov	r4,dpl
      000C61 AD 83            [24] 1136 	mov	r5,dph
      000C63 AE F0            [24] 1137 	mov	r6,b
      000C65 FF               [12] 1138 	mov	r7,a
                                   1139 ;	./src/N76_W25Qxx.c:217: clrb(SPI_Px_SS, SPI_PIN_SS);
      000C66 53 90 FD         [24] 1140 	anl	_p1,#0xfd
                                   1141 ;	./src/N76_W25Qxx.c:218: SPI_transfer(W25Q_CMD_READ_DATA);
      000C69 75 82 03         [24] 1142 	mov	dpl,#0x03
      000C6C C0 07            [24] 1143 	push	ar7
      000C6E C0 06            [24] 1144 	push	ar6
      000C70 C0 05            [24] 1145 	push	ar5
      000C72 C0 04            [24] 1146 	push	ar4
      000C74 12 05 AF         [24] 1147 	lcall	_SPI_transfer
      000C77 D0 04            [24] 1148 	pop	ar4
      000C79 D0 05            [24] 1149 	pop	ar5
      000C7B D0 06            [24] 1150 	pop	ar6
      000C7D D0 07            [24] 1151 	pop	ar7
                                   1152 ;	./src/N76_W25Qxx.c:219: W25Qxx_writeAddr(addr);
      000C7F 8C 82            [24] 1153 	mov	dpl,r4
      000C81 8D 83            [24] 1154 	mov	dph,r5
      000C83 8E F0            [24] 1155 	mov	b,r6
      000C85 EF               [12] 1156 	mov	a,r7
      000C86 12 09 12         [24] 1157 	lcall	_W25Qxx_writeAddr
                                   1158 ;	./src/N76_W25Qxx.c:221: for (i = 0; i < len; i++)
      000C89 7E 00            [12] 1159 	mov	r6,#0x00
      000C8B 7F 00            [12] 1160 	mov	r7,#0x00
      000C8D                       1161 00103$:
      000C8D 8E 02            [24] 1162 	mov	ar2,r6
      000C8F 8F 03            [24] 1163 	mov	ar3,r7
      000C91 7C 00            [12] 1164 	mov	r4,#0x00
      000C93 7D 00            [12] 1165 	mov	r5,#0x00
      000C95 C3               [12] 1166 	clr	c
      000C96 EA               [12] 1167 	mov	a,r2
      000C97 95 2B            [12] 1168 	subb	a,_W25Qxx_readBuff_PARM_3
      000C99 EB               [12] 1169 	mov	a,r3
      000C9A 95 2C            [12] 1170 	subb	a,(_W25Qxx_readBuff_PARM_3 + 1)
      000C9C EC               [12] 1171 	mov	a,r4
      000C9D 95 2D            [12] 1172 	subb	a,(_W25Qxx_readBuff_PARM_3 + 2)
      000C9F ED               [12] 1173 	mov	a,r5
      000CA0 95 2E            [12] 1174 	subb	a,(_W25Qxx_readBuff_PARM_3 + 3)
      000CA2 50 37            [24] 1175 	jnc	00101$
                                   1176 ;	./src/N76_W25Qxx.c:223: data[i] = SPI_transfer(0x00);
      000CA4 EE               [12] 1177 	mov	a,r6
      000CA5 25 28            [12] 1178 	add	a,_W25Qxx_readBuff_PARM_2
      000CA7 FB               [12] 1179 	mov	r3,a
      000CA8 EF               [12] 1180 	mov	a,r7
      000CA9 35 29            [12] 1181 	addc	a,(_W25Qxx_readBuff_PARM_2 + 1)
      000CAB FC               [12] 1182 	mov	r4,a
      000CAC AD 2A            [24] 1183 	mov	r5,(_W25Qxx_readBuff_PARM_2 + 2)
      000CAE 75 82 00         [24] 1184 	mov	dpl,#0x00
      000CB1 C0 07            [24] 1185 	push	ar7
      000CB3 C0 06            [24] 1186 	push	ar6
      000CB5 C0 05            [24] 1187 	push	ar5
      000CB7 C0 04            [24] 1188 	push	ar4
      000CB9 C0 03            [24] 1189 	push	ar3
      000CBB 12 05 AF         [24] 1190 	lcall	_SPI_transfer
      000CBE AA 82            [24] 1191 	mov	r2,dpl
      000CC0 D0 03            [24] 1192 	pop	ar3
      000CC2 D0 04            [24] 1193 	pop	ar4
      000CC4 D0 05            [24] 1194 	pop	ar5
      000CC6 D0 06            [24] 1195 	pop	ar6
      000CC8 D0 07            [24] 1196 	pop	ar7
      000CCA 8B 82            [24] 1197 	mov	dpl,r3
      000CCC 8C 83            [24] 1198 	mov	dph,r4
      000CCE 8D F0            [24] 1199 	mov	b,r5
      000CD0 EA               [12] 1200 	mov	a,r2
      000CD1 12 0E 15         [24] 1201 	lcall	__gptrput
                                   1202 ;	./src/N76_W25Qxx.c:221: for (i = 0; i < len; i++)
      000CD4 0E               [12] 1203 	inc	r6
      000CD5 BE 00 B5         [24] 1204 	cjne	r6,#0x00,00103$
      000CD8 0F               [12] 1205 	inc	r7
      000CD9 80 B2            [24] 1206 	sjmp	00103$
      000CDB                       1207 00101$:
                                   1208 ;	./src/N76_W25Qxx.c:225: setb(SPI_Px_SS, SPI_PIN_SS);
      000CDB 43 90 02         [24] 1209 	orl	_p1,#0x02
                                   1210 ;	./src/N76_W25Qxx.c:226: }
      000CDE 22               [24] 1211 	ret
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'W25Qxx_writeVerify'
                                   1214 ;------------------------------------------------------------
                                   1215 ;i                         Allocated to registers r6 r7 
                                   1216 ;u8Data                    Allocated to registers r5 
                                   1217 ;------------------------------------------------------------
                                   1218 ;	./src/N76_W25Qxx.c:228: uint8_t W25Qxx_writeVerify(void)
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function W25Qxx_writeVerify
                                   1221 ;	-----------------------------------------
      000CDF                       1222 _W25Qxx_writeVerify:
                                   1223 ;	./src/N76_W25Qxx.c:233: clrb(SPI_Px_SS, SPI_PIN_SS);
      000CDF 53 90 FD         [24] 1224 	anl	_p1,#0xfd
                                   1225 ;	./src/N76_W25Qxx.c:235: SPI_transfer(W25Q_CMD_READ_DATA);
      000CE2 75 82 03         [24] 1226 	mov	dpl,#0x03
      000CE5 12 05 AF         [24] 1227 	lcall	_SPI_transfer
                                   1228 ;	./src/N76_W25Qxx.c:236: SPI_transfer(0x00);
      000CE8 75 82 00         [24] 1229 	mov	dpl,#0x00
      000CEB 12 05 AF         [24] 1230 	lcall	_SPI_transfer
                                   1231 ;	./src/N76_W25Qxx.c:237: SPI_transfer(0x00);
      000CEE 75 82 00         [24] 1232 	mov	dpl,#0x00
      000CF1 12 05 AF         [24] 1233 	lcall	_SPI_transfer
                                   1234 ;	./src/N76_W25Qxx.c:238: SPI_transfer(0x00);
      000CF4 75 82 00         [24] 1235 	mov	dpl,#0x00
      000CF7 12 05 AF         [24] 1236 	lcall	_SPI_transfer
                                   1237 ;	./src/N76_W25Qxx.c:240: for (i = 0; i < 256; i++)
      000CFA 7E 00            [12] 1238 	mov	r6,#0x00
      000CFC 7F 00            [12] 1239 	mov	r7,#0x00
      000CFE                       1240 00104$:
                                   1241 ;	./src/N76_W25Qxx.c:242: u8Data = SPI_transfer(0x00);
      000CFE 75 82 00         [24] 1242 	mov	dpl,#0x00
      000D01 C0 07            [24] 1243 	push	ar7
      000D03 C0 06            [24] 1244 	push	ar6
      000D05 12 05 AF         [24] 1245 	lcall	_SPI_transfer
      000D08 AD 82            [24] 1246 	mov	r5,dpl
      000D0A D0 06            [24] 1247 	pop	ar6
      000D0C D0 07            [24] 1248 	pop	ar7
                                   1249 ;	./src/N76_W25Qxx.c:244: if (u8Data != (uint8_t)i)
      000D0E 8E 04            [24] 1250 	mov	ar4,r6
      000D10 ED               [12] 1251 	mov	a,r5
      000D11 B5 04 02         [24] 1252 	cjne	a,ar4,00120$
      000D14 80 04            [24] 1253 	sjmp	00105$
      000D16                       1254 00120$:
                                   1255 ;	./src/N76_W25Qxx.c:246: return W25Qxx_ERR;
      000D16 75 82 01         [24] 1256 	mov	dpl,#0x01
      000D19 22               [24] 1257 	ret
      000D1A                       1258 00105$:
                                   1259 ;	./src/N76_W25Qxx.c:240: for (i = 0; i < 256; i++)
      000D1A 0E               [12] 1260 	inc	r6
      000D1B BE 00 01         [24] 1261 	cjne	r6,#0x00,00121$
      000D1E 0F               [12] 1262 	inc	r7
      000D1F                       1263 00121$:
      000D1F 8F 05            [24] 1264 	mov	ar5,r7
      000D21 74 FF            [12] 1265 	mov	a,#0x100 - 0x01
      000D23 2D               [12] 1266 	add	a,r5
      000D24 50 D8            [24] 1267 	jnc	00104$
                                   1268 ;	./src/N76_W25Qxx.c:249: setb(SPI_Px_SS, SPI_PIN_SS);
      000D26 43 90 02         [24] 1269 	orl	_p1,#0x02
                                   1270 ;	./src/N76_W25Qxx.c:251: return W25Qxx_OK;
      000D29 75 82 00         [24] 1271 	mov	dpl,#0x00
                                   1272 ;	./src/N76_W25Qxx.c:252: }
      000D2C 22               [24] 1273 	ret
                                   1274 	.area CSEG    (CODE)
                                   1275 	.area CONST   (CODE)
                                   1276 	.area CONST   (CODE)
      001093                       1277 ___str_0:
      001093 0A                    1278 	.db 0x0a
      001094 2A 20 20 53 50 49 20  1279 	.ascii "*  SPI Error, please check the connection between MCU and SP"
             45 72 72 6F 72 2C 20
             70 6C 65 61 73 65 20
             63 68 65 63 6B 20 74
             68 65 20 63 6F 6E 6E
             65 63 74 69 6F 6E 20
             62 65 74 77 65 65 6E
             20 4D 43 55 20 61 6E
             64 20 53 50
      0010D0 49 20 46 6C 61 73 68  1280 	.ascii "I Flash"
      0010D7 00                    1281 	.db 0x00
                                   1282 	.area CSEG    (CODE)
                                   1283 	.area XINIT   (CODE)
                                   1284 	.area CABS    (ABS,CODE)
