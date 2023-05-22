                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module Test_SPI
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _SPI_transfer
                                     13 	.globl _SPI_begin
                                     14 	.globl _eiph1
                                     15 	.globl _eip1
                                     16 	.globl _pmd
                                     17 	.globl _pmen
                                     18 	.globl _pdtcnt
                                     19 	.globl _pdten
                                     20 	.globl _scon_1
                                     21 	.globl _eiph
                                     22 	.globl _aindids
                                     23 	.globl _spdr
                                     24 	.globl _spsr
                                     25 	.globl _spcr2
                                     26 	.globl _spcr
                                     27 	.globl _capcon4
                                     28 	.globl _capcon3
                                     29 	.globl _b
                                     30 	.globl _eip
                                     31 	.globl _c2h
                                     32 	.globl _c2l
                                     33 	.globl _pif
                                     34 	.globl _pipen
                                     35 	.globl _pinen
                                     36 	.globl _picon
                                     37 	.globl _adccon0
                                     38 	.globl _c1h
                                     39 	.globl _c1l
                                     40 	.globl _c0h
                                     41 	.globl _c0l
                                     42 	.globl _adcdly
                                     43 	.globl _adccon2
                                     44 	.globl _adccon1
                                     45 	.globl _acc
                                     46 	.globl _pwmcon1
                                     47 	.globl _piocon0
                                     48 	.globl _pwm3l
                                     49 	.globl _pwm2l
                                     50 	.globl _pwm1l
                                     51 	.globl _pwm0l
                                     52 	.globl _pwmpl
                                     53 	.globl _pwmcon0
                                     54 	.globl _fbd
                                     55 	.globl _pnp
                                     56 	.globl _pwm3h
                                     57 	.globl _pwm2h
                                     58 	.globl _pwm1h
                                     59 	.globl _pwm0h
                                     60 	.globl _pwmph
                                     61 	.globl _psw
                                     62 	.globl _adcmph
                                     63 	.globl _adcmpl
                                     64 	.globl _pwm5l
                                     65 	.globl _th2
                                     66 	.globl _pwm4l
                                     67 	.globl _tl2
                                     68 	.globl _rcmp2h
                                     69 	.globl _rcmp2l
                                     70 	.globl _t2mod
                                     71 	.globl _t2con
                                     72 	.globl _ta
                                     73 	.globl _piocon1
                                     74 	.globl _rh3
                                     75 	.globl _pwm5h
                                     76 	.globl _rl3
                                     77 	.globl _pwm4h
                                     78 	.globl _t3con
                                     79 	.globl _adcrh
                                     80 	.globl _adcrl
                                     81 	.globl _i2addr
                                     82 	.globl _i2con
                                     83 	.globl _i2toc
                                     84 	.globl _i2clk
                                     85 	.globl _i2stat
                                     86 	.globl _i2dat
                                     87 	.globl _saddr_1
                                     88 	.globl _saden_1
                                     89 	.globl _saden
                                     90 	.globl _ip
                                     91 	.globl _pwmintc
                                     92 	.globl _iph
                                     93 	.globl _p2s
                                     94 	.globl _p1sr
                                     95 	.globl _p1m2
                                     96 	.globl _p1s
                                     97 	.globl _p1m1
                                     98 	.globl _p0sr
                                     99 	.globl _p0m2
                                    100 	.globl _p0s
                                    101 	.globl _p0m1
                                    102 	.globl _p3
                                    103 	.globl _iapcn
                                    104 	.globl _iapfd
                                    105 	.globl _p3sr
                                    106 	.globl _p3m2
                                    107 	.globl _p3s
                                    108 	.globl _p3m1
                                    109 	.globl _bodcon1
                                    110 	.globl _wdcon
                                    111 	.globl _saddr
                                    112 	.globl _ie
                                    113 	.globl _iapah
                                    114 	.globl _iapal
                                    115 	.globl _iapuen
                                    116 	.globl _iaptrg
                                    117 	.globl _bodcon0
                                    118 	.globl _auxr1
                                    119 	.globl _p2
                                    120 	.globl _chpcon
                                    121 	.globl _eie1
                                    122 	.globl _eie
                                    123 	.globl _sbuf_1
                                    124 	.globl _sbuf
                                    125 	.globl _scon
                                    126 	.globl _cken
                                    127 	.globl _ckswt
                                    128 	.globl _ckdiv
                                    129 	.globl _capcon2
                                    130 	.globl _capcon1
                                    131 	.globl _capcon0
                                    132 	.globl _sfrs
                                    133 	.globl _p1
                                    134 	.globl _wkcon
                                    135 	.globl _ckcon
                                    136 	.globl _th1
                                    137 	.globl _th0
                                    138 	.globl _tl1
                                    139 	.globl _tl0
                                    140 	.globl _tmod
                                    141 	.globl _tcon
                                    142 	.globl _pcon
                                    143 	.globl _rwk
                                    144 	.globl _rctrim1
                                    145 	.globl _rctrim0
                                    146 	.globl _dph
                                    147 	.globl _dpl
                                    148 	.globl _sp
                                    149 	.globl _p0
                                    150 	.globl _MAX7219_transfer_PARM_3
                                    151 	.globl _MAX7219_transfer_PARM_2
                                    152 	.globl _MAX7219_transferAll_PARM_3
                                    153 	.globl _MAX7219_transferAll_PARM_2
                                    154 	.globl _value
                                    155 	.globl _MAX7219_begin
                                    156 	.globl _MAX7219_transferAll
                                    157 	.globl _MAX7219_transfer
                                    158 ;--------------------------------------------------------
                                    159 ; special function registers
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           000080   163 _p0	=	0x0080
                           000081   164 _sp	=	0x0081
                           000082   165 _dpl	=	0x0082
                           000083   166 _dph	=	0x0083
                           000084   167 _rctrim0	=	0x0084
                           000085   168 _rctrim1	=	0x0085
                           000086   169 _rwk	=	0x0086
                           000087   170 _pcon	=	0x0087
                           000088   171 _tcon	=	0x0088
                           000089   172 _tmod	=	0x0089
                           00008A   173 _tl0	=	0x008a
                           00008B   174 _tl1	=	0x008b
                           00008C   175 _th0	=	0x008c
                           00008D   176 _th1	=	0x008d
                           00008E   177 _ckcon	=	0x008e
                           00008F   178 _wkcon	=	0x008f
                           000090   179 _p1	=	0x0090
                           000091   180 _sfrs	=	0x0091
                           000092   181 _capcon0	=	0x0092
                           000093   182 _capcon1	=	0x0093
                           000094   183 _capcon2	=	0x0094
                           000095   184 _ckdiv	=	0x0095
                           000096   185 _ckswt	=	0x0096
                           000097   186 _cken	=	0x0097
                           000098   187 _scon	=	0x0098
                           000099   188 _sbuf	=	0x0099
                           00009A   189 _sbuf_1	=	0x009a
                           00009B   190 _eie	=	0x009b
                           00009C   191 _eie1	=	0x009c
                           00009F   192 _chpcon	=	0x009f
                           0000A0   193 _p2	=	0x00a0
                           0000A2   194 _auxr1	=	0x00a2
                           0000A3   195 _bodcon0	=	0x00a3
                           0000A4   196 _iaptrg	=	0x00a4
                           0000A5   197 _iapuen	=	0x00a5
                           0000A6   198 _iapal	=	0x00a6
                           0000A7   199 _iapah	=	0x00a7
                           0000A8   200 _ie	=	0x00a8
                           0000A9   201 _saddr	=	0x00a9
                           0000AA   202 _wdcon	=	0x00aa
                           0000AB   203 _bodcon1	=	0x00ab
                           0000AC   204 _p3m1	=	0x00ac
                           0000AC   205 _p3s	=	0x00ac
                           0000AD   206 _p3m2	=	0x00ad
                           0000AD   207 _p3sr	=	0x00ad
                           0000AE   208 _iapfd	=	0x00ae
                           0000AF   209 _iapcn	=	0x00af
                           0000B0   210 _p3	=	0x00b0
                           0000B1   211 _p0m1	=	0x00b1
                           0000B1   212 _p0s	=	0x00b1
                           0000B2   213 _p0m2	=	0x00b2
                           0000B2   214 _p0sr	=	0x00b2
                           0000B3   215 _p1m1	=	0x00b3
                           0000B3   216 _p1s	=	0x00b3
                           0000B4   217 _p1m2	=	0x00b4
                           0000B4   218 _p1sr	=	0x00b4
                           0000B5   219 _p2s	=	0x00b5
                           0000B7   220 _iph	=	0x00b7
                           0000B7   221 _pwmintc	=	0x00b7
                           0000B8   222 _ip	=	0x00b8
                           0000B9   223 _saden	=	0x00b9
                           0000BA   224 _saden_1	=	0x00ba
                           0000BB   225 _saddr_1	=	0x00bb
                           0000BC   226 _i2dat	=	0x00bc
                           0000BD   227 _i2stat	=	0x00bd
                           0000BE   228 _i2clk	=	0x00be
                           0000BF   229 _i2toc	=	0x00bf
                           0000C0   230 _i2con	=	0x00c0
                           0000C1   231 _i2addr	=	0x00c1
                           0000C2   232 _adcrl	=	0x00c2
                           0000C3   233 _adcrh	=	0x00c3
                           0000C4   234 _t3con	=	0x00c4
                           0000C4   235 _pwm4h	=	0x00c4
                           0000C5   236 _rl3	=	0x00c5
                           0000C5   237 _pwm5h	=	0x00c5
                           0000C6   238 _rh3	=	0x00c6
                           0000C6   239 _piocon1	=	0x00c6
                           0000C7   240 _ta	=	0x00c7
                           0000C8   241 _t2con	=	0x00c8
                           0000C9   242 _t2mod	=	0x00c9
                           0000CA   243 _rcmp2l	=	0x00ca
                           0000CB   244 _rcmp2h	=	0x00cb
                           0000CC   245 _tl2	=	0x00cc
                           0000CC   246 _pwm4l	=	0x00cc
                           0000CD   247 _th2	=	0x00cd
                           0000CD   248 _pwm5l	=	0x00cd
                           0000CE   249 _adcmpl	=	0x00ce
                           0000CF   250 _adcmph	=	0x00cf
                           0000D0   251 _psw	=	0x00d0
                           0000D1   252 _pwmph	=	0x00d1
                           0000D2   253 _pwm0h	=	0x00d2
                           0000D3   254 _pwm1h	=	0x00d3
                           0000D4   255 _pwm2h	=	0x00d4
                           0000D5   256 _pwm3h	=	0x00d5
                           0000D6   257 _pnp	=	0x00d6
                           0000D7   258 _fbd	=	0x00d7
                           0000D8   259 _pwmcon0	=	0x00d8
                           0000D9   260 _pwmpl	=	0x00d9
                           0000DA   261 _pwm0l	=	0x00da
                           0000DB   262 _pwm1l	=	0x00db
                           0000DC   263 _pwm2l	=	0x00dc
                           0000DD   264 _pwm3l	=	0x00dd
                           0000DE   265 _piocon0	=	0x00de
                           0000DF   266 _pwmcon1	=	0x00df
                           0000E0   267 _acc	=	0x00e0
                           0000E1   268 _adccon1	=	0x00e1
                           0000E2   269 _adccon2	=	0x00e2
                           0000E3   270 _adcdly	=	0x00e3
                           0000E4   271 _c0l	=	0x00e4
                           0000E5   272 _c0h	=	0x00e5
                           0000E6   273 _c1l	=	0x00e6
                           0000E7   274 _c1h	=	0x00e7
                           0000E8   275 _adccon0	=	0x00e8
                           0000E9   276 _picon	=	0x00e9
                           0000EA   277 _pinen	=	0x00ea
                           0000EB   278 _pipen	=	0x00eb
                           0000EC   279 _pif	=	0x00ec
                           0000ED   280 _c2l	=	0x00ed
                           0000EE   281 _c2h	=	0x00ee
                           0000EF   282 _eip	=	0x00ef
                           0000F0   283 _b	=	0x00f0
                           0000F1   284 _capcon3	=	0x00f1
                           0000F2   285 _capcon4	=	0x00f2
                           0000F3   286 _spcr	=	0x00f3
                           0000F3   287 _spcr2	=	0x00f3
                           0000F4   288 _spsr	=	0x00f4
                           0000F5   289 _spdr	=	0x00f5
                           0000F6   290 _aindids	=	0x00f6
                           0000F7   291 _eiph	=	0x00f7
                           0000F8   292 _scon_1	=	0x00f8
                           0000F9   293 _pdten	=	0x00f9
                           0000FA   294 _pdtcnt	=	0x00fa
                           0000FB   295 _pmen	=	0x00fb
                           0000FC   296 _pmd	=	0x00fc
                           0000FE   297 _eip1	=	0x00fe
                           0000FF   298 _eiph1	=	0x00ff
                                    299 ;--------------------------------------------------------
                                    300 ; special function bits
                                    301 ;--------------------------------------------------------
                                    302 	.area RSEG    (ABS,DATA)
      000000                        303 	.org 0x0000
                                    304 ;--------------------------------------------------------
                                    305 ; overlayable register banks
                                    306 ;--------------------------------------------------------
                                    307 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        308 	.ds 8
                                    309 ;--------------------------------------------------------
                                    310 ; internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area DSEG    (DATA)
      000008                        313 _value::
      000008                        314 	.ds 2
      00000A                        315 _MAX7219_transferAll_PARM_2:
      00000A                        316 	.ds 1
      00000B                        317 _MAX7219_transferAll_PARM_3:
      00000B                        318 	.ds 1
      00000C                        319 _MAX7219_transfer_PARM_2:
      00000C                        320 	.ds 1
      00000D                        321 _MAX7219_transfer_PARM_3:
      00000D                        322 	.ds 1
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable items in internal ram
                                    325 ;--------------------------------------------------------
                                    326 ;--------------------------------------------------------
                                    327 ; Stack segment in internal ram
                                    328 ;--------------------------------------------------------
                                    329 	.area	SSEG
      000064                        330 __start__stack:
      000064                        331 	.ds	1
                                    332 
                                    333 ;--------------------------------------------------------
                                    334 ; indirectly addressable internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area ISEG    (DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; absolute internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area IABS    (ABS,DATA)
                                    341 	.area IABS    (ABS,DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; bit data
                                    344 ;--------------------------------------------------------
                                    345 	.area BSEG    (BIT)
                                    346 ;--------------------------------------------------------
                                    347 ; paged external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area PSEG    (PAG,XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XSEG    (XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; absolute external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XABS    (ABS,XDATA)
                                    358 ;--------------------------------------------------------
                                    359 ; external initialized ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area XISEG   (XDATA)
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT0 (CODE)
                                    364 	.area GSINIT1 (CODE)
                                    365 	.area GSINIT2 (CODE)
                                    366 	.area GSINIT3 (CODE)
                                    367 	.area GSINIT4 (CODE)
                                    368 	.area GSINIT5 (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 	.area GSFINAL (CODE)
                                    371 	.area CSEG    (CODE)
                                    372 ;--------------------------------------------------------
                                    373 ; interrupt vector
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
      000000                        376 __interrupt_vect:
      000000 02 00 06         [24]  377 	ljmp	__sdcc_gsinit_startup
                                    378 ;--------------------------------------------------------
                                    379 ; global & static initialisations
                                    380 ;--------------------------------------------------------
                                    381 	.area HOME    (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.area GSFINAL (CODE)
                                    384 	.area GSINIT  (CODE)
                                    385 	.globl __sdcc_gsinit_startup
                                    386 	.globl __sdcc_program_startup
                                    387 	.globl __start__stack
                                    388 	.globl __mcs51_genXINIT
                                    389 	.globl __mcs51_genXRAMCLEAR
                                    390 	.globl __mcs51_genRAMCLEAR
                                    391 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  392 	ljmp	__sdcc_program_startup
                                    393 ;--------------------------------------------------------
                                    394 ; Home
                                    395 ;--------------------------------------------------------
                                    396 	.area HOME    (CODE)
                                    397 	.area HOME    (CODE)
      000003                        398 __sdcc_program_startup:
      000003 02 01 18         [24]  399 	ljmp	_main
                                    400 ;	return from main will return to caller
                                    401 ;--------------------------------------------------------
                                    402 ; code
                                    403 ;--------------------------------------------------------
                                    404 	.area CSEG    (CODE)
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'MAX7219_begin'
                                    407 ;------------------------------------------------------------
                                    408 ;	./Test_SPI.c:31: void MAX7219_begin(void)
                                    409 ;	-----------------------------------------
                                    410 ;	 function MAX7219_begin
                                    411 ;	-----------------------------------------
      000062                        412 _MAX7219_begin:
                           000007   413 	ar7 = 0x07
                           000006   414 	ar6 = 0x06
                           000005   415 	ar5 = 0x05
                           000004   416 	ar4 = 0x04
                           000003   417 	ar3 = 0x03
                           000002   418 	ar2 = 0x02
                           000001   419 	ar1 = 0x01
                           000000   420 	ar0 = 0x00
                                    421 ;	./Test_SPI.c:33: SPI_begin();
      000062 12 05 5F         [24]  422 	lcall	_SPI_begin
                                    423 ;	./Test_SPI.c:35: MAX7219_transferAll(3, SCAN_LIMIT, 0x07);
      000065 75 0A 0B         [24]  424 	mov	_MAX7219_transferAll_PARM_2,#0x0b
      000068 75 0B 07         [24]  425 	mov	_MAX7219_transferAll_PARM_3,#0x07
      00006B 75 82 03         [24]  426 	mov	dpl,#0x03
      00006E 12 00 A1         [24]  427 	lcall	_MAX7219_transferAll
                                    428 ;	./Test_SPI.c:36: MAX7219_transferAll(3, DECODE_MODE, 0xFF);
      000071 75 0A 09         [24]  429 	mov	_MAX7219_transferAll_PARM_2,#0x09
      000074 75 0B FF         [24]  430 	mov	_MAX7219_transferAll_PARM_3,#0xff
      000077 75 82 03         [24]  431 	mov	dpl,#0x03
      00007A 12 00 A1         [24]  432 	lcall	_MAX7219_transferAll
                                    433 ;	./Test_SPI.c:37: MAX7219_transferAll(3, SHUTDOWN, 0x01);
      00007D 75 0A 0C         [24]  434 	mov	_MAX7219_transferAll_PARM_2,#0x0c
      000080 75 0B 01         [24]  435 	mov	_MAX7219_transferAll_PARM_3,#0x01
      000083 75 82 03         [24]  436 	mov	dpl,#0x03
      000086 12 00 A1         [24]  437 	lcall	_MAX7219_transferAll
                                    438 ;	./Test_SPI.c:38: MAX7219_transferAll(3, DISPLAY_TEST, 0x00);
      000089 75 0A 0F         [24]  439 	mov	_MAX7219_transferAll_PARM_2,#0x0f
      00008C 75 0B 00         [24]  440 	mov	_MAX7219_transferAll_PARM_3,#0x00
      00008F 75 82 03         [24]  441 	mov	dpl,#0x03
      000092 12 00 A1         [24]  442 	lcall	_MAX7219_transferAll
                                    443 ;	./Test_SPI.c:39: MAX7219_transferAll(3, INTENSITY, 0x01);
      000095 75 0A 0A         [24]  444 	mov	_MAX7219_transferAll_PARM_2,#0x0a
      000098 75 0B 01         [24]  445 	mov	_MAX7219_transferAll_PARM_3,#0x01
      00009B 75 82 03         [24]  446 	mov	dpl,#0x03
                                    447 ;	./Test_SPI.c:40: }
      00009E 02 00 A1         [24]  448 	ljmp	_MAX7219_transferAll
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'MAX7219_transferAll'
                                    451 ;------------------------------------------------------------
                                    452 ;addr                      Allocated with name '_MAX7219_transferAll_PARM_2'
                                    453 ;data                      Allocated with name '_MAX7219_transferAll_PARM_3'
                                    454 ;chip                      Allocated to registers r7 
                                    455 ;------------------------------------------------------------
                                    456 ;	./Test_SPI.c:42: void MAX7219_transferAll(int8_t chip, const uint8_t addr, const uint8_t data)
                                    457 ;	-----------------------------------------
                                    458 ;	 function MAX7219_transferAll
                                    459 ;	-----------------------------------------
      0000A1                        460 _MAX7219_transferAll:
      0000A1 AF 82            [24]  461 	mov	r7,dpl
                                    462 ;	./Test_SPI.c:44: clrb(SPI_Px_SS, SPI_PIN_SS);
      0000A3 53 90 FD         [24]  463 	anl	_p1,#0xfd
                                    464 ;	./Test_SPI.c:45: while (chip--)
      0000A6                        465 00101$:
      0000A6 8F 06            [24]  466 	mov	ar6,r7
      0000A8 1F               [12]  467 	dec	r7
      0000A9 EE               [12]  468 	mov	a,r6
      0000AA 60 12            [24]  469 	jz	00103$
                                    470 ;	./Test_SPI.c:47: SPI_transfer(addr);
      0000AC 85 0A 82         [24]  471 	mov	dpl,_MAX7219_transferAll_PARM_2
      0000AF C0 07            [24]  472 	push	ar7
      0000B1 12 05 84         [24]  473 	lcall	_SPI_transfer
                                    474 ;	./Test_SPI.c:48: SPI_transfer(data);
      0000B4 85 0B 82         [24]  475 	mov	dpl,_MAX7219_transferAll_PARM_3
      0000B7 12 05 84         [24]  476 	lcall	_SPI_transfer
      0000BA D0 07            [24]  477 	pop	ar7
      0000BC 80 E8            [24]  478 	sjmp	00101$
      0000BE                        479 00103$:
                                    480 ;	./Test_SPI.c:50: setb(SPI_Px_SS, SPI_PIN_SS);
      0000BE 43 90 02         [24]  481 	orl	_p1,#0x02
                                    482 ;	./Test_SPI.c:51: }
      0000C1 22               [24]  483 	ret
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'MAX7219_transfer'
                                    486 ;------------------------------------------------------------
                                    487 ;addr                      Allocated with name '_MAX7219_transfer_PARM_2'
                                    488 ;data                      Allocated with name '_MAX7219_transfer_PARM_3'
                                    489 ;chip                      Allocated to registers r7 
                                    490 ;total                     Allocated to registers r6 
                                    491 ;------------------------------------------------------------
                                    492 ;	./Test_SPI.c:53: void MAX7219_transfer(uint8_t chip, const uint8_t addr, const uint8_t data)
                                    493 ;	-----------------------------------------
                                    494 ;	 function MAX7219_transfer
                                    495 ;	-----------------------------------------
      0000C2                        496 _MAX7219_transfer:
      0000C2 AF 82            [24]  497 	mov	r7,dpl
                                    498 ;	./Test_SPI.c:55: uint8_t total = chip & 0x0F; // 8
      0000C4 74 0F            [12]  499 	mov	a,#0x0f
      0000C6 5F               [12]  500 	anl	a,r7
      0000C7 FE               [12]  501 	mov	r6,a
                                    502 ;	./Test_SPI.c:56: chip = chip >> 4;			 // 3
      0000C8 EF               [12]  503 	mov	a,r7
      0000C9 C4               [12]  504 	swap	a
      0000CA 54 0F            [12]  505 	anl	a,#0x0f
      0000CC FF               [12]  506 	mov	r7,a
                                    507 ;	./Test_SPI.c:58: clrb(SPI_Px_SS, SPI_PIN_SS);
      0000CD 53 90 FD         [24]  508 	anl	_p1,#0xfd
                                    509 ;	./Test_SPI.c:60: while (--total >= chip)
      0000D0                        510 00101$:
      0000D0 1E               [12]  511 	dec	r6
      0000D1 C3               [12]  512 	clr	c
      0000D2 EE               [12]  513 	mov	a,r6
      0000D3 9F               [12]  514 	subb	a,r7
      0000D4 40 16            [24]  515 	jc	00103$
                                    516 ;	./Test_SPI.c:62: SPI_transfer(0x00);
      0000D6 75 82 00         [24]  517 	mov	dpl,#0x00
      0000D9 C0 07            [24]  518 	push	ar7
      0000DB C0 06            [24]  519 	push	ar6
      0000DD 12 05 84         [24]  520 	lcall	_SPI_transfer
                                    521 ;	./Test_SPI.c:63: SPI_transfer(0x00);
      0000E0 75 82 00         [24]  522 	mov	dpl,#0x00
      0000E3 12 05 84         [24]  523 	lcall	_SPI_transfer
      0000E6 D0 06            [24]  524 	pop	ar6
      0000E8 D0 07            [24]  525 	pop	ar7
      0000EA 80 E4            [24]  526 	sjmp	00101$
      0000EC                        527 00103$:
                                    528 ;	./Test_SPI.c:67: SPI_transfer(addr);
      0000EC 85 0C 82         [24]  529 	mov	dpl,_MAX7219_transfer_PARM_2
      0000EF C0 07            [24]  530 	push	ar7
      0000F1 12 05 84         [24]  531 	lcall	_SPI_transfer
                                    532 ;	./Test_SPI.c:68: SPI_transfer(data);
      0000F4 85 0D 82         [24]  533 	mov	dpl,_MAX7219_transfer_PARM_3
      0000F7 12 05 84         [24]  534 	lcall	_SPI_transfer
      0000FA D0 07            [24]  535 	pop	ar7
                                    536 ;	./Test_SPI.c:71: while (--chip >= 1)
      0000FC                        537 00104$:
      0000FC 1F               [12]  538 	dec	r7
      0000FD BF 01 00         [24]  539 	cjne	r7,#0x01,00132$
      000100                        540 00132$:
      000100 40 12            [24]  541 	jc	00106$
                                    542 ;	./Test_SPI.c:73: SPI_transfer(0x00);
      000102 75 82 00         [24]  543 	mov	dpl,#0x00
      000105 C0 07            [24]  544 	push	ar7
      000107 12 05 84         [24]  545 	lcall	_SPI_transfer
                                    546 ;	./Test_SPI.c:74: SPI_transfer(0x00);
      00010A 75 82 00         [24]  547 	mov	dpl,#0x00
      00010D 12 05 84         [24]  548 	lcall	_SPI_transfer
      000110 D0 07            [24]  549 	pop	ar7
      000112 80 E8            [24]  550 	sjmp	00104$
      000114                        551 00106$:
                                    552 ;	./Test_SPI.c:76: setb(SPI_Px_SS, SPI_PIN_SS);
      000114 43 90 02         [24]  553 	orl	_p1,#0x02
                                    554 ;	./Test_SPI.c:77: }
      000117 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'main'
                                    558 ;------------------------------------------------------------
                                    559 ;	./Test_SPI.c:79: void main(void)
                                    560 ;	-----------------------------------------
                                    561 ;	 function main
                                    562 ;	-----------------------------------------
      000118                        563 _main:
                                    564 ;	./Test_SPI.c:81: MAX7219_begin();
      000118 12 00 62         [24]  565 	lcall	_MAX7219_begin
                                    566 ;	./Test_SPI.c:82: while (1)
      00011B                        567 00102$:
                                    568 ;	./Test_SPI.c:84: MAX7219_transfer(0x13, 1, 5);
      00011B 75 0C 01         [24]  569 	mov	_MAX7219_transfer_PARM_2,#0x01
      00011E 75 0D 05         [24]  570 	mov	_MAX7219_transfer_PARM_3,#0x05
      000121 75 82 13         [24]  571 	mov	dpl,#0x13
      000124 12 00 C2         [24]  572 	lcall	_MAX7219_transfer
                                    573 ;	./Test_SPI.c:85: MAX7219_transfer(0x13, 2, 9);
      000127 75 0C 02         [24]  574 	mov	_MAX7219_transfer_PARM_2,#0x02
      00012A 75 0D 09         [24]  575 	mov	_MAX7219_transfer_PARM_3,#0x09
      00012D 75 82 13         [24]  576 	mov	dpl,#0x13
      000130 12 00 C2         [24]  577 	lcall	_MAX7219_transfer
                                    578 ;	./Test_SPI.c:86: MAX7219_transfer(0x13, 3, 9);
      000133 75 0C 03         [24]  579 	mov	_MAX7219_transfer_PARM_2,#0x03
      000136 75 0D 09         [24]  580 	mov	_MAX7219_transfer_PARM_3,#0x09
      000139 75 82 13         [24]  581 	mov	dpl,#0x13
      00013C 12 00 C2         [24]  582 	lcall	_MAX7219_transfer
                                    583 ;	./Test_SPI.c:87: MAX7219_transfer(0x13, 4, 1);
      00013F 75 0C 04         [24]  584 	mov	_MAX7219_transfer_PARM_2,#0x04
      000142 75 0D 01         [24]  585 	mov	_MAX7219_transfer_PARM_3,#0x01
      000145 75 82 13         [24]  586 	mov	dpl,#0x13
      000148 12 00 C2         [24]  587 	lcall	_MAX7219_transfer
                                    588 ;	./Test_SPI.c:88: MAX7219_transfer(0x13, 5, 3 | CODEB_DP);
      00014B 75 0C 05         [24]  589 	mov	_MAX7219_transfer_PARM_2,#0x05
      00014E 75 0D F3         [24]  590 	mov	_MAX7219_transfer_PARM_3,#0xf3
      000151 75 82 13         [24]  591 	mov	dpl,#0x13
      000154 12 00 C2         [24]  592 	lcall	_MAX7219_transfer
                                    593 ;	./Test_SPI.c:89: MAX7219_transfer(0x13, 6, 0);
      000157 75 0C 06         [24]  594 	mov	_MAX7219_transfer_PARM_2,#0x06
      00015A 75 0D 00         [24]  595 	mov	_MAX7219_transfer_PARM_3,#0x00
      00015D 75 82 13         [24]  596 	mov	dpl,#0x13
      000160 12 00 C2         [24]  597 	lcall	_MAX7219_transfer
                                    598 ;	./Test_SPI.c:90: MAX7219_transfer(0x13, 7, 3 | CODEB_DP);
      000163 75 0C 07         [24]  599 	mov	_MAX7219_transfer_PARM_2,#0x07
      000166 75 0D F3         [24]  600 	mov	_MAX7219_transfer_PARM_3,#0xf3
      000169 75 82 13         [24]  601 	mov	dpl,#0x13
      00016C 12 00 C2         [24]  602 	lcall	_MAX7219_transfer
                                    603 ;	./Test_SPI.c:91: MAX7219_transfer(0x13, 8, 1);
      00016F 75 0C 08         [24]  604 	mov	_MAX7219_transfer_PARM_2,#0x08
      000172 75 0D 01         [24]  605 	mov	_MAX7219_transfer_PARM_3,#0x01
      000175 75 82 13         [24]  606 	mov	dpl,#0x13
      000178 12 00 C2         [24]  607 	lcall	_MAX7219_transfer
                                    608 ;	./Test_SPI.c:93: }
      00017B 80 9E            [24]  609 	sjmp	00102$
                                    610 	.area CSEG    (CODE)
                                    611 	.area CONST   (CODE)
                                    612 	.area XINIT   (CODE)
                                    613 	.area CABS    (ABS,CODE)
