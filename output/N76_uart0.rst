                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module N76_uart0
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sprintf
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
                                    148 	.globl _UART0_begin
                                    149 	.globl _UART0_putChar
                                    150 	.globl _UART0_print
                                    151 	.globl _UART0_println
                                    152 	.globl _UART0_printNum
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _p0	=	0x0080
                           000081   159 _sp	=	0x0081
                           000082   160 _dpl	=	0x0082
                           000083   161 _dph	=	0x0083
                           000084   162 _rctrim0	=	0x0084
                           000085   163 _rctrim1	=	0x0085
                           000086   164 _rwk	=	0x0086
                           000087   165 _pcon	=	0x0087
                           000088   166 _tcon	=	0x0088
                           000089   167 _tmod	=	0x0089
                           00008A   168 _tl0	=	0x008a
                           00008B   169 _tl1	=	0x008b
                           00008C   170 _th0	=	0x008c
                           00008D   171 _th1	=	0x008d
                           00008E   172 _ckcon	=	0x008e
                           00008F   173 _wkcon	=	0x008f
                           000090   174 _p1	=	0x0090
                           000091   175 _sfrs	=	0x0091
                           000092   176 _capcon0	=	0x0092
                           000093   177 _capcon1	=	0x0093
                           000094   178 _capcon2	=	0x0094
                           000095   179 _ckdiv	=	0x0095
                           000096   180 _ckswt	=	0x0096
                           000097   181 _cken	=	0x0097
                           000098   182 _scon	=	0x0098
                           000099   183 _sbuf	=	0x0099
                           00009A   184 _sbuf_1	=	0x009a
                           00009B   185 _eie	=	0x009b
                           00009C   186 _eie1	=	0x009c
                           00009F   187 _chpcon	=	0x009f
                           0000A0   188 _p2	=	0x00a0
                           0000A2   189 _auxr1	=	0x00a2
                           0000A3   190 _bodcon0	=	0x00a3
                           0000A4   191 _iaptrg	=	0x00a4
                           0000A5   192 _iapuen	=	0x00a5
                           0000A6   193 _iapal	=	0x00a6
                           0000A7   194 _iapah	=	0x00a7
                           0000A8   195 _ie	=	0x00a8
                           0000A9   196 _saddr	=	0x00a9
                           0000AA   197 _wdcon	=	0x00aa
                           0000AB   198 _bodcon1	=	0x00ab
                           0000AC   199 _p3m1	=	0x00ac
                           0000AC   200 _p3s	=	0x00ac
                           0000AD   201 _p3m2	=	0x00ad
                           0000AD   202 _p3sr	=	0x00ad
                           0000AE   203 _iapfd	=	0x00ae
                           0000AF   204 _iapcn	=	0x00af
                           0000B0   205 _p3	=	0x00b0
                           0000B1   206 _p0m1	=	0x00b1
                           0000B1   207 _p0s	=	0x00b1
                           0000B2   208 _p0m2	=	0x00b2
                           0000B2   209 _p0sr	=	0x00b2
                           0000B3   210 _p1m1	=	0x00b3
                           0000B3   211 _p1s	=	0x00b3
                           0000B4   212 _p1m2	=	0x00b4
                           0000B4   213 _p1sr	=	0x00b4
                           0000B5   214 _p2s	=	0x00b5
                           0000B7   215 _iph	=	0x00b7
                           0000B7   216 _pwmintc	=	0x00b7
                           0000B8   217 _ip	=	0x00b8
                           0000B9   218 _saden	=	0x00b9
                           0000BA   219 _saden_1	=	0x00ba
                           0000BB   220 _saddr_1	=	0x00bb
                           0000BC   221 _i2dat	=	0x00bc
                           0000BD   222 _i2stat	=	0x00bd
                           0000BE   223 _i2clk	=	0x00be
                           0000BF   224 _i2toc	=	0x00bf
                           0000C0   225 _i2con	=	0x00c0
                           0000C1   226 _i2addr	=	0x00c1
                           0000C2   227 _adcrl	=	0x00c2
                           0000C3   228 _adcrh	=	0x00c3
                           0000C4   229 _t3con	=	0x00c4
                           0000C4   230 _pwm4h	=	0x00c4
                           0000C5   231 _rl3	=	0x00c5
                           0000C5   232 _pwm5h	=	0x00c5
                           0000C6   233 _rh3	=	0x00c6
                           0000C6   234 _piocon1	=	0x00c6
                           0000C7   235 _ta	=	0x00c7
                           0000C8   236 _t2con	=	0x00c8
                           0000C9   237 _t2mod	=	0x00c9
                           0000CA   238 _rcmp2l	=	0x00ca
                           0000CB   239 _rcmp2h	=	0x00cb
                           0000CC   240 _tl2	=	0x00cc
                           0000CC   241 _pwm4l	=	0x00cc
                           0000CD   242 _th2	=	0x00cd
                           0000CD   243 _pwm5l	=	0x00cd
                           0000CE   244 _adcmpl	=	0x00ce
                           0000CF   245 _adcmph	=	0x00cf
                           0000D0   246 _psw	=	0x00d0
                           0000D1   247 _pwmph	=	0x00d1
                           0000D2   248 _pwm0h	=	0x00d2
                           0000D3   249 _pwm1h	=	0x00d3
                           0000D4   250 _pwm2h	=	0x00d4
                           0000D5   251 _pwm3h	=	0x00d5
                           0000D6   252 _pnp	=	0x00d6
                           0000D7   253 _fbd	=	0x00d7
                           0000D8   254 _pwmcon0	=	0x00d8
                           0000D9   255 _pwmpl	=	0x00d9
                           0000DA   256 _pwm0l	=	0x00da
                           0000DB   257 _pwm1l	=	0x00db
                           0000DC   258 _pwm2l	=	0x00dc
                           0000DD   259 _pwm3l	=	0x00dd
                           0000DE   260 _piocon0	=	0x00de
                           0000DF   261 _pwmcon1	=	0x00df
                           0000E0   262 _acc	=	0x00e0
                           0000E1   263 _adccon1	=	0x00e1
                           0000E2   264 _adccon2	=	0x00e2
                           0000E3   265 _adcdly	=	0x00e3
                           0000E4   266 _c0l	=	0x00e4
                           0000E5   267 _c0h	=	0x00e5
                           0000E6   268 _c1l	=	0x00e6
                           0000E7   269 _c1h	=	0x00e7
                           0000E8   270 _adccon0	=	0x00e8
                           0000E9   271 _picon	=	0x00e9
                           0000EA   272 _pinen	=	0x00ea
                           0000EB   273 _pipen	=	0x00eb
                           0000EC   274 _pif	=	0x00ec
                           0000ED   275 _c2l	=	0x00ed
                           0000EE   276 _c2h	=	0x00ee
                           0000EF   277 _eip	=	0x00ef
                           0000F0   278 _b	=	0x00f0
                           0000F1   279 _capcon3	=	0x00f1
                           0000F2   280 _capcon4	=	0x00f2
                           0000F3   281 _spcr	=	0x00f3
                           0000F3   282 _spcr2	=	0x00f3
                           0000F4   283 _spsr	=	0x00f4
                           0000F5   284 _spdr	=	0x00f5
                           0000F6   285 _aindids	=	0x00f6
                           0000F7   286 _eiph	=	0x00f7
                           0000F8   287 _scon_1	=	0x00f8
                           0000F9   288 _pdten	=	0x00f9
                           0000FA   289 _pdtcnt	=	0x00fa
                           0000FB   290 _pmen	=	0x00fb
                           0000FC   291 _pmd	=	0x00fc
                           0000FE   292 _eip1	=	0x00fe
                           0000FF   293 _eiph1	=	0x00ff
                                    294 ;--------------------------------------------------------
                                    295 ; special function bits
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                                    299 ;--------------------------------------------------------
                                    300 ; overlayable register banks
                                    301 ;--------------------------------------------------------
                                    302 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        303 	.ds 8
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
      00000A                        308 _UART0_printNum_dis_65536_30:
      00000A                        309 	.ds 20
                                    310 ;--------------------------------------------------------
                                    311 ; overlayable items in internal ram
                                    312 ;--------------------------------------------------------
                                    313 	.area	OSEG    (OVR,DATA)
                                    314 	.area	OSEG    (OVR,DATA)
                                    315 ;--------------------------------------------------------
                                    316 ; indirectly addressable internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area ISEG    (DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; absolute internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area IABS    (ABS,DATA)
                                    323 	.area IABS    (ABS,DATA)
                                    324 ;--------------------------------------------------------
                                    325 ; bit data
                                    326 ;--------------------------------------------------------
                                    327 	.area BSEG    (BIT)
                                    328 ;--------------------------------------------------------
                                    329 ; paged external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area PSEG    (PAG,XDATA)
                                    332 ;--------------------------------------------------------
                                    333 ; external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XSEG    (XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; absolute external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XABS    (ABS,XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; external initialized ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XISEG   (XDATA)
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT0 (CODE)
                                    346 	.area GSINIT1 (CODE)
                                    347 	.area GSINIT2 (CODE)
                                    348 	.area GSINIT3 (CODE)
                                    349 	.area GSINIT4 (CODE)
                                    350 	.area GSINIT5 (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.area GSFINAL (CODE)
                                    353 	.area CSEG    (CODE)
                                    354 ;--------------------------------------------------------
                                    355 ; global & static initialisations
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 ;--------------------------------------------------------
                                    362 ; Home
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
                                    365 	.area HOME    (CODE)
                                    366 ;--------------------------------------------------------
                                    367 ; code
                                    368 ;--------------------------------------------------------
                                    369 	.area CSEG    (CODE)
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'UART0_begin'
                                    372 ;------------------------------------------------------------
                                    373 ;baud                      Allocated to registers r7 
                                    374 ;------------------------------------------------------------
                                    375 ;	./src/N76_uart0.c:11: void UART0_begin(uint8_t baud)
                                    376 ;	-----------------------------------------
                                    377 ;	 function UART0_begin
                                    378 ;	-----------------------------------------
      00049D                        379 _UART0_begin:
                           000007   380 	ar7 = 0x07
                           000006   381 	ar6 = 0x06
                           000005   382 	ar5 = 0x05
                           000004   383 	ar4 = 0x04
                           000003   384 	ar3 = 0x03
                           000002   385 	ar2 = 0x02
                           000001   386 	ar1 = 0x01
                           000000   387 	ar0 = 0x00
      00049D AF 82            [24]  388 	mov	r7,dpl
                                    389 ;	./src/N76_uart0.c:13: clrb(P0M1, 6);
      00049F 53 B1 BF         [24]  390 	anl	_p0m1,#0xbf
                                    391 ;	./src/N76_uart0.c:14: clrb(P0M2, 6);
      0004A2 53 B2 BF         [24]  392 	anl	_p0m2,#0xbf
                                    393 ;	./src/N76_uart0.c:15: clrb(P0M1, 7);
      0004A5 53 B1 7F         [24]  394 	anl	_p0m1,#0x7f
                                    395 ;	./src/N76_uart0.c:16: clrb(P0M2, 7); // set pin at quad mode
      0004A8 53 B2 7F         [24]  396 	anl	_p0m2,#0x7f
                                    397 ;	./src/N76_uart0.c:18: TH1 = baud;		 // set baudrate
      0004AB 8F 8D            [24]  398 	mov	_th1,r7
                                    399 ;	./src/N76_uart0.c:19: setb(SCON, SM1); // UART0 Mode1,REN=1,TI=1
      0004AD 43 98 40         [24]  400 	orl	_scon,#0x40
                                    401 ;	./src/N76_uart0.c:20: setb(SCON, REN); // UART0 Mode1,REN=1,TI=1
      0004B0 43 98 10         [24]  402 	orl	_scon,#0x10
                                    403 ;	./src/N76_uart0.c:21: TMOD |= 0x20;	 // Timer1 Mode1
      0004B3 43 89 20         [24]  404 	orl	_tmod,#0x20
                                    405 ;	./src/N76_uart0.c:22: setb(PCON, SMOD);
      0004B6 43 87 80         [24]  406 	orl	_pcon,#0x80
                                    407 ;	./src/N76_uart0.c:23: setb(CKCON, T1M);
      0004B9 43 8E 10         [24]  408 	orl	_ckcon,#0x10
                                    409 ;	./src/N76_uart0.c:24: clrb(T3CON, BRCK);
      0004BC 53 C4 DF         [24]  410 	anl	_t3con,#0xdf
                                    411 ;	./src/N76_uart0.c:25: setb(TCON, TR1);
      0004BF 43 88 40         [24]  412 	orl	_tcon,#0x40
                                    413 ;	./src/N76_uart0.c:26: clrb(SCON, TI);
      0004C2 53 98 FD         [24]  414 	anl	_scon,#0xfd
                                    415 ;	./src/N76_uart0.c:27: }
      0004C5 22               [24]  416 	ret
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'UART0_putChar'
                                    419 ;------------------------------------------------------------
                                    420 ;val                       Allocated to registers r7 
                                    421 ;------------------------------------------------------------
                                    422 ;	./src/N76_uart0.c:28: void UART0_putChar(uint8_t val)
                                    423 ;	-----------------------------------------
                                    424 ;	 function UART0_putChar
                                    425 ;	-----------------------------------------
      0004C6                        426 _UART0_putChar:
      0004C6 AF 82            [24]  427 	mov	r7,dpl
                                    428 ;	./src/N76_uart0.c:30: clrb(SCON, TI);
      0004C8 53 98 FD         [24]  429 	anl	_scon,#0xfd
                                    430 ;	./src/N76_uart0.c:31: SBUF = val;
      0004CB 8F 99            [24]  431 	mov	_sbuf,r7
                                    432 ;	./src/N76_uart0.c:32: while (inbit(SCON, TI) == 0)
      0004CD                        433 00101$:
      0004CD 74 02            [12]  434 	mov	a,#0x02
      0004CF 55 98            [12]  435 	anl	a,_scon
      0004D1 C3               [12]  436 	clr	c
      0004D2 13               [12]  437 	rrc	a
      0004D3 60 F8            [24]  438 	jz	00101$
                                    439 ;	./src/N76_uart0.c:34: }
      0004D5 22               [24]  440 	ret
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'UART0_print'
                                    443 ;------------------------------------------------------------
                                    444 ;str                       Allocated to registers r5 r6 r7 
                                    445 ;i                         Allocated to registers r4 
                                    446 ;------------------------------------------------------------
                                    447 ;	./src/N76_uart0.c:36: void UART0_print(char *str)
                                    448 ;	-----------------------------------------
                                    449 ;	 function UART0_print
                                    450 ;	-----------------------------------------
      0004D6                        451 _UART0_print:
      0004D6 AD 82            [24]  452 	mov	r5,dpl
      0004D8 AE 83            [24]  453 	mov	r6,dph
      0004DA AF F0            [24]  454 	mov	r7,b
                                    455 ;	./src/N76_uart0.c:39: while (str[i] != '\0')
      0004DC 7C 00            [12]  456 	mov	r4,#0x00
      0004DE                        457 00101$:
      0004DE EC               [12]  458 	mov	a,r4
      0004DF 2D               [12]  459 	add	a,r5
      0004E0 F9               [12]  460 	mov	r1,a
      0004E1 E4               [12]  461 	clr	a
      0004E2 3E               [12]  462 	addc	a,r6
      0004E3 FA               [12]  463 	mov	r2,a
      0004E4 8F 03            [24]  464 	mov	ar3,r7
      0004E6 89 82            [24]  465 	mov	dpl,r1
      0004E8 8A 83            [24]  466 	mov	dph,r2
      0004EA 8B F0            [24]  467 	mov	b,r3
      0004EC 12 0D E4         [24]  468 	lcall	__gptrget
      0004EF 60 29            [24]  469 	jz	00104$
                                    470 ;	./src/N76_uart0.c:40: UART0_putChar(str[i++]);
      0004F1 EC               [12]  471 	mov	a,r4
      0004F2 2D               [12]  472 	add	a,r5
      0004F3 F9               [12]  473 	mov	r1,a
      0004F4 E4               [12]  474 	clr	a
      0004F5 3E               [12]  475 	addc	a,r6
      0004F6 FA               [12]  476 	mov	r2,a
      0004F7 8F 03            [24]  477 	mov	ar3,r7
      0004F9 0C               [12]  478 	inc	r4
      0004FA 89 82            [24]  479 	mov	dpl,r1
      0004FC 8A 83            [24]  480 	mov	dph,r2
      0004FE 8B F0            [24]  481 	mov	b,r3
      000500 12 0D E4         [24]  482 	lcall	__gptrget
      000503 F5 82            [12]  483 	mov	dpl,a
      000505 C0 07            [24]  484 	push	ar7
      000507 C0 06            [24]  485 	push	ar6
      000509 C0 05            [24]  486 	push	ar5
      00050B C0 04            [24]  487 	push	ar4
      00050D 12 04 C6         [24]  488 	lcall	_UART0_putChar
      000510 D0 04            [24]  489 	pop	ar4
      000512 D0 05            [24]  490 	pop	ar5
      000514 D0 06            [24]  491 	pop	ar6
      000516 D0 07            [24]  492 	pop	ar7
      000518 80 C4            [24]  493 	sjmp	00101$
      00051A                        494 00104$:
                                    495 ;	./src/N76_uart0.c:41: }
      00051A 22               [24]  496 	ret
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'UART0_println'
                                    499 ;------------------------------------------------------------
                                    500 ;str                       Allocated to registers r5 r6 r7 
                                    501 ;------------------------------------------------------------
                                    502 ;	./src/N76_uart0.c:43: void UART0_println(char *str)
                                    503 ;	-----------------------------------------
                                    504 ;	 function UART0_println
                                    505 ;	-----------------------------------------
      00051B                        506 _UART0_println:
                                    507 ;	./src/N76_uart0.c:45: UART0_print(str);
      00051B 12 04 D6         [24]  508 	lcall	_UART0_print
                                    509 ;	./src/N76_uart0.c:46: UART0_print("\r\n");
      00051E 90 0E 27         [24]  510 	mov	dptr,#___str_0
      000521 75 F0 80         [24]  511 	mov	b,#0x80
                                    512 ;	./src/N76_uart0.c:47: }
      000524 02 04 D6         [24]  513 	ljmp	_UART0_print
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'UART0_printNum'
                                    516 ;------------------------------------------------------------
                                    517 ;num                       Allocated to registers r4 r5 r6 r7 
                                    518 ;dis                       Allocated with name '_UART0_printNum_dis_65536_30'
                                    519 ;------------------------------------------------------------
                                    520 ;	./src/N76_uart0.c:49: void UART0_printNum(long num)
                                    521 ;	-----------------------------------------
                                    522 ;	 function UART0_printNum
                                    523 ;	-----------------------------------------
      000527                        524 _UART0_printNum:
      000527 AC 82            [24]  525 	mov	r4,dpl
      000529 AD 83            [24]  526 	mov	r5,dph
      00052B AE F0            [24]  527 	mov	r6,b
      00052D FF               [12]  528 	mov	r7,a
                                    529 ;	./src/N76_uart0.c:52: sprintf(dis, "%li", num);
      00052E C0 04            [24]  530 	push	ar4
      000530 C0 05            [24]  531 	push	ar5
      000532 C0 06            [24]  532 	push	ar6
      000534 C0 07            [24]  533 	push	ar7
      000536 74 2A            [12]  534 	mov	a,#___str_1
      000538 C0 E0            [24]  535 	push	acc
      00053A 74 0E            [12]  536 	mov	a,#(___str_1 >> 8)
      00053C C0 E0            [24]  537 	push	acc
      00053E 74 80            [12]  538 	mov	a,#0x80
      000540 C0 E0            [24]  539 	push	acc
      000542 74 0A            [12]  540 	mov	a,#_UART0_printNum_dis_65536_30
      000544 C0 E0            [24]  541 	push	acc
      000546 74 00            [12]  542 	mov	a,#(_UART0_printNum_dis_65536_30 >> 8)
      000548 C0 E0            [24]  543 	push	acc
      00054A 74 40            [12]  544 	mov	a,#0x40
      00054C C0 E0            [24]  545 	push	acc
      00054E 12 06 7B         [24]  546 	lcall	_sprintf
      000551 E5 81            [12]  547 	mov	a,sp
      000553 24 F6            [12]  548 	add	a,#0xf6
      000555 F5 81            [12]  549 	mov	sp,a
                                    550 ;	./src/N76_uart0.c:53: UART0_print(dis);
      000557 90 00 0A         [24]  551 	mov	dptr,#_UART0_printNum_dis_65536_30
      00055A 75 F0 40         [24]  552 	mov	b,#0x40
                                    553 ;	./src/N76_uart0.c:54: }
      00055D 02 04 D6         [24]  554 	ljmp	_UART0_print
                                    555 	.area CSEG    (CODE)
                                    556 	.area CONST   (CODE)
                                    557 	.area CONST   (CODE)
      000E27                        558 ___str_0:
      000E27 0D                     559 	.db 0x0d
      000E28 0A                     560 	.db 0x0a
      000E29 00                     561 	.db 0x00
                                    562 	.area CSEG    (CODE)
                                    563 	.area CONST   (CODE)
      000E2A                        564 ___str_1:
      000E2A 25 6C 69               565 	.ascii "%li"
      000E2D 00                     566 	.db 0x00
                                    567 	.area CSEG    (CODE)
                                    568 	.area XINIT   (CODE)
                                    569 	.area CABS    (ABS,CODE)
