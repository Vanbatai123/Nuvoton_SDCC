                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module N76_SPI
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SPI_aetachInterrupt
                                     12 	.globl _eiph1
                                     13 	.globl _eip1
                                     14 	.globl _pmd
                                     15 	.globl _pmen
                                     16 	.globl _pdtcnt
                                     17 	.globl _pdten
                                     18 	.globl _scon_1
                                     19 	.globl _eiph
                                     20 	.globl _aindids
                                     21 	.globl _spdr
                                     22 	.globl _spsr
                                     23 	.globl _spcr2
                                     24 	.globl _spcr
                                     25 	.globl _capcon4
                                     26 	.globl _capcon3
                                     27 	.globl _b
                                     28 	.globl _eip
                                     29 	.globl _c2h
                                     30 	.globl _c2l
                                     31 	.globl _pif
                                     32 	.globl _pipen
                                     33 	.globl _pinen
                                     34 	.globl _picon
                                     35 	.globl _adccon0
                                     36 	.globl _c1h
                                     37 	.globl _c1l
                                     38 	.globl _c0h
                                     39 	.globl _c0l
                                     40 	.globl _adcdly
                                     41 	.globl _adccon2
                                     42 	.globl _adccon1
                                     43 	.globl _acc
                                     44 	.globl _pwmcon1
                                     45 	.globl _piocon0
                                     46 	.globl _pwm3l
                                     47 	.globl _pwm2l
                                     48 	.globl _pwm1l
                                     49 	.globl _pwm0l
                                     50 	.globl _pwmpl
                                     51 	.globl _pwmcon0
                                     52 	.globl _fbd
                                     53 	.globl _pnp
                                     54 	.globl _pwm3h
                                     55 	.globl _pwm2h
                                     56 	.globl _pwm1h
                                     57 	.globl _pwm0h
                                     58 	.globl _pwmph
                                     59 	.globl _psw
                                     60 	.globl _adcmph
                                     61 	.globl _adcmpl
                                     62 	.globl _pwm5l
                                     63 	.globl _th2
                                     64 	.globl _pwm4l
                                     65 	.globl _tl2
                                     66 	.globl _rcmp2h
                                     67 	.globl _rcmp2l
                                     68 	.globl _t2mod
                                     69 	.globl _t2con
                                     70 	.globl _ta
                                     71 	.globl _piocon1
                                     72 	.globl _rh3
                                     73 	.globl _pwm5h
                                     74 	.globl _rl3
                                     75 	.globl _pwm4h
                                     76 	.globl _t3con
                                     77 	.globl _adcrh
                                     78 	.globl _adcrl
                                     79 	.globl _i2addr
                                     80 	.globl _i2con
                                     81 	.globl _i2toc
                                     82 	.globl _i2clk
                                     83 	.globl _i2stat
                                     84 	.globl _i2dat
                                     85 	.globl _saddr_1
                                     86 	.globl _saden_1
                                     87 	.globl _saden
                                     88 	.globl _ip
                                     89 	.globl _pwmintc
                                     90 	.globl _iph
                                     91 	.globl _p2s
                                     92 	.globl _p1sr
                                     93 	.globl _p1m2
                                     94 	.globl _p1s
                                     95 	.globl _p1m1
                                     96 	.globl _p0sr
                                     97 	.globl _p0m2
                                     98 	.globl _p0s
                                     99 	.globl _p0m1
                                    100 	.globl _p3
                                    101 	.globl _iapcn
                                    102 	.globl _iapfd
                                    103 	.globl _p3sr
                                    104 	.globl _p3m2
                                    105 	.globl _p3s
                                    106 	.globl _p3m1
                                    107 	.globl _bodcon1
                                    108 	.globl _wdcon
                                    109 	.globl _saddr
                                    110 	.globl _ie
                                    111 	.globl _iapah
                                    112 	.globl _iapal
                                    113 	.globl _iapuen
                                    114 	.globl _iaptrg
                                    115 	.globl _bodcon0
                                    116 	.globl _auxr1
                                    117 	.globl _p2
                                    118 	.globl _chpcon
                                    119 	.globl _eie1
                                    120 	.globl _eie
                                    121 	.globl _sbuf_1
                                    122 	.globl _sbuf
                                    123 	.globl _scon
                                    124 	.globl _cken
                                    125 	.globl _ckswt
                                    126 	.globl _ckdiv
                                    127 	.globl _capcon2
                                    128 	.globl _capcon1
                                    129 	.globl _capcon0
                                    130 	.globl _sfrs
                                    131 	.globl _p1
                                    132 	.globl _wkcon
                                    133 	.globl _ckcon
                                    134 	.globl _th1
                                    135 	.globl _th0
                                    136 	.globl _tl1
                                    137 	.globl _tl0
                                    138 	.globl _tmod
                                    139 	.globl _tcon
                                    140 	.globl _pcon
                                    141 	.globl _rwk
                                    142 	.globl _rctrim1
                                    143 	.globl _rctrim0
                                    144 	.globl _dph
                                    145 	.globl _dpl
                                    146 	.globl _sp
                                    147 	.globl _p0
                                    148 	.globl _SPI_begin
                                    149 	.globl _SPI_transfer
                                    150 	.globl _SPI_setBitOrder
                                    151 	.globl _SPI_setDataMode
                                    152 	.globl _SPI_setClockDivider
                                    153 	.globl _SPI_attachInterrupt
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _p0	=	0x0080
                           000081   160 _sp	=	0x0081
                           000082   161 _dpl	=	0x0082
                           000083   162 _dph	=	0x0083
                           000084   163 _rctrim0	=	0x0084
                           000085   164 _rctrim1	=	0x0085
                           000086   165 _rwk	=	0x0086
                           000087   166 _pcon	=	0x0087
                           000088   167 _tcon	=	0x0088
                           000089   168 _tmod	=	0x0089
                           00008A   169 _tl0	=	0x008a
                           00008B   170 _tl1	=	0x008b
                           00008C   171 _th0	=	0x008c
                           00008D   172 _th1	=	0x008d
                           00008E   173 _ckcon	=	0x008e
                           00008F   174 _wkcon	=	0x008f
                           000090   175 _p1	=	0x0090
                           000091   176 _sfrs	=	0x0091
                           000092   177 _capcon0	=	0x0092
                           000093   178 _capcon1	=	0x0093
                           000094   179 _capcon2	=	0x0094
                           000095   180 _ckdiv	=	0x0095
                           000096   181 _ckswt	=	0x0096
                           000097   182 _cken	=	0x0097
                           000098   183 _scon	=	0x0098
                           000099   184 _sbuf	=	0x0099
                           00009A   185 _sbuf_1	=	0x009a
                           00009B   186 _eie	=	0x009b
                           00009C   187 _eie1	=	0x009c
                           00009F   188 _chpcon	=	0x009f
                           0000A0   189 _p2	=	0x00a0
                           0000A2   190 _auxr1	=	0x00a2
                           0000A3   191 _bodcon0	=	0x00a3
                           0000A4   192 _iaptrg	=	0x00a4
                           0000A5   193 _iapuen	=	0x00a5
                           0000A6   194 _iapal	=	0x00a6
                           0000A7   195 _iapah	=	0x00a7
                           0000A8   196 _ie	=	0x00a8
                           0000A9   197 _saddr	=	0x00a9
                           0000AA   198 _wdcon	=	0x00aa
                           0000AB   199 _bodcon1	=	0x00ab
                           0000AC   200 _p3m1	=	0x00ac
                           0000AC   201 _p3s	=	0x00ac
                           0000AD   202 _p3m2	=	0x00ad
                           0000AD   203 _p3sr	=	0x00ad
                           0000AE   204 _iapfd	=	0x00ae
                           0000AF   205 _iapcn	=	0x00af
                           0000B0   206 _p3	=	0x00b0
                           0000B1   207 _p0m1	=	0x00b1
                           0000B1   208 _p0s	=	0x00b1
                           0000B2   209 _p0m2	=	0x00b2
                           0000B2   210 _p0sr	=	0x00b2
                           0000B3   211 _p1m1	=	0x00b3
                           0000B3   212 _p1s	=	0x00b3
                           0000B4   213 _p1m2	=	0x00b4
                           0000B4   214 _p1sr	=	0x00b4
                           0000B5   215 _p2s	=	0x00b5
                           0000B7   216 _iph	=	0x00b7
                           0000B7   217 _pwmintc	=	0x00b7
                           0000B8   218 _ip	=	0x00b8
                           0000B9   219 _saden	=	0x00b9
                           0000BA   220 _saden_1	=	0x00ba
                           0000BB   221 _saddr_1	=	0x00bb
                           0000BC   222 _i2dat	=	0x00bc
                           0000BD   223 _i2stat	=	0x00bd
                           0000BE   224 _i2clk	=	0x00be
                           0000BF   225 _i2toc	=	0x00bf
                           0000C0   226 _i2con	=	0x00c0
                           0000C1   227 _i2addr	=	0x00c1
                           0000C2   228 _adcrl	=	0x00c2
                           0000C3   229 _adcrh	=	0x00c3
                           0000C4   230 _t3con	=	0x00c4
                           0000C4   231 _pwm4h	=	0x00c4
                           0000C5   232 _rl3	=	0x00c5
                           0000C5   233 _pwm5h	=	0x00c5
                           0000C6   234 _rh3	=	0x00c6
                           0000C6   235 _piocon1	=	0x00c6
                           0000C7   236 _ta	=	0x00c7
                           0000C8   237 _t2con	=	0x00c8
                           0000C9   238 _t2mod	=	0x00c9
                           0000CA   239 _rcmp2l	=	0x00ca
                           0000CB   240 _rcmp2h	=	0x00cb
                           0000CC   241 _tl2	=	0x00cc
                           0000CC   242 _pwm4l	=	0x00cc
                           0000CD   243 _th2	=	0x00cd
                           0000CD   244 _pwm5l	=	0x00cd
                           0000CE   245 _adcmpl	=	0x00ce
                           0000CF   246 _adcmph	=	0x00cf
                           0000D0   247 _psw	=	0x00d0
                           0000D1   248 _pwmph	=	0x00d1
                           0000D2   249 _pwm0h	=	0x00d2
                           0000D3   250 _pwm1h	=	0x00d3
                           0000D4   251 _pwm2h	=	0x00d4
                           0000D5   252 _pwm3h	=	0x00d5
                           0000D6   253 _pnp	=	0x00d6
                           0000D7   254 _fbd	=	0x00d7
                           0000D8   255 _pwmcon0	=	0x00d8
                           0000D9   256 _pwmpl	=	0x00d9
                           0000DA   257 _pwm0l	=	0x00da
                           0000DB   258 _pwm1l	=	0x00db
                           0000DC   259 _pwm2l	=	0x00dc
                           0000DD   260 _pwm3l	=	0x00dd
                           0000DE   261 _piocon0	=	0x00de
                           0000DF   262 _pwmcon1	=	0x00df
                           0000E0   263 _acc	=	0x00e0
                           0000E1   264 _adccon1	=	0x00e1
                           0000E2   265 _adccon2	=	0x00e2
                           0000E3   266 _adcdly	=	0x00e3
                           0000E4   267 _c0l	=	0x00e4
                           0000E5   268 _c0h	=	0x00e5
                           0000E6   269 _c1l	=	0x00e6
                           0000E7   270 _c1h	=	0x00e7
                           0000E8   271 _adccon0	=	0x00e8
                           0000E9   272 _picon	=	0x00e9
                           0000EA   273 _pinen	=	0x00ea
                           0000EB   274 _pipen	=	0x00eb
                           0000EC   275 _pif	=	0x00ec
                           0000ED   276 _c2l	=	0x00ed
                           0000EE   277 _c2h	=	0x00ee
                           0000EF   278 _eip	=	0x00ef
                           0000F0   279 _b	=	0x00f0
                           0000F1   280 _capcon3	=	0x00f1
                           0000F2   281 _capcon4	=	0x00f2
                           0000F3   282 _spcr	=	0x00f3
                           0000F3   283 _spcr2	=	0x00f3
                           0000F4   284 _spsr	=	0x00f4
                           0000F5   285 _spdr	=	0x00f5
                           0000F6   286 _aindids	=	0x00f6
                           0000F7   287 _eiph	=	0x00f7
                           0000F8   288 _scon_1	=	0x00f8
                           0000F9   289 _pdten	=	0x00f9
                           0000FA   290 _pdtcnt	=	0x00fa
                           0000FB   291 _pmen	=	0x00fb
                           0000FC   292 _pmd	=	0x00fc
                           0000FE   293 _eip1	=	0x00fe
                           0000FF   294 _eiph1	=	0x00ff
                                    295 ;--------------------------------------------------------
                                    296 ; special function bits
                                    297 ;--------------------------------------------------------
                                    298 	.area RSEG    (ABS,DATA)
      000000                        299 	.org 0x0000
                                    300 ;--------------------------------------------------------
                                    301 ; overlayable register banks
                                    302 ;--------------------------------------------------------
                                    303 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        304 	.ds 8
                                    305 ;--------------------------------------------------------
                                    306 ; internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area DSEG    (DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable items in internal ram
                                    311 ;--------------------------------------------------------
                                    312 	.area	OSEG    (OVR,DATA)
                                    313 	.area	OSEG    (OVR,DATA)
                                    314 	.area	OSEG    (OVR,DATA)
                                    315 	.area	OSEG    (OVR,DATA)
                                    316 	.area	OSEG    (OVR,DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; indirectly addressable internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area ISEG    (DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; absolute internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area IABS    (ABS,DATA)
                                    325 	.area IABS    (ABS,DATA)
                                    326 ;--------------------------------------------------------
                                    327 ; bit data
                                    328 ;--------------------------------------------------------
                                    329 	.area BSEG    (BIT)
                                    330 ;--------------------------------------------------------
                                    331 ; paged external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area PSEG    (PAG,XDATA)
                                    334 ;--------------------------------------------------------
                                    335 ; external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area XSEG    (XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; absolute external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XABS    (ABS,XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; external initialized ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XISEG   (XDATA)
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT0 (CODE)
                                    348 	.area GSINIT1 (CODE)
                                    349 	.area GSINIT2 (CODE)
                                    350 	.area GSINIT3 (CODE)
                                    351 	.area GSINIT4 (CODE)
                                    352 	.area GSINIT5 (CODE)
                                    353 	.area GSINIT  (CODE)
                                    354 	.area GSFINAL (CODE)
                                    355 	.area CSEG    (CODE)
                                    356 ;--------------------------------------------------------
                                    357 ; global & static initialisations
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 ;--------------------------------------------------------
                                    364 ; Home
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
                                    367 	.area HOME    (CODE)
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'SPI_begin'
                                    374 ;------------------------------------------------------------
                                    375 ;spi_mode                  Allocated to registers r7 
                                    376 ;------------------------------------------------------------
                                    377 ;	./src/N76_SPI.c:10: void SPI_begin(uint8_t spi_mode)
                                    378 ;	-----------------------------------------
                                    379 ;	 function SPI_begin
                                    380 ;	-----------------------------------------
      000585                        381 _SPI_begin:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
      000585 AF 82            [24]  390 	mov	r7,dpl
                                    391 ;	./src/N76_SPI.c:12: setb(SPSR, DISMODF); // SS pin user define
      000587 43 F4 08         [24]  392 	orl	_spsr,#0x08
                                    393 ;	./src/N76_SPI.c:13: clrb(SPCR, SSOE);	 // SS pin user define
      00058A 53 F3 7F         [24]  394 	anl	_spcr,#0x7f
                                    395 ;	./src/N76_SPI.c:14: if (spi_mode == SPI_MODE_MASTER)
      00058D EF               [12]  396 	mov	a,r7
      00058E 70 1E            [24]  397 	jnz	00104$
                                    398 ;	./src/N76_SPI.c:16: SPCR |= (1 << SPIEN) | (1 << MSTR);
      000590 43 F3 50         [24]  399 	orl	_spcr,#0x50
                                    400 ;	./src/N76_SPI.c:21: setb(SPI_Px_SS, SPI_PIN_SS);
      000593 43 90 02         [24]  401 	orl	_p1,#0x02
                                    402 ;	./src/N76_SPI.c:23: clrb(SPI_PxM1_CLK, SPI_PIN_CLK);
      000596 53 B3 FE         [24]  403 	anl	_p1m1,#0xfe
                                    404 ;	./src/N76_SPI.c:24: clrb(SPI_PxM1_MOSI, SPI_PIN_MOSI);
      000599 53 B1 FE         [24]  405 	anl	_p0m1,#0xfe
                                    406 ;	./src/N76_SPI.c:25: setb(SPI_PxM1_MISO, SPI_PIN_MISO);
      00059C 43 B1 02         [24]  407 	orl	_p0m1,#0x02
                                    408 ;	./src/N76_SPI.c:26: clrb(SPI_PxM1_SS, SPI_PIN_SS);
      00059F 53 B3 FD         [24]  409 	anl	_p1m1,#0xfd
                                    410 ;	./src/N76_SPI.c:28: setb(SPI_PxM2_CLK, SPI_PIN_CLK);
      0005A2 43 B4 01         [24]  411 	orl	_p1m2,#0x01
                                    412 ;	./src/N76_SPI.c:29: setb(SPI_PxM2_MOSI, SPI_PIN_MOSI);
      0005A5 43 B2 01         [24]  413 	orl	_p0m2,#0x01
                                    414 ;	./src/N76_SPI.c:30: setb(SPI_PxM2_MISO, SPI_PIN_MISO);
      0005A8 43 B2 02         [24]  415 	orl	_p0m2,#0x02
                                    416 ;	./src/N76_SPI.c:31: setb(SPI_PxM2_SS, SPI_PIN_SS);
      0005AB 43 B4 02         [24]  417 	orl	_p1m2,#0x02
                                    418 ;	./src/N76_SPI.c:33: else if (spi_mode == SPI_MODE_SLAVE)
      0005AE                        419 00104$:
                                    420 ;	./src/N76_SPI.c:50: }
      0005AE 22               [24]  421 	ret
                                    422 ;------------------------------------------------------------
                                    423 ;Allocation info for local variables in function 'SPI_transfer'
                                    424 ;------------------------------------------------------------
                                    425 ;data                      Allocated to registers 
                                    426 ;------------------------------------------------------------
                                    427 ;	./src/N76_SPI.c:52: uint8_t SPI_transfer(uint8_t data)
                                    428 ;	-----------------------------------------
                                    429 ;	 function SPI_transfer
                                    430 ;	-----------------------------------------
      0005AF                        431 _SPI_transfer:
      0005AF 85 82 F5         [24]  432 	mov	_spdr,dpl
                                    433 ;	./src/N76_SPI.c:56: while (inbit(SPSR, SPIF) == 0)
      0005B2                        434 00101$:
      0005B2 74 80            [12]  435 	mov	a,#0x80
      0005B4 55 F4            [12]  436 	anl	a,_spsr
      0005B6 23               [12]  437 	rl	a
      0005B7 54 01            [12]  438 	anl	a,#0x01
      0005B9 60 F7            [24]  439 	jz	00101$
                                    440 ;	./src/N76_SPI.c:58: clrb(SPSR, SPIF);
      0005BB 53 F4 7F         [24]  441 	anl	_spsr,#0x7f
                                    442 ;	./src/N76_SPI.c:59: return SPDR;
      0005BE 85 F5 82         [24]  443 	mov	dpl,_spdr
                                    444 ;	./src/N76_SPI.c:60: }
      0005C1 22               [24]  445 	ret
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'SPI_setBitOrder'
                                    448 ;------------------------------------------------------------
                                    449 ;bitOrder                  Allocated to registers r7 
                                    450 ;------------------------------------------------------------
                                    451 ;	./src/N76_SPI.c:75: void SPI_setBitOrder(uint8_t bitOrder)
                                    452 ;	-----------------------------------------
                                    453 ;	 function SPI_setBitOrder
                                    454 ;	-----------------------------------------
      0005C2                        455 _SPI_setBitOrder:
                                    456 ;	./src/N76_SPI.c:77: if (bitOrder == LSBFIRST)
      0005C2 E5 82            [12]  457 	mov	a,dpl
      0005C4 70 04            [24]  458 	jnz	00102$
                                    459 ;	./src/N76_SPI.c:78: setb(SPCR, LSBFE);
      0005C6 43 F3 20         [24]  460 	orl	_spcr,#0x20
      0005C9 22               [24]  461 	ret
      0005CA                        462 00102$:
                                    463 ;	./src/N76_SPI.c:80: clrb(SPCR, LSBFE);
      0005CA 53 F3 DF         [24]  464 	anl	_spcr,#0xdf
                                    465 ;	./src/N76_SPI.c:81: }
      0005CD 22               [24]  466 	ret
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'SPI_setDataMode'
                                    469 ;------------------------------------------------------------
                                    470 ;dataMode                  Allocated to registers r7 
                                    471 ;------------------------------------------------------------
                                    472 ;	./src/N76_SPI.c:82: void SPI_setDataMode(uint8_t dataMode)
                                    473 ;	-----------------------------------------
                                    474 ;	 function SPI_setDataMode
                                    475 ;	-----------------------------------------
      0005CE                        476 _SPI_setDataMode:
      0005CE AF 82            [24]  477 	mov	r7,dpl
                                    478 ;	./src/N76_SPI.c:84: SPCR = (SPCR & ~SPI_MODE_MASK) | dataMode;
      0005D0 74 F3            [12]  479 	mov	a,#0xf3
      0005D2 55 F3            [12]  480 	anl	a,_spcr
      0005D4 4F               [12]  481 	orl	a,r7
      0005D5 F5 F3            [12]  482 	mov	_spcr,a
                                    483 ;	./src/N76_SPI.c:85: }
      0005D7 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'SPI_setClockDivider'
                                    487 ;------------------------------------------------------------
                                    488 ;clockDiv                  Allocated to registers r7 
                                    489 ;------------------------------------------------------------
                                    490 ;	./src/N76_SPI.c:86: void SPI_setClockDivider(uint8_t clockDiv)
                                    491 ;	-----------------------------------------
                                    492 ;	 function SPI_setClockDivider
                                    493 ;	-----------------------------------------
      0005D8                        494 _SPI_setClockDivider:
      0005D8 AF 82            [24]  495 	mov	r7,dpl
                                    496 ;	./src/N76_SPI.c:88: SPCR = (SPCR & ~SPI_CLOCK_MASK) | (clockDiv & SPI_CLOCK_MASK);
      0005DA 74 FC            [12]  497 	mov	a,#0xfc
      0005DC 55 F3            [12]  498 	anl	a,_spcr
      0005DE FE               [12]  499 	mov	r6,a
      0005DF 74 03            [12]  500 	mov	a,#0x03
      0005E1 5F               [12]  501 	anl	a,r7
      0005E2 4E               [12]  502 	orl	a,r6
      0005E3 F5 F3            [12]  503 	mov	_spcr,a
                                    504 ;	./src/N76_SPI.c:89: }
      0005E5 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'SPI_attachInterrupt'
                                    508 ;------------------------------------------------------------
                                    509 ;	./src/N76_SPI.c:90: void SPI_attachInterrupt()
                                    510 ;	-----------------------------------------
                                    511 ;	 function SPI_attachInterrupt
                                    512 ;	-----------------------------------------
      0005E6                        513 _SPI_attachInterrupt:
                                    514 ;	./src/N76_SPI.c:92: }
      0005E6 22               [24]  515 	ret
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'SPI_aetachInterrupt'
                                    518 ;------------------------------------------------------------
                                    519 ;	./src/N76_SPI.c:93: void SPI_aetachInterrupt()
                                    520 ;	-----------------------------------------
                                    521 ;	 function SPI_aetachInterrupt
                                    522 ;	-----------------------------------------
      0005E7                        523 _SPI_aetachInterrupt:
                                    524 ;	./src/N76_SPI.c:95: }
      0005E7 22               [24]  525 	ret
                                    526 	.area CSEG    (CODE)
                                    527 	.area CONST   (CODE)
                                    528 	.area XINIT   (CODE)
                                    529 	.area CABS    (ABS,CODE)
