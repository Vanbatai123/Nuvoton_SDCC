                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Test_I2C
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _NumberOfFields
                                     12 	.globl _DS1307
                                     13 	.globl _main
                                     14 	.globl _I2C_read
                                     15 	.globl _I2C_requestFrom
                                     16 	.globl _I2C_endTransmission
                                     17 	.globl _I2C_write
                                     18 	.globl _I2C_beginTransmission
                                     19 	.globl _I2C_begin
                                     20 	.globl _UART0_printNum
                                     21 	.globl _UART0_println
                                     22 	.globl _UART0_print
                                     23 	.globl _UART0_begin
                                     24 	.globl __delay_ms
                                     25 	.globl _eiph1
                                     26 	.globl _eip1
                                     27 	.globl _pmd
                                     28 	.globl _pmen
                                     29 	.globl _pdtcnt
                                     30 	.globl _pdten
                                     31 	.globl _scon_1
                                     32 	.globl _eiph
                                     33 	.globl _aindids
                                     34 	.globl _spdr
                                     35 	.globl _spsr
                                     36 	.globl _spcr2
                                     37 	.globl _spcr
                                     38 	.globl _capcon4
                                     39 	.globl _capcon3
                                     40 	.globl _b
                                     41 	.globl _eip
                                     42 	.globl _c2h
                                     43 	.globl _c2l
                                     44 	.globl _pif
                                     45 	.globl _pipen
                                     46 	.globl _pinen
                                     47 	.globl _picon
                                     48 	.globl _adccon0
                                     49 	.globl _c1h
                                     50 	.globl _c1l
                                     51 	.globl _c0h
                                     52 	.globl _c0l
                                     53 	.globl _adcdly
                                     54 	.globl _adccon2
                                     55 	.globl _adccon1
                                     56 	.globl _acc
                                     57 	.globl _pwmcon1
                                     58 	.globl _piocon0
                                     59 	.globl _pwm3l
                                     60 	.globl _pwm2l
                                     61 	.globl _pwm1l
                                     62 	.globl _pwm0l
                                     63 	.globl _pwmpl
                                     64 	.globl _pwmcon0
                                     65 	.globl _fbd
                                     66 	.globl _pnp
                                     67 	.globl _pwm3h
                                     68 	.globl _pwm2h
                                     69 	.globl _pwm1h
                                     70 	.globl _pwm0h
                                     71 	.globl _pwmph
                                     72 	.globl _psw
                                     73 	.globl _adcmph
                                     74 	.globl _adcmpl
                                     75 	.globl _pwm5l
                                     76 	.globl _th2
                                     77 	.globl _pwm4l
                                     78 	.globl _tl2
                                     79 	.globl _rcmp2h
                                     80 	.globl _rcmp2l
                                     81 	.globl _t2mod
                                     82 	.globl _t2con
                                     83 	.globl _ta
                                     84 	.globl _piocon1
                                     85 	.globl _rh3
                                     86 	.globl _pwm5h
                                     87 	.globl _rl3
                                     88 	.globl _pwm4h
                                     89 	.globl _t3con
                                     90 	.globl _adcrh
                                     91 	.globl _adcrl
                                     92 	.globl _i2addr
                                     93 	.globl _i2con
                                     94 	.globl _i2toc
                                     95 	.globl _i2clk
                                     96 	.globl _i2stat
                                     97 	.globl _i2dat
                                     98 	.globl _saddr_1
                                     99 	.globl _saden_1
                                    100 	.globl _saden
                                    101 	.globl _ip
                                    102 	.globl _pwmintc
                                    103 	.globl _iph
                                    104 	.globl _p2s
                                    105 	.globl _p1sr
                                    106 	.globl _p1m2
                                    107 	.globl _p1s
                                    108 	.globl _p1m1
                                    109 	.globl _p0sr
                                    110 	.globl _p0m2
                                    111 	.globl _p0s
                                    112 	.globl _p0m1
                                    113 	.globl _p3
                                    114 	.globl _iapcn
                                    115 	.globl _iapfd
                                    116 	.globl _p3sr
                                    117 	.globl _p3m2
                                    118 	.globl _p3s
                                    119 	.globl _p3m1
                                    120 	.globl _bodcon1
                                    121 	.globl _wdcon
                                    122 	.globl _saddr
                                    123 	.globl _ie
                                    124 	.globl _iapah
                                    125 	.globl _iapal
                                    126 	.globl _iapuen
                                    127 	.globl _iaptrg
                                    128 	.globl _bodcon0
                                    129 	.globl _auxr1
                                    130 	.globl _p2
                                    131 	.globl _chpcon
                                    132 	.globl _eie1
                                    133 	.globl _eie
                                    134 	.globl _sbuf_1
                                    135 	.globl _sbuf
                                    136 	.globl _scon
                                    137 	.globl _cken
                                    138 	.globl _ckswt
                                    139 	.globl _ckdiv
                                    140 	.globl _capcon2
                                    141 	.globl _capcon1
                                    142 	.globl _capcon0
                                    143 	.globl _sfrs
                                    144 	.globl _p1
                                    145 	.globl _wkcon
                                    146 	.globl _ckcon
                                    147 	.globl _th1
                                    148 	.globl _th0
                                    149 	.globl _tl1
                                    150 	.globl _tl0
                                    151 	.globl _tmod
                                    152 	.globl _tcon
                                    153 	.globl _pcon
                                    154 	.globl _rwk
                                    155 	.globl _rctrim1
                                    156 	.globl _rctrim0
                                    157 	.globl _dph
                                    158 	.globl _dpl
                                    159 	.globl _sp
                                    160 	.globl _p0
                                    161 	.globl _setTime_PARM_7
                                    162 	.globl _setTime_PARM_6
                                    163 	.globl _setTime_PARM_5
                                    164 	.globl _setTime_PARM_4
                                    165 	.globl _setTime_PARM_3
                                    166 	.globl _setTime_PARM_2
                                    167 	.globl _year
                                    168 	.globl _month
                                    169 	.globl _wday
                                    170 	.globl _day
                                    171 	.globl _hour
                                    172 	.globl _minute
                                    173 	.globl _second
                                    174 	.globl _readDS1307
                                    175 	.globl _bcd2dec
                                    176 	.globl _dec2bcd
                                    177 	.globl _digitalClockDisplay
                                    178 	.globl _printDigits
                                    179 	.globl _setTime
                                    180 ;--------------------------------------------------------
                                    181 ; special function registers
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000080   185 _p0	=	0x0080
                           000081   186 _sp	=	0x0081
                           000082   187 _dpl	=	0x0082
                           000083   188 _dph	=	0x0083
                           000084   189 _rctrim0	=	0x0084
                           000085   190 _rctrim1	=	0x0085
                           000086   191 _rwk	=	0x0086
                           000087   192 _pcon	=	0x0087
                           000088   193 _tcon	=	0x0088
                           000089   194 _tmod	=	0x0089
                           00008A   195 _tl0	=	0x008a
                           00008B   196 _tl1	=	0x008b
                           00008C   197 _th0	=	0x008c
                           00008D   198 _th1	=	0x008d
                           00008E   199 _ckcon	=	0x008e
                           00008F   200 _wkcon	=	0x008f
                           000090   201 _p1	=	0x0090
                           000091   202 _sfrs	=	0x0091
                           000092   203 _capcon0	=	0x0092
                           000093   204 _capcon1	=	0x0093
                           000094   205 _capcon2	=	0x0094
                           000095   206 _ckdiv	=	0x0095
                           000096   207 _ckswt	=	0x0096
                           000097   208 _cken	=	0x0097
                           000098   209 _scon	=	0x0098
                           000099   210 _sbuf	=	0x0099
                           00009A   211 _sbuf_1	=	0x009a
                           00009B   212 _eie	=	0x009b
                           00009C   213 _eie1	=	0x009c
                           00009F   214 _chpcon	=	0x009f
                           0000A0   215 _p2	=	0x00a0
                           0000A2   216 _auxr1	=	0x00a2
                           0000A3   217 _bodcon0	=	0x00a3
                           0000A4   218 _iaptrg	=	0x00a4
                           0000A5   219 _iapuen	=	0x00a5
                           0000A6   220 _iapal	=	0x00a6
                           0000A7   221 _iapah	=	0x00a7
                           0000A8   222 _ie	=	0x00a8
                           0000A9   223 _saddr	=	0x00a9
                           0000AA   224 _wdcon	=	0x00aa
                           0000AB   225 _bodcon1	=	0x00ab
                           0000AC   226 _p3m1	=	0x00ac
                           0000AC   227 _p3s	=	0x00ac
                           0000AD   228 _p3m2	=	0x00ad
                           0000AD   229 _p3sr	=	0x00ad
                           0000AE   230 _iapfd	=	0x00ae
                           0000AF   231 _iapcn	=	0x00af
                           0000B0   232 _p3	=	0x00b0
                           0000B1   233 _p0m1	=	0x00b1
                           0000B1   234 _p0s	=	0x00b1
                           0000B2   235 _p0m2	=	0x00b2
                           0000B2   236 _p0sr	=	0x00b2
                           0000B3   237 _p1m1	=	0x00b3
                           0000B3   238 _p1s	=	0x00b3
                           0000B4   239 _p1m2	=	0x00b4
                           0000B4   240 _p1sr	=	0x00b4
                           0000B5   241 _p2s	=	0x00b5
                           0000B7   242 _iph	=	0x00b7
                           0000B7   243 _pwmintc	=	0x00b7
                           0000B8   244 _ip	=	0x00b8
                           0000B9   245 _saden	=	0x00b9
                           0000BA   246 _saden_1	=	0x00ba
                           0000BB   247 _saddr_1	=	0x00bb
                           0000BC   248 _i2dat	=	0x00bc
                           0000BD   249 _i2stat	=	0x00bd
                           0000BE   250 _i2clk	=	0x00be
                           0000BF   251 _i2toc	=	0x00bf
                           0000C0   252 _i2con	=	0x00c0
                           0000C1   253 _i2addr	=	0x00c1
                           0000C2   254 _adcrl	=	0x00c2
                           0000C3   255 _adcrh	=	0x00c3
                           0000C4   256 _t3con	=	0x00c4
                           0000C4   257 _pwm4h	=	0x00c4
                           0000C5   258 _rl3	=	0x00c5
                           0000C5   259 _pwm5h	=	0x00c5
                           0000C6   260 _rh3	=	0x00c6
                           0000C6   261 _piocon1	=	0x00c6
                           0000C7   262 _ta	=	0x00c7
                           0000C8   263 _t2con	=	0x00c8
                           0000C9   264 _t2mod	=	0x00c9
                           0000CA   265 _rcmp2l	=	0x00ca
                           0000CB   266 _rcmp2h	=	0x00cb
                           0000CC   267 _tl2	=	0x00cc
                           0000CC   268 _pwm4l	=	0x00cc
                           0000CD   269 _th2	=	0x00cd
                           0000CD   270 _pwm5l	=	0x00cd
                           0000CE   271 _adcmpl	=	0x00ce
                           0000CF   272 _adcmph	=	0x00cf
                           0000D0   273 _psw	=	0x00d0
                           0000D1   274 _pwmph	=	0x00d1
                           0000D2   275 _pwm0h	=	0x00d2
                           0000D3   276 _pwm1h	=	0x00d3
                           0000D4   277 _pwm2h	=	0x00d4
                           0000D5   278 _pwm3h	=	0x00d5
                           0000D6   279 _pnp	=	0x00d6
                           0000D7   280 _fbd	=	0x00d7
                           0000D8   281 _pwmcon0	=	0x00d8
                           0000D9   282 _pwmpl	=	0x00d9
                           0000DA   283 _pwm0l	=	0x00da
                           0000DB   284 _pwm1l	=	0x00db
                           0000DC   285 _pwm2l	=	0x00dc
                           0000DD   286 _pwm3l	=	0x00dd
                           0000DE   287 _piocon0	=	0x00de
                           0000DF   288 _pwmcon1	=	0x00df
                           0000E0   289 _acc	=	0x00e0
                           0000E1   290 _adccon1	=	0x00e1
                           0000E2   291 _adccon2	=	0x00e2
                           0000E3   292 _adcdly	=	0x00e3
                           0000E4   293 _c0l	=	0x00e4
                           0000E5   294 _c0h	=	0x00e5
                           0000E6   295 _c1l	=	0x00e6
                           0000E7   296 _c1h	=	0x00e7
                           0000E8   297 _adccon0	=	0x00e8
                           0000E9   298 _picon	=	0x00e9
                           0000EA   299 _pinen	=	0x00ea
                           0000EB   300 _pipen	=	0x00eb
                           0000EC   301 _pif	=	0x00ec
                           0000ED   302 _c2l	=	0x00ed
                           0000EE   303 _c2h	=	0x00ee
                           0000EF   304 _eip	=	0x00ef
                           0000F0   305 _b	=	0x00f0
                           0000F1   306 _capcon3	=	0x00f1
                           0000F2   307 _capcon4	=	0x00f2
                           0000F3   308 _spcr	=	0x00f3
                           0000F3   309 _spcr2	=	0x00f3
                           0000F4   310 _spsr	=	0x00f4
                           0000F5   311 _spdr	=	0x00f5
                           0000F6   312 _aindids	=	0x00f6
                           0000F7   313 _eiph	=	0x00f7
                           0000F8   314 _scon_1	=	0x00f8
                           0000F9   315 _pdten	=	0x00f9
                           0000FA   316 _pdtcnt	=	0x00fa
                           0000FB   317 _pmen	=	0x00fb
                           0000FC   318 _pmd	=	0x00fc
                           0000FE   319 _eip1	=	0x00fe
                           0000FF   320 _eiph1	=	0x00ff
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                                    326 ;--------------------------------------------------------
                                    327 ; overlayable register banks
                                    328 ;--------------------------------------------------------
                                    329 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        330 	.ds 8
                                    331 ;--------------------------------------------------------
                                    332 ; internal ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area DSEG    (DATA)
      000008                        335 _second::
      000008                        336 	.ds 2
      00000A                        337 _minute::
      00000A                        338 	.ds 2
      00000C                        339 _hour::
      00000C                        340 	.ds 2
      00000E                        341 _day::
      00000E                        342 	.ds 2
      000010                        343 _wday::
      000010                        344 	.ds 2
      000012                        345 _month::
      000012                        346 	.ds 2
      000014                        347 _year::
      000014                        348 	.ds 2
      000016                        349 _setTime_PARM_2:
      000016                        350 	.ds 1
      000017                        351 _setTime_PARM_3:
      000017                        352 	.ds 1
      000018                        353 _setTime_PARM_4:
      000018                        354 	.ds 1
      000019                        355 _setTime_PARM_5:
      000019                        356 	.ds 1
      00001A                        357 _setTime_PARM_6:
      00001A                        358 	.ds 1
      00001B                        359 _setTime_PARM_7:
      00001B                        360 	.ds 1
                                    361 ;--------------------------------------------------------
                                    362 ; overlayable items in internal ram
                                    363 ;--------------------------------------------------------
                                    364 ;--------------------------------------------------------
                                    365 ; Stack segment in internal ram
                                    366 ;--------------------------------------------------------
                                    367 	.area	SSEG
      000073                        368 __start__stack:
      000073                        369 	.ds	1
                                    370 
                                    371 ;--------------------------------------------------------
                                    372 ; indirectly addressable internal ram data
                                    373 ;--------------------------------------------------------
                                    374 	.area ISEG    (DATA)
                                    375 ;--------------------------------------------------------
                                    376 ; absolute internal ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area IABS    (ABS,DATA)
                                    379 	.area IABS    (ABS,DATA)
                                    380 ;--------------------------------------------------------
                                    381 ; bit data
                                    382 ;--------------------------------------------------------
                                    383 	.area BSEG    (BIT)
                                    384 ;--------------------------------------------------------
                                    385 ; paged external ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area PSEG    (PAG,XDATA)
                                    388 ;--------------------------------------------------------
                                    389 ; external ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area XSEG    (XDATA)
                                    392 ;--------------------------------------------------------
                                    393 ; absolute external ram data
                                    394 ;--------------------------------------------------------
                                    395 	.area XABS    (ABS,XDATA)
                                    396 ;--------------------------------------------------------
                                    397 ; external initialized ram data
                                    398 ;--------------------------------------------------------
                                    399 	.area XISEG   (XDATA)
                                    400 	.area HOME    (CODE)
                                    401 	.area GSINIT0 (CODE)
                                    402 	.area GSINIT1 (CODE)
                                    403 	.area GSINIT2 (CODE)
                                    404 	.area GSINIT3 (CODE)
                                    405 	.area GSINIT4 (CODE)
                                    406 	.area GSINIT5 (CODE)
                                    407 	.area GSINIT  (CODE)
                                    408 	.area GSFINAL (CODE)
                                    409 	.area CSEG    (CODE)
                                    410 ;--------------------------------------------------------
                                    411 ; interrupt vector
                                    412 ;--------------------------------------------------------
                                    413 	.area HOME    (CODE)
      000000                        414 __interrupt_vect:
      000000 02 00 06         [24]  415 	ljmp	__sdcc_gsinit_startup
                                    416 ;--------------------------------------------------------
                                    417 ; global & static initialisations
                                    418 ;--------------------------------------------------------
                                    419 	.area HOME    (CODE)
                                    420 	.area GSINIT  (CODE)
                                    421 	.area GSFINAL (CODE)
                                    422 	.area GSINIT  (CODE)
                                    423 	.globl __sdcc_gsinit_startup
                                    424 	.globl __sdcc_program_startup
                                    425 	.globl __start__stack
                                    426 	.globl __mcs51_genXINIT
                                    427 	.globl __mcs51_genXRAMCLEAR
                                    428 	.globl __mcs51_genRAMCLEAR
                                    429 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  430 	ljmp	__sdcc_program_startup
                                    431 ;--------------------------------------------------------
                                    432 ; Home
                                    433 ;--------------------------------------------------------
                                    434 	.area HOME    (CODE)
                                    435 	.area HOME    (CODE)
      000003                        436 __sdcc_program_startup:
      000003 02 00 65         [24]  437 	ljmp	_main
                                    438 ;	return from main will return to caller
                                    439 ;--------------------------------------------------------
                                    440 ; code
                                    441 ;--------------------------------------------------------
                                    442 	.area CSEG    (CODE)
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'main'
                                    445 ;------------------------------------------------------------
                                    446 ;	./Test_I2C.c:30: void main(void)
                                    447 ;	-----------------------------------------
                                    448 ;	 function main
                                    449 ;	-----------------------------------------
      000065                        450 _main:
                           000007   451 	ar7 = 0x07
                           000006   452 	ar6 = 0x06
                           000005   453 	ar5 = 0x05
                           000004   454 	ar4 = 0x04
                           000003   455 	ar3 = 0x03
                           000002   456 	ar2 = 0x02
                           000001   457 	ar1 = 0x01
                           000000   458 	ar0 = 0x00
                                    459 ;	./Test_I2C.c:33: I2C_begin();
      000065 12 02 D8         [24]  460 	lcall	_I2C_begin
                                    461 ;	./Test_I2C.c:35: setTime(19, 37, 45, 5, 30, 3, 23); // 12:30:45 CN 08-02-2015
      000068 75 16 25         [24]  462 	mov	_setTime_PARM_2,#0x25
      00006B 75 17 2D         [24]  463 	mov	_setTime_PARM_3,#0x2d
      00006E 75 18 05         [24]  464 	mov	_setTime_PARM_4,#0x05
      000071 75 19 1E         [24]  465 	mov	_setTime_PARM_5,#0x1e
      000074 75 1A 03         [24]  466 	mov	_setTime_PARM_6,#0x03
      000077 75 1B 17         [24]  467 	mov	_setTime_PARM_7,#0x17
      00007A 75 82 13         [24]  468 	mov	dpl,#0x13
      00007D 12 02 68         [24]  469 	lcall	_setTime
                                    470 ;	./Test_I2C.c:36: UART0_begin(BAUD_115200);
      000080 75 82 F7         [24]  471 	mov	dpl,#0xf7
      000083 12 05 C3         [24]  472 	lcall	_UART0_begin
                                    473 ;	./Test_I2C.c:37: while (1)
      000086                        474 00102$:
                                    475 ;	./Test_I2C.c:41: readDS1307();
      000086 12 00 97         [24]  476 	lcall	_readDS1307
                                    477 ;	./Test_I2C.c:43: digitalClockDisplay();
      000089 12 01 AB         [24]  478 	lcall	_digitalClockDisplay
                                    479 ;	./Test_I2C.c:44: _delay_ms(600);
      00008C 90 02 58         [24]  480 	mov	dptr,#0x0258
      00008F E4               [12]  481 	clr	a
      000090 F5 F0            [12]  482 	mov	b,a
      000092 12 06 86         [24]  483 	lcall	__delay_ms
                                    484 ;	./Test_I2C.c:46: }
      000095 80 EF            [24]  485 	sjmp	00102$
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'readDS1307'
                                    488 ;------------------------------------------------------------
                                    489 ;	./Test_I2C.c:48: void readDS1307()
                                    490 ;	-----------------------------------------
                                    491 ;	 function readDS1307
                                    492 ;	-----------------------------------------
      000097                        493 _readDS1307:
                                    494 ;	./Test_I2C.c:50: I2C_beginTransmission(DS1307);
      000097 90 10 CB         [24]  495 	mov	dptr,#_DS1307
      00009A E4               [12]  496 	clr	a
      00009B 93               [24]  497 	movc	a,@a+dptr
      00009C F5 82            [12]  498 	mov	dpl,a
      00009E 12 02 EB         [24]  499 	lcall	_I2C_beginTransmission
                                    500 ;	./Test_I2C.c:51: I2C_write((uint8_t)0x00);
      0000A1 75 82 00         [24]  501 	mov	dpl,#0x00
      0000A4 12 03 4C         [24]  502 	lcall	_I2C_write
                                    503 ;	./Test_I2C.c:52: I2C_endTransmission();
      0000A7 12 03 BA         [24]  504 	lcall	_I2C_endTransmission
                                    505 ;	./Test_I2C.c:53: I2C_requestFrom(DS1307, NumberOfFields);
      0000AA 90 10 CB         [24]  506 	mov	dptr,#_DS1307
      0000AD E4               [12]  507 	clr	a
      0000AE 93               [24]  508 	movc	a,@a+dptr
      0000AF FF               [12]  509 	mov	r7,a
      0000B0 90 10 CC         [24]  510 	mov	dptr,#_NumberOfFields
      0000B3 E4               [12]  511 	clr	a
      0000B4 93               [24]  512 	movc	a,@a+dptr
      0000B5 F5 1E            [12]  513 	mov	_I2C_requestFrom_PARM_2,a
      0000B7 8F 82            [24]  514 	mov	dpl,r7
      0000B9 12 04 30         [24]  515 	lcall	_I2C_requestFrom
                                    516 ;	./Test_I2C.c:55: second = bcd2dec(I2C_read() & 0x7f);
      0000BC 12 05 55         [24]  517 	lcall	_I2C_read
      0000BF E5 82            [12]  518 	mov	a,dpl
      0000C1 54 7F            [12]  519 	anl	a,#0x7f
      0000C3 F5 82            [12]  520 	mov	dpl,a
      0000C5 12 01 29         [24]  521 	lcall	_bcd2dec
      0000C8 85 82 08         [24]  522 	mov	_second,dpl
      0000CB 85 83 09         [24]  523 	mov	(_second + 1),dph
                                    524 ;	./Test_I2C.c:56: minute = bcd2dec(I2C_read());
      0000CE 12 05 55         [24]  525 	lcall	_I2C_read
      0000D1 12 01 29         [24]  526 	lcall	_bcd2dec
      0000D4 85 82 0A         [24]  527 	mov	_minute,dpl
      0000D7 85 83 0B         [24]  528 	mov	(_minute + 1),dph
                                    529 ;	./Test_I2C.c:57: hour = bcd2dec(I2C_read() & 0x3f); // chế độ 24h.
      0000DA 12 05 55         [24]  530 	lcall	_I2C_read
      0000DD E5 82            [12]  531 	mov	a,dpl
      0000DF 54 3F            [12]  532 	anl	a,#0x3f
      0000E1 F5 82            [12]  533 	mov	dpl,a
      0000E3 12 01 29         [24]  534 	lcall	_bcd2dec
      0000E6 85 82 0C         [24]  535 	mov	_hour,dpl
      0000E9 85 83 0D         [24]  536 	mov	(_hour + 1),dph
                                    537 ;	./Test_I2C.c:58: wday = bcd2dec(I2C_read());
      0000EC 12 05 55         [24]  538 	lcall	_I2C_read
      0000EF 12 01 29         [24]  539 	lcall	_bcd2dec
      0000F2 85 82 10         [24]  540 	mov	_wday,dpl
      0000F5 85 83 11         [24]  541 	mov	(_wday + 1),dph
                                    542 ;	./Test_I2C.c:59: day = bcd2dec(I2C_read());
      0000F8 12 05 55         [24]  543 	lcall	_I2C_read
      0000FB 12 01 29         [24]  544 	lcall	_bcd2dec
      0000FE 85 82 0E         [24]  545 	mov	_day,dpl
      000101 85 83 0F         [24]  546 	mov	(_day + 1),dph
                                    547 ;	./Test_I2C.c:60: month = bcd2dec(I2C_read());
      000104 12 05 55         [24]  548 	lcall	_I2C_read
      000107 12 01 29         [24]  549 	lcall	_bcd2dec
      00010A 85 82 12         [24]  550 	mov	_month,dpl
      00010D 85 83 13         [24]  551 	mov	(_month + 1),dph
                                    552 ;	./Test_I2C.c:61: year = bcd2dec(I2C_read());
      000110 12 05 55         [24]  553 	lcall	_I2C_read
      000113 12 01 29         [24]  554 	lcall	_bcd2dec
      000116 85 82 14         [24]  555 	mov	_year,dpl
      000119 85 83 15         [24]  556 	mov	(_year + 1),dph
                                    557 ;	./Test_I2C.c:62: year += 2000;
      00011C 74 D0            [12]  558 	mov	a,#0xd0
      00011E 25 14            [12]  559 	add	a,_year
      000120 F5 14            [12]  560 	mov	_year,a
      000122 74 07            [12]  561 	mov	a,#0x07
      000124 35 15            [12]  562 	addc	a,(_year + 1)
      000126 F5 15            [12]  563 	mov	(_year + 1),a
                                    564 ;	./Test_I2C.c:63: }
      000128 22               [24]  565 	ret
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'bcd2dec'
                                    568 ;------------------------------------------------------------
                                    569 ;num                       Allocated to registers r7 
                                    570 ;------------------------------------------------------------
                                    571 ;	./Test_I2C.c:65: int bcd2dec(uint8_t num)
                                    572 ;	-----------------------------------------
                                    573 ;	 function bcd2dec
                                    574 ;	-----------------------------------------
      000129                        575 _bcd2dec:
      000129 AF 82            [24]  576 	mov	r7,dpl
                                    577 ;	./Test_I2C.c:67: return ((num / 16 * 10) + (num % 16));
      00012B 7E 00            [12]  578 	mov	r6,#0x00
      00012D 75 69 10         [24]  579 	mov	__divsint_PARM_2,#0x10
                                    580 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000130 8E 6A            [24]  581 	mov	(__divsint_PARM_2 + 1),r6
      000132 8F 82            [24]  582 	mov	dpl,r7
      000134 8E 83            [24]  583 	mov	dph,r6
      000136 C0 07            [24]  584 	push	ar7
      000138 C0 06            [24]  585 	push	ar6
      00013A 12 10 74         [24]  586 	lcall	__divsint
      00013D 85 82 69         [24]  587 	mov	__mulint_PARM_2,dpl
      000140 85 83 6A         [24]  588 	mov	(__mulint_PARM_2 + 1),dph
      000143 90 00 0A         [24]  589 	mov	dptr,#0x000a
      000146 12 07 28         [24]  590 	lcall	__mulint
      000149 AC 82            [24]  591 	mov	r4,dpl
      00014B AD 83            [24]  592 	mov	r5,dph
      00014D D0 06            [24]  593 	pop	ar6
      00014F D0 07            [24]  594 	pop	ar7
      000151 53 07 0F         [24]  595 	anl	ar7,#0x0f
      000154 7E 00            [12]  596 	mov	r6,#0x00
      000156 EF               [12]  597 	mov	a,r7
      000157 2C               [12]  598 	add	a,r4
      000158 F5 82            [12]  599 	mov	dpl,a
      00015A EE               [12]  600 	mov	a,r6
      00015B 3D               [12]  601 	addc	a,r5
      00015C F5 83            [12]  602 	mov	dph,a
                                    603 ;	./Test_I2C.c:68: }
      00015E 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'dec2bcd'
                                    607 ;------------------------------------------------------------
                                    608 ;num                       Allocated to registers r7 
                                    609 ;------------------------------------------------------------
                                    610 ;	./Test_I2C.c:70: int dec2bcd(uint8_t num)
                                    611 ;	-----------------------------------------
                                    612 ;	 function dec2bcd
                                    613 ;	-----------------------------------------
      00015F                        614 _dec2bcd:
      00015F AF 82            [24]  615 	mov	r7,dpl
                                    616 ;	./Test_I2C.c:72: return ((num / 10 * 16) + (num % 10));
      000161 7E 00            [12]  617 	mov	r6,#0x00
      000163 75 69 0A         [24]  618 	mov	__divsint_PARM_2,#0x0a
                                    619 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000166 8E 6A            [24]  620 	mov	(__divsint_PARM_2 + 1),r6
      000168 8F 82            [24]  621 	mov	dpl,r7
      00016A 8E 83            [24]  622 	mov	dph,r6
      00016C C0 07            [24]  623 	push	ar7
      00016E C0 06            [24]  624 	push	ar6
      000170 12 10 74         [24]  625 	lcall	__divsint
      000173 AC 82            [24]  626 	mov	r4,dpl
      000175 AD 83            [24]  627 	mov	r5,dph
      000177 D0 06            [24]  628 	pop	ar6
      000179 D0 07            [24]  629 	pop	ar7
      00017B ED               [12]  630 	mov	a,r5
      00017C C4               [12]  631 	swap	a
      00017D 54 F0            [12]  632 	anl	a,#0xf0
      00017F CC               [12]  633 	xch	a,r4
      000180 C4               [12]  634 	swap	a
      000181 CC               [12]  635 	xch	a,r4
      000182 6C               [12]  636 	xrl	a,r4
      000183 CC               [12]  637 	xch	a,r4
      000184 54 F0            [12]  638 	anl	a,#0xf0
      000186 CC               [12]  639 	xch	a,r4
      000187 6C               [12]  640 	xrl	a,r4
      000188 FD               [12]  641 	mov	r5,a
      000189 75 69 0A         [24]  642 	mov	__modsint_PARM_2,#0x0a
      00018C 75 6A 00         [24]  643 	mov	(__modsint_PARM_2 + 1),#0x00
      00018F 8F 82            [24]  644 	mov	dpl,r7
      000191 8E 83            [24]  645 	mov	dph,r6
      000193 C0 05            [24]  646 	push	ar5
      000195 C0 04            [24]  647 	push	ar4
      000197 12 10 3E         [24]  648 	lcall	__modsint
      00019A AE 82            [24]  649 	mov	r6,dpl
      00019C AF 83            [24]  650 	mov	r7,dph
      00019E D0 04            [24]  651 	pop	ar4
      0001A0 D0 05            [24]  652 	pop	ar5
      0001A2 EE               [12]  653 	mov	a,r6
      0001A3 2C               [12]  654 	add	a,r4
      0001A4 F5 82            [12]  655 	mov	dpl,a
      0001A6 EF               [12]  656 	mov	a,r7
      0001A7 3D               [12]  657 	addc	a,r5
      0001A8 F5 83            [12]  658 	mov	dph,a
                                    659 ;	./Test_I2C.c:73: }
      0001AA 22               [24]  660 	ret
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'digitalClockDisplay'
                                    663 ;------------------------------------------------------------
                                    664 ;	./Test_I2C.c:75: void digitalClockDisplay()
                                    665 ;	-----------------------------------------
                                    666 ;	 function digitalClockDisplay
                                    667 ;	-----------------------------------------
      0001AB                        668 _digitalClockDisplay:
                                    669 ;	./Test_I2C.c:78: UART0_printNum(hour);
      0001AB AC 0C            [24]  670 	mov	r4,_hour
      0001AD E5 0D            [12]  671 	mov	a,(_hour + 1)
      0001AF FD               [12]  672 	mov	r5,a
      0001B0 33               [12]  673 	rlc	a
      0001B1 95 E0            [12]  674 	subb	a,acc
      0001B3 FE               [12]  675 	mov	r6,a
      0001B4 8C 82            [24]  676 	mov	dpl,r4
      0001B6 8D 83            [24]  677 	mov	dph,r5
      0001B8 8E F0            [24]  678 	mov	b,r6
      0001BA 12 06 4D         [24]  679 	lcall	_UART0_printNum
                                    680 ;	./Test_I2C.c:79: printDigits(minute);
      0001BD 85 0A 82         [24]  681 	mov	dpl,_minute
      0001C0 85 0B 83         [24]  682 	mov	dph,(_minute + 1)
      0001C3 12 02 29         [24]  683 	lcall	_printDigits
                                    684 ;	./Test_I2C.c:80: printDigits(second);
      0001C6 85 08 82         [24]  685 	mov	dpl,_second
      0001C9 85 09 83         [24]  686 	mov	dph,(_second + 1)
      0001CC 12 02 29         [24]  687 	lcall	_printDigits
                                    688 ;	./Test_I2C.c:81: UART0_print(" ");
      0001CF 90 10 CD         [24]  689 	mov	dptr,#___str_0
      0001D2 75 F0 80         [24]  690 	mov	b,#0x80
      0001D5 12 05 FC         [24]  691 	lcall	_UART0_print
                                    692 ;	./Test_I2C.c:82: UART0_printNum(day);
      0001D8 AC 0E            [24]  693 	mov	r4,_day
      0001DA E5 0F            [12]  694 	mov	a,(_day + 1)
      0001DC FD               [12]  695 	mov	r5,a
      0001DD 33               [12]  696 	rlc	a
      0001DE 95 E0            [12]  697 	subb	a,acc
      0001E0 FE               [12]  698 	mov	r6,a
      0001E1 8C 82            [24]  699 	mov	dpl,r4
      0001E3 8D 83            [24]  700 	mov	dph,r5
      0001E5 8E F0            [24]  701 	mov	b,r6
      0001E7 12 06 4D         [24]  702 	lcall	_UART0_printNum
                                    703 ;	./Test_I2C.c:83: UART0_print(" ");
      0001EA 90 10 CD         [24]  704 	mov	dptr,#___str_0
      0001ED 75 F0 80         [24]  705 	mov	b,#0x80
      0001F0 12 05 FC         [24]  706 	lcall	_UART0_print
                                    707 ;	./Test_I2C.c:84: UART0_printNum(month);
      0001F3 AC 12            [24]  708 	mov	r4,_month
      0001F5 E5 13            [12]  709 	mov	a,(_month + 1)
      0001F7 FD               [12]  710 	mov	r5,a
      0001F8 33               [12]  711 	rlc	a
      0001F9 95 E0            [12]  712 	subb	a,acc
      0001FB FE               [12]  713 	mov	r6,a
      0001FC 8C 82            [24]  714 	mov	dpl,r4
      0001FE 8D 83            [24]  715 	mov	dph,r5
      000200 8E F0            [24]  716 	mov	b,r6
      000202 12 06 4D         [24]  717 	lcall	_UART0_printNum
                                    718 ;	./Test_I2C.c:85: UART0_print(" ");
      000205 90 10 CD         [24]  719 	mov	dptr,#___str_0
      000208 75 F0 80         [24]  720 	mov	b,#0x80
      00020B 12 05 FC         [24]  721 	lcall	_UART0_print
                                    722 ;	./Test_I2C.c:86: UART0_printNum(year);
      00020E AC 14            [24]  723 	mov	r4,_year
      000210 E5 15            [12]  724 	mov	a,(_year + 1)
      000212 FD               [12]  725 	mov	r5,a
      000213 33               [12]  726 	rlc	a
      000214 95 E0            [12]  727 	subb	a,acc
      000216 FE               [12]  728 	mov	r6,a
      000217 8C 82            [24]  729 	mov	dpl,r4
      000219 8D 83            [24]  730 	mov	dph,r5
      00021B 8E F0            [24]  731 	mov	b,r6
      00021D 12 06 4D         [24]  732 	lcall	_UART0_printNum
                                    733 ;	./Test_I2C.c:87: UART0_println("");
      000220 90 10 CF         [24]  734 	mov	dptr,#___str_1
      000223 75 F0 80         [24]  735 	mov	b,#0x80
                                    736 ;	./Test_I2C.c:88: }
      000226 02 06 41         [24]  737 	ljmp	_UART0_println
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'printDigits'
                                    740 ;------------------------------------------------------------
                                    741 ;digits                    Allocated to registers r6 r7 
                                    742 ;------------------------------------------------------------
                                    743 ;	./Test_I2C.c:90: void printDigits(int digits)
                                    744 ;	-----------------------------------------
                                    745 ;	 function printDigits
                                    746 ;	-----------------------------------------
      000229                        747 _printDigits:
      000229 AE 82            [24]  748 	mov	r6,dpl
      00022B AF 83            [24]  749 	mov	r7,dph
                                    750 ;	./Test_I2C.c:93: UART0_print(":");
      00022D 90 10 D0         [24]  751 	mov	dptr,#___str_2
      000230 75 F0 80         [24]  752 	mov	b,#0x80
      000233 C0 07            [24]  753 	push	ar7
      000235 C0 06            [24]  754 	push	ar6
      000237 12 05 FC         [24]  755 	lcall	_UART0_print
      00023A D0 06            [24]  756 	pop	ar6
      00023C D0 07            [24]  757 	pop	ar7
                                    758 ;	./Test_I2C.c:95: if (digits < 10)
      00023E C3               [12]  759 	clr	c
      00023F EE               [12]  760 	mov	a,r6
      000240 94 0A            [12]  761 	subb	a,#0x0a
      000242 EF               [12]  762 	mov	a,r7
      000243 64 80            [12]  763 	xrl	a,#0x80
      000245 94 80            [12]  764 	subb	a,#0x80
      000247 50 11            [24]  765 	jnc	00102$
                                    766 ;	./Test_I2C.c:96: UART0_print("0");
      000249 90 10 D2         [24]  767 	mov	dptr,#___str_3
      00024C 75 F0 80         [24]  768 	mov	b,#0x80
      00024F C0 07            [24]  769 	push	ar7
      000251 C0 06            [24]  770 	push	ar6
      000253 12 05 FC         [24]  771 	lcall	_UART0_print
      000256 D0 06            [24]  772 	pop	ar6
      000258 D0 07            [24]  773 	pop	ar7
      00025A                        774 00102$:
                                    775 ;	./Test_I2C.c:97: UART0_printNum(digits);
      00025A EF               [12]  776 	mov	a,r7
      00025B 33               [12]  777 	rlc	a
      00025C 95 E0            [12]  778 	subb	a,acc
      00025E FD               [12]  779 	mov	r5,a
      00025F 8E 82            [24]  780 	mov	dpl,r6
      000261 8F 83            [24]  781 	mov	dph,r7
      000263 8D F0            [24]  782 	mov	b,r5
                                    783 ;	./Test_I2C.c:98: }
      000265 02 06 4D         [24]  784 	ljmp	_UART0_printNum
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'setTime'
                                    787 ;------------------------------------------------------------
                                    788 ;min                       Allocated with name '_setTime_PARM_2'
                                    789 ;sec                       Allocated with name '_setTime_PARM_3'
                                    790 ;wd                        Allocated with name '_setTime_PARM_4'
                                    791 ;d                         Allocated with name '_setTime_PARM_5'
                                    792 ;mth                       Allocated with name '_setTime_PARM_6'
                                    793 ;yr                        Allocated with name '_setTime_PARM_7'
                                    794 ;hr                        Allocated to registers r7 
                                    795 ;------------------------------------------------------------
                                    796 ;	./Test_I2C.c:101: void setTime(uint8_t hr, uint8_t min, uint8_t sec, uint8_t wd, uint8_t d, uint8_t mth, uint8_t yr)
                                    797 ;	-----------------------------------------
                                    798 ;	 function setTime
                                    799 ;	-----------------------------------------
      000268                        800 _setTime:
      000268 AF 82            [24]  801 	mov	r7,dpl
                                    802 ;	./Test_I2C.c:103: I2C_beginTransmission(DS1307);
      00026A 90 10 CB         [24]  803 	mov	dptr,#_DS1307
      00026D E4               [12]  804 	clr	a
      00026E 93               [24]  805 	movc	a,@a+dptr
      00026F F5 82            [12]  806 	mov	dpl,a
      000271 C0 07            [24]  807 	push	ar7
      000273 12 02 EB         [24]  808 	lcall	_I2C_beginTransmission
                                    809 ;	./Test_I2C.c:104: I2C_write(0x00); // đặt lại pointer
      000276 75 82 00         [24]  810 	mov	dpl,#0x00
      000279 12 03 4C         [24]  811 	lcall	_I2C_write
                                    812 ;	./Test_I2C.c:105: I2C_write(dec2bcd(sec));
      00027C 85 17 82         [24]  813 	mov	dpl,_setTime_PARM_3
      00027F 12 01 5F         [24]  814 	lcall	_dec2bcd
      000282 12 03 4C         [24]  815 	lcall	_I2C_write
                                    816 ;	./Test_I2C.c:106: I2C_write(dec2bcd(min));
      000285 85 16 82         [24]  817 	mov	dpl,_setTime_PARM_2
      000288 12 01 5F         [24]  818 	lcall	_dec2bcd
      00028B 12 03 4C         [24]  819 	lcall	_I2C_write
      00028E D0 07            [24]  820 	pop	ar7
                                    821 ;	./Test_I2C.c:107: I2C_write(dec2bcd(hr));
      000290 8F 82            [24]  822 	mov	dpl,r7
      000292 12 01 5F         [24]  823 	lcall	_dec2bcd
      000295 12 03 4C         [24]  824 	lcall	_I2C_write
                                    825 ;	./Test_I2C.c:108: I2C_write(dec2bcd(wd)); // day of week: Sunday = 1, Saturday = 7
      000298 85 18 82         [24]  826 	mov	dpl,_setTime_PARM_4
      00029B 12 01 5F         [24]  827 	lcall	_dec2bcd
      00029E 12 03 4C         [24]  828 	lcall	_I2C_write
                                    829 ;	./Test_I2C.c:109: I2C_write(dec2bcd(d));
      0002A1 85 19 82         [24]  830 	mov	dpl,_setTime_PARM_5
      0002A4 12 01 5F         [24]  831 	lcall	_dec2bcd
      0002A7 12 03 4C         [24]  832 	lcall	_I2C_write
                                    833 ;	./Test_I2C.c:110: I2C_write(dec2bcd(mth));
      0002AA 85 1A 82         [24]  834 	mov	dpl,_setTime_PARM_6
      0002AD 12 01 5F         [24]  835 	lcall	_dec2bcd
      0002B0 12 03 4C         [24]  836 	lcall	_I2C_write
                                    837 ;	./Test_I2C.c:111: I2C_write(dec2bcd(yr));
      0002B3 85 1B 82         [24]  838 	mov	dpl,_setTime_PARM_7
      0002B6 12 01 5F         [24]  839 	lcall	_dec2bcd
      0002B9 12 03 4C         [24]  840 	lcall	_I2C_write
                                    841 ;	./Test_I2C.c:112: I2C_endTransmission();
                                    842 ;	./Test_I2C.c:113: }
      0002BC 02 03 BA         [24]  843 	ljmp	_I2C_endTransmission
                                    844 	.area CSEG    (CODE)
                                    845 	.area CONST   (CODE)
      0010CB                        846 _DS1307:
      0010CB 68                     847 	.db #0x68	; 104	'h'
      0010CC                        848 _NumberOfFields:
      0010CC 07                     849 	.db #0x07	; 7
                                    850 	.area CONST   (CODE)
      0010CD                        851 ___str_0:
      0010CD 20                     852 	.ascii " "
      0010CE 00                     853 	.db 0x00
                                    854 	.area CSEG    (CODE)
                                    855 	.area CONST   (CODE)
      0010CF                        856 ___str_1:
      0010CF 00                     857 	.db 0x00
                                    858 	.area CSEG    (CODE)
                                    859 	.area CONST   (CODE)
      0010D0                        860 ___str_2:
      0010D0 3A                     861 	.ascii ":"
      0010D1 00                     862 	.db 0x00
                                    863 	.area CSEG    (CODE)
                                    864 	.area CONST   (CODE)
      0010D2                        865 ___str_3:
      0010D2 30                     866 	.ascii "0"
      0010D3 00                     867 	.db 0x00
                                    868 	.area CSEG    (CODE)
                                    869 	.area XINIT   (CODE)
                                    870 	.area CABS    (ABS,CODE)
