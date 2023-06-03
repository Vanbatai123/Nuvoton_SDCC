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
                                     11 	.globl _eiph1
                                     12 	.globl _eip1
                                     13 	.globl _pmd
                                     14 	.globl _pmen
                                     15 	.globl _pdtcnt
                                     16 	.globl _pdten
                                     17 	.globl _scon_1
                                     18 	.globl _eiph
                                     19 	.globl _aindids
                                     20 	.globl _spdr
                                     21 	.globl _spsr
                                     22 	.globl _spcr2
                                     23 	.globl _spcr
                                     24 	.globl _capcon4
                                     25 	.globl _capcon3
                                     26 	.globl _b
                                     27 	.globl _eip
                                     28 	.globl _c2h
                                     29 	.globl _c2l
                                     30 	.globl _pif
                                     31 	.globl _pipen
                                     32 	.globl _pinen
                                     33 	.globl _picon
                                     34 	.globl _adccon0
                                     35 	.globl _c1h
                                     36 	.globl _c1l
                                     37 	.globl _c0h
                                     38 	.globl _c0l
                                     39 	.globl _adcdly
                                     40 	.globl _adccon2
                                     41 	.globl _adccon1
                                     42 	.globl _acc
                                     43 	.globl _pwmcon1
                                     44 	.globl _piocon0
                                     45 	.globl _pwm3l
                                     46 	.globl _pwm2l
                                     47 	.globl _pwm1l
                                     48 	.globl _pwm0l
                                     49 	.globl _pwmpl
                                     50 	.globl _pwmcon0
                                     51 	.globl _fbd
                                     52 	.globl _pnp
                                     53 	.globl _pwm3h
                                     54 	.globl _pwm2h
                                     55 	.globl _pwm1h
                                     56 	.globl _pwm0h
                                     57 	.globl _pwmph
                                     58 	.globl _psw
                                     59 	.globl _adcmph
                                     60 	.globl _adcmpl
                                     61 	.globl _pwm5l
                                     62 	.globl _th2
                                     63 	.globl _pwm4l
                                     64 	.globl _tl2
                                     65 	.globl _rcmp2h
                                     66 	.globl _rcmp2l
                                     67 	.globl _t2mod
                                     68 	.globl _t2con
                                     69 	.globl _ta
                                     70 	.globl _piocon1
                                     71 	.globl _rh3
                                     72 	.globl _pwm5h
                                     73 	.globl _rl3
                                     74 	.globl _pwm4h
                                     75 	.globl _t3con
                                     76 	.globl _adcrh
                                     77 	.globl _adcrl
                                     78 	.globl _i2addr
                                     79 	.globl _i2con
                                     80 	.globl _i2toc
                                     81 	.globl _i2clk
                                     82 	.globl _i2stat
                                     83 	.globl _i2dat
                                     84 	.globl _saddr_1
                                     85 	.globl _saden_1
                                     86 	.globl _saden
                                     87 	.globl _ip
                                     88 	.globl _pwmintc
                                     89 	.globl _iph
                                     90 	.globl _p2s
                                     91 	.globl _p1sr
                                     92 	.globl _p1m2
                                     93 	.globl _p1s
                                     94 	.globl _p1m1
                                     95 	.globl _p0sr
                                     96 	.globl _p0m2
                                     97 	.globl _p0s
                                     98 	.globl _p0m1
                                     99 	.globl _p3
                                    100 	.globl _iapcn
                                    101 	.globl _iapfd
                                    102 	.globl _p3sr
                                    103 	.globl _p3m2
                                    104 	.globl _p3s
                                    105 	.globl _p3m1
                                    106 	.globl _bodcon1
                                    107 	.globl _wdcon
                                    108 	.globl _saddr
                                    109 	.globl _ie
                                    110 	.globl _iapah
                                    111 	.globl _iapal
                                    112 	.globl _iapuen
                                    113 	.globl _iaptrg
                                    114 	.globl _bodcon0
                                    115 	.globl _auxr1
                                    116 	.globl _p2
                                    117 	.globl _chpcon
                                    118 	.globl _eie1
                                    119 	.globl _eie
                                    120 	.globl _sbuf_1
                                    121 	.globl _sbuf
                                    122 	.globl _scon
                                    123 	.globl _cken
                                    124 	.globl _ckswt
                                    125 	.globl _ckdiv
                                    126 	.globl _capcon2
                                    127 	.globl _capcon1
                                    128 	.globl _capcon0
                                    129 	.globl _sfrs
                                    130 	.globl _p1
                                    131 	.globl _wkcon
                                    132 	.globl _ckcon
                                    133 	.globl _th1
                                    134 	.globl _th0
                                    135 	.globl _tl1
                                    136 	.globl _tl0
                                    137 	.globl _tmod
                                    138 	.globl _tcon
                                    139 	.globl _pcon
                                    140 	.globl _rwk
                                    141 	.globl _rctrim1
                                    142 	.globl _rctrim0
                                    143 	.globl _dph
                                    144 	.globl _dpl
                                    145 	.globl _sp
                                    146 	.globl _p0
                                    147 	.globl _UART0_printNumln_PARM_2
                                    148 	.globl _UART0_printNum_PARM_2
                                    149 	.globl _UART0_begin
                                    150 	.globl _UART0_putChar
                                    151 	.globl _UART0_print
                                    152 	.globl _UART0_println
                                    153 	.globl _UART0_printNum
                                    154 	.globl _UART0_printNumln
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _p0	=	0x0080
                           000081   161 _sp	=	0x0081
                           000082   162 _dpl	=	0x0082
                           000083   163 _dph	=	0x0083
                           000084   164 _rctrim0	=	0x0084
                           000085   165 _rctrim1	=	0x0085
                           000086   166 _rwk	=	0x0086
                           000087   167 _pcon	=	0x0087
                           000088   168 _tcon	=	0x0088
                           000089   169 _tmod	=	0x0089
                           00008A   170 _tl0	=	0x008a
                           00008B   171 _tl1	=	0x008b
                           00008C   172 _th0	=	0x008c
                           00008D   173 _th1	=	0x008d
                           00008E   174 _ckcon	=	0x008e
                           00008F   175 _wkcon	=	0x008f
                           000090   176 _p1	=	0x0090
                           000091   177 _sfrs	=	0x0091
                           000092   178 _capcon0	=	0x0092
                           000093   179 _capcon1	=	0x0093
                           000094   180 _capcon2	=	0x0094
                           000095   181 _ckdiv	=	0x0095
                           000096   182 _ckswt	=	0x0096
                           000097   183 _cken	=	0x0097
                           000098   184 _scon	=	0x0098
                           000099   185 _sbuf	=	0x0099
                           00009A   186 _sbuf_1	=	0x009a
                           00009B   187 _eie	=	0x009b
                           00009C   188 _eie1	=	0x009c
                           00009F   189 _chpcon	=	0x009f
                           0000A0   190 _p2	=	0x00a0
                           0000A2   191 _auxr1	=	0x00a2
                           0000A3   192 _bodcon0	=	0x00a3
                           0000A4   193 _iaptrg	=	0x00a4
                           0000A5   194 _iapuen	=	0x00a5
                           0000A6   195 _iapal	=	0x00a6
                           0000A7   196 _iapah	=	0x00a7
                           0000A8   197 _ie	=	0x00a8
                           0000A9   198 _saddr	=	0x00a9
                           0000AA   199 _wdcon	=	0x00aa
                           0000AB   200 _bodcon1	=	0x00ab
                           0000AC   201 _p3m1	=	0x00ac
                           0000AC   202 _p3s	=	0x00ac
                           0000AD   203 _p3m2	=	0x00ad
                           0000AD   204 _p3sr	=	0x00ad
                           0000AE   205 _iapfd	=	0x00ae
                           0000AF   206 _iapcn	=	0x00af
                           0000B0   207 _p3	=	0x00b0
                           0000B1   208 _p0m1	=	0x00b1
                           0000B1   209 _p0s	=	0x00b1
                           0000B2   210 _p0m2	=	0x00b2
                           0000B2   211 _p0sr	=	0x00b2
                           0000B3   212 _p1m1	=	0x00b3
                           0000B3   213 _p1s	=	0x00b3
                           0000B4   214 _p1m2	=	0x00b4
                           0000B4   215 _p1sr	=	0x00b4
                           0000B5   216 _p2s	=	0x00b5
                           0000B7   217 _iph	=	0x00b7
                           0000B7   218 _pwmintc	=	0x00b7
                           0000B8   219 _ip	=	0x00b8
                           0000B9   220 _saden	=	0x00b9
                           0000BA   221 _saden_1	=	0x00ba
                           0000BB   222 _saddr_1	=	0x00bb
                           0000BC   223 _i2dat	=	0x00bc
                           0000BD   224 _i2stat	=	0x00bd
                           0000BE   225 _i2clk	=	0x00be
                           0000BF   226 _i2toc	=	0x00bf
                           0000C0   227 _i2con	=	0x00c0
                           0000C1   228 _i2addr	=	0x00c1
                           0000C2   229 _adcrl	=	0x00c2
                           0000C3   230 _adcrh	=	0x00c3
                           0000C4   231 _t3con	=	0x00c4
                           0000C4   232 _pwm4h	=	0x00c4
                           0000C5   233 _rl3	=	0x00c5
                           0000C5   234 _pwm5h	=	0x00c5
                           0000C6   235 _rh3	=	0x00c6
                           0000C6   236 _piocon1	=	0x00c6
                           0000C7   237 _ta	=	0x00c7
                           0000C8   238 _t2con	=	0x00c8
                           0000C9   239 _t2mod	=	0x00c9
                           0000CA   240 _rcmp2l	=	0x00ca
                           0000CB   241 _rcmp2h	=	0x00cb
                           0000CC   242 _tl2	=	0x00cc
                           0000CC   243 _pwm4l	=	0x00cc
                           0000CD   244 _th2	=	0x00cd
                           0000CD   245 _pwm5l	=	0x00cd
                           0000CE   246 _adcmpl	=	0x00ce
                           0000CF   247 _adcmph	=	0x00cf
                           0000D0   248 _psw	=	0x00d0
                           0000D1   249 _pwmph	=	0x00d1
                           0000D2   250 _pwm0h	=	0x00d2
                           0000D3   251 _pwm1h	=	0x00d3
                           0000D4   252 _pwm2h	=	0x00d4
                           0000D5   253 _pwm3h	=	0x00d5
                           0000D6   254 _pnp	=	0x00d6
                           0000D7   255 _fbd	=	0x00d7
                           0000D8   256 _pwmcon0	=	0x00d8
                           0000D9   257 _pwmpl	=	0x00d9
                           0000DA   258 _pwm0l	=	0x00da
                           0000DB   259 _pwm1l	=	0x00db
                           0000DC   260 _pwm2l	=	0x00dc
                           0000DD   261 _pwm3l	=	0x00dd
                           0000DE   262 _piocon0	=	0x00de
                           0000DF   263 _pwmcon1	=	0x00df
                           0000E0   264 _acc	=	0x00e0
                           0000E1   265 _adccon1	=	0x00e1
                           0000E2   266 _adccon2	=	0x00e2
                           0000E3   267 _adcdly	=	0x00e3
                           0000E4   268 _c0l	=	0x00e4
                           0000E5   269 _c0h	=	0x00e5
                           0000E6   270 _c1l	=	0x00e6
                           0000E7   271 _c1h	=	0x00e7
                           0000E8   272 _adccon0	=	0x00e8
                           0000E9   273 _picon	=	0x00e9
                           0000EA   274 _pinen	=	0x00ea
                           0000EB   275 _pipen	=	0x00eb
                           0000EC   276 _pif	=	0x00ec
                           0000ED   277 _c2l	=	0x00ed
                           0000EE   278 _c2h	=	0x00ee
                           0000EF   279 _eip	=	0x00ef
                           0000F0   280 _b	=	0x00f0
                           0000F1   281 _capcon3	=	0x00f1
                           0000F2   282 _capcon4	=	0x00f2
                           0000F3   283 _spcr	=	0x00f3
                           0000F3   284 _spcr2	=	0x00f3
                           0000F4   285 _spsr	=	0x00f4
                           0000F5   286 _spdr	=	0x00f5
                           0000F6   287 _aindids	=	0x00f6
                           0000F7   288 _eiph	=	0x00f7
                           0000F8   289 _scon_1	=	0x00f8
                           0000F9   290 _pdten	=	0x00f9
                           0000FA   291 _pdtcnt	=	0x00fa
                           0000FB   292 _pmen	=	0x00fb
                           0000FC   293 _pmd	=	0x00fc
                           0000FE   294 _eip1	=	0x00fe
                           0000FF   295 _eiph1	=	0x00ff
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable register banks
                                    303 ;--------------------------------------------------------
                                    304 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        305 	.ds 8
                                    306 ;--------------------------------------------------------
                                    307 ; internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area DSEG    (DATA)
      00000C                        310 _UART0_printNum_PARM_2:
      00000C                        311 	.ds 1
      00000D                        312 _UART0_printNum_i_131072_37:
      00000D                        313 	.ds 1
      00000E                        314 _UART0_printNum_sloc0_1_0:
      00000E                        315 	.ds 4
      000012                        316 _UART0_printNum_sloc1_1_0:
      000012                        317 	.ds 4
      000016                        318 _UART0_printNumln_PARM_2:
      000016                        319 	.ds 1
                                    320 ;--------------------------------------------------------
                                    321 ; overlayable items in internal ram
                                    322 ;--------------------------------------------------------
                                    323 	.area	OSEG    (OVR,DATA)
                                    324 	.area	OSEG    (OVR,DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; indirectly addressable internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area ISEG    (DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; absolute internal ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area IABS    (ABS,DATA)
                                    333 	.area IABS    (ABS,DATA)
                                    334 ;--------------------------------------------------------
                                    335 ; bit data
                                    336 ;--------------------------------------------------------
                                    337 	.area BSEG    (BIT)
                                    338 ;--------------------------------------------------------
                                    339 ; paged external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area PSEG    (PAG,XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XSEG    (XDATA)
      000145                        346 _UART0_printNum_dis_65536_31:
      000145                        347 	.ds 20
                                    348 ;--------------------------------------------------------
                                    349 ; absolute external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XABS    (ABS,XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; external initialized ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XISEG   (XDATA)
                                    356 	.area HOME    (CODE)
                                    357 	.area GSINIT0 (CODE)
                                    358 	.area GSINIT1 (CODE)
                                    359 	.area GSINIT2 (CODE)
                                    360 	.area GSINIT3 (CODE)
                                    361 	.area GSINIT4 (CODE)
                                    362 	.area GSINIT5 (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area CSEG    (CODE)
                                    366 ;--------------------------------------------------------
                                    367 ; global & static initialisations
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 ;--------------------------------------------------------
                                    374 ; Home
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area HOME    (CODE)
                                    378 ;--------------------------------------------------------
                                    379 ; code
                                    380 ;--------------------------------------------------------
                                    381 	.area CSEG    (CODE)
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'UART0_begin'
                                    384 ;------------------------------------------------------------
                                    385 ;baud                      Allocated to registers r7 
                                    386 ;------------------------------------------------------------
                                    387 ;	./src/N76_uart0.c:11: void UART0_begin(uint8_t baud)
                                    388 ;	-----------------------------------------
                                    389 ;	 function UART0_begin
                                    390 ;	-----------------------------------------
      0005E8                        391 _UART0_begin:
                           000007   392 	ar7 = 0x07
                           000006   393 	ar6 = 0x06
                           000005   394 	ar5 = 0x05
                           000004   395 	ar4 = 0x04
                           000003   396 	ar3 = 0x03
                           000002   397 	ar2 = 0x02
                           000001   398 	ar1 = 0x01
                           000000   399 	ar0 = 0x00
      0005E8 AF 82            [24]  400 	mov	r7,dpl
                                    401 ;	./src/N76_uart0.c:13: P06_Quasi_Mode; // Setting UART pin as Quasi mode for transmit
      0005EA 53 B1 BF         [24]  402 	anl	_p0m1,#0xbf
      0005ED 53 B2 BF         [24]  403 	anl	_p0m2,#0xbf
                                    404 ;	./src/N76_uart0.c:14: P07_Quasi_Mode; // Setting UART pin as Quasi mode for transmit
      0005F0 53 B1 7F         [24]  405 	anl	_p0m1,#0x7f
      0005F3 53 B2 7F         [24]  406 	anl	_p0m2,#0x7f
                                    407 ;	./src/N76_uart0.c:16: TH1 = baud;	  // set baudrate
      0005F6 8F 8D            [24]  408 	mov	_th1,r7
                                    409 ;	./src/N76_uart0.c:17: SCON = 0x50;  // UART0 Mode1,REN=1,TI=1
      0005F8 75 98 50         [24]  410 	mov	_scon,#0x50
                                    411 ;	./src/N76_uart0.c:18: TMOD |= 0x20; // Timer1 Mode1
      0005FB 43 89 20         [24]  412 	orl	_tmod,#0x20
                                    413 ;	./src/N76_uart0.c:19: set_SMOD;	  // UART0 Double Rate Enable
      0005FE 43 87 80         [24]  414 	orl	_pcon,#0x80
                                    415 ;	./src/N76_uart0.c:20: set_T1M;
      000601 43 8E 10         [24]  416 	orl	_ckcon,#0x10
                                    417 ;	./src/N76_uart0.c:21: clr_BRCK; // Serial port 0 baud rate clock source = Timer1
      000604 53 C4 DF         [24]  418 	anl	_t3con,#0xdf
                                    419 ;	./src/N76_uart0.c:22: set_TR1;
      000607 43 88 40         [24]  420 	orl	_tcon,#0x40
                                    421 ;	./src/N76_uart0.c:23: set_TI; // For printf function must setting TI = 1
      00060A 43 98 02         [24]  422 	orl	_scon,#0x02
                                    423 ;	./src/N76_uart0.c:24: }
      00060D 22               [24]  424 	ret
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'UART0_putChar'
                                    427 ;------------------------------------------------------------
                                    428 ;val                       Allocated to registers r7 
                                    429 ;------------------------------------------------------------
                                    430 ;	./src/N76_uart0.c:25: void UART0_putChar(uint8_t val)
                                    431 ;	-----------------------------------------
                                    432 ;	 function UART0_putChar
                                    433 ;	-----------------------------------------
      00060E                        434 _UART0_putChar:
      00060E AF 82            [24]  435 	mov	r7,dpl
                                    436 ;	./src/N76_uart0.c:27: clr_TI;
      000610 53 98 FD         [24]  437 	anl	_scon,#0xfd
                                    438 ;	./src/N76_uart0.c:28: SBUF = val;
      000613 8F 99            [24]  439 	mov	_sbuf,r7
                                    440 ;	./src/N76_uart0.c:29: while (inbit(SCON, TI) == 0)
      000615                        441 00101$:
      000615 74 02            [12]  442 	mov	a,#0x02
      000617 55 98            [12]  443 	anl	a,_scon
      000619 C3               [12]  444 	clr	c
      00061A 13               [12]  445 	rrc	a
      00061B 60 F8            [24]  446 	jz	00101$
                                    447 ;	./src/N76_uart0.c:31: }
      00061D 22               [24]  448 	ret
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'UART0_print'
                                    451 ;------------------------------------------------------------
                                    452 ;str                       Allocated to registers r5 r6 r7 
                                    453 ;i                         Allocated to registers r4 
                                    454 ;------------------------------------------------------------
                                    455 ;	./src/N76_uart0.c:33: void UART0_print(char *str)
                                    456 ;	-----------------------------------------
                                    457 ;	 function UART0_print
                                    458 ;	-----------------------------------------
      00061E                        459 _UART0_print:
      00061E AD 82            [24]  460 	mov	r5,dpl
      000620 AE 83            [24]  461 	mov	r6,dph
      000622 AF F0            [24]  462 	mov	r7,b
                                    463 ;	./src/N76_uart0.c:36: while (str[i] != '\0')
      000624 7C 00            [12]  464 	mov	r4,#0x00
      000626                        465 00101$:
      000626 EC               [12]  466 	mov	a,r4
      000627 2D               [12]  467 	add	a,r5
      000628 F9               [12]  468 	mov	r1,a
      000629 E4               [12]  469 	clr	a
      00062A 3E               [12]  470 	addc	a,r6
      00062B FA               [12]  471 	mov	r2,a
      00062C 8F 03            [24]  472 	mov	ar3,r7
      00062E 89 82            [24]  473 	mov	dpl,r1
      000630 8A 83            [24]  474 	mov	dph,r2
      000632 8B F0            [24]  475 	mov	b,r3
      000634 12 0F B5         [24]  476 	lcall	__gptrget
      000637 60 29            [24]  477 	jz	00104$
                                    478 ;	./src/N76_uart0.c:37: UART0_putChar(str[i++]);
      000639 EC               [12]  479 	mov	a,r4
      00063A 2D               [12]  480 	add	a,r5
      00063B F9               [12]  481 	mov	r1,a
      00063C E4               [12]  482 	clr	a
      00063D 3E               [12]  483 	addc	a,r6
      00063E FA               [12]  484 	mov	r2,a
      00063F 8F 03            [24]  485 	mov	ar3,r7
      000641 0C               [12]  486 	inc	r4
      000642 89 82            [24]  487 	mov	dpl,r1
      000644 8A 83            [24]  488 	mov	dph,r2
      000646 8B F0            [24]  489 	mov	b,r3
      000648 12 0F B5         [24]  490 	lcall	__gptrget
      00064B F5 82            [12]  491 	mov	dpl,a
      00064D C0 07            [24]  492 	push	ar7
      00064F C0 06            [24]  493 	push	ar6
      000651 C0 05            [24]  494 	push	ar5
      000653 C0 04            [24]  495 	push	ar4
      000655 12 06 0E         [24]  496 	lcall	_UART0_putChar
      000658 D0 04            [24]  497 	pop	ar4
      00065A D0 05            [24]  498 	pop	ar5
      00065C D0 06            [24]  499 	pop	ar6
      00065E D0 07            [24]  500 	pop	ar7
      000660 80 C4            [24]  501 	sjmp	00101$
      000662                        502 00104$:
                                    503 ;	./src/N76_uart0.c:38: }
      000662 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'UART0_println'
                                    507 ;------------------------------------------------------------
                                    508 ;str                       Allocated to registers r5 r6 r7 
                                    509 ;------------------------------------------------------------
                                    510 ;	./src/N76_uart0.c:40: void UART0_println(char *str)
                                    511 ;	-----------------------------------------
                                    512 ;	 function UART0_println
                                    513 ;	-----------------------------------------
      000663                        514 _UART0_println:
                                    515 ;	./src/N76_uart0.c:42: UART0_print(str);
      000663 12 06 1E         [24]  516 	lcall	_UART0_print
                                    517 ;	./src/N76_uart0.c:43: UART0_print("\r\n");
      000666 90 10 8F         [24]  518 	mov	dptr,#___str_0
      000669 75 F0 80         [24]  519 	mov	b,#0x80
                                    520 ;	./src/N76_uart0.c:44: }
      00066C 02 06 1E         [24]  521 	ljmp	_UART0_print
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'UART0_printNum'
                                    524 ;------------------------------------------------------------
                                    525 ;base                      Allocated with name '_UART0_printNum_PARM_2'
                                    526 ;num                       Allocated to registers r4 r5 r6 r7 
                                    527 ;max                       Allocated to registers r6 
                                    528 ;flag                      Allocated to registers r2 
                                    529 ;i                         Allocated with name '_UART0_printNum_i_131072_37'
                                    530 ;sloc0                     Allocated with name '_UART0_printNum_sloc0_1_0'
                                    531 ;sloc1                     Allocated with name '_UART0_printNum_sloc1_1_0'
                                    532 ;dis                       Allocated with name '_UART0_printNum_dis_65536_31'
                                    533 ;------------------------------------------------------------
                                    534 ;	./src/N76_uart0.c:46: void UART0_printNum(int32_t num, uint8_t base)
                                    535 ;	-----------------------------------------
                                    536 ;	 function UART0_printNum
                                    537 ;	-----------------------------------------
      00066F                        538 _UART0_printNum:
      00066F AC 82            [24]  539 	mov	r4,dpl
      000671 AD 83            [24]  540 	mov	r5,dph
      000673 AE F0            [24]  541 	mov	r6,b
      000675 FF               [12]  542 	mov	r7,a
                                    543 ;	./src/N76_uart0.c:49: int8_t max = 0, flag = 0; // max: index of dis array, flag: = 1 if negative
                                    544 ;	./src/N76_uart0.c:51: if (num == 0) // input 0
      000676 E4               [12]  545 	clr	a
      000677 FB               [12]  546 	mov	r3,a
      000678 FA               [12]  547 	mov	r2,a
      000679 EC               [12]  548 	mov	a,r4
      00067A 4D               [12]  549 	orl	a,r5
      00067B 4E               [12]  550 	orl	a,r6
      00067C 4F               [12]  551 	orl	a,r7
      00067D 70 0A            [24]  552 	jnz	00104$
                                    553 ;	./src/N76_uart0.c:53: dis[max++] = '0';
      00067F 7B 01            [12]  554 	mov	r3,#0x01
      000681 90 01 45         [24]  555 	mov	dptr,#_UART0_printNum_dis_65536_31
      000684 74 30            [12]  556 	mov	a,#0x30
      000686 F0               [24]  557 	movx	@dptr,a
      000687 80 13            [24]  558 	sjmp	00131$
      000689                        559 00104$:
                                    560 ;	./src/N76_uart0.c:55: else if (num < 0) // negative number
      000689 EF               [12]  561 	mov	a,r7
      00068A 30 E7 0F         [24]  562 	jnb	acc.7,00131$
                                    563 ;	./src/N76_uart0.c:57: num = 0 - num;
      00068D C3               [12]  564 	clr	c
      00068E E4               [12]  565 	clr	a
      00068F 9C               [12]  566 	subb	a,r4
      000690 FC               [12]  567 	mov	r4,a
      000691 E4               [12]  568 	clr	a
      000692 9D               [12]  569 	subb	a,r5
      000693 FD               [12]  570 	mov	r5,a
      000694 E4               [12]  571 	clr	a
      000695 9E               [12]  572 	subb	a,r6
      000696 FE               [12]  573 	mov	r6,a
      000697 E4               [12]  574 	clr	a
      000698 9F               [12]  575 	subb	a,r7
      000699 FF               [12]  576 	mov	r7,a
                                    577 ;	./src/N76_uart0.c:58: flag = 1;
      00069A 7A 01            [12]  578 	mov	r2,#0x01
                                    579 ;	./src/N76_uart0.c:60: while (num > 0) // convert to base number and add to dis array
      00069C                        580 00131$:
      00069C                        581 00109$:
      00069C C3               [12]  582 	clr	c
      00069D E4               [12]  583 	clr	a
      00069E 9C               [12]  584 	subb	a,r4
      00069F E4               [12]  585 	clr	a
      0006A0 9D               [12]  586 	subb	a,r5
      0006A1 E4               [12]  587 	clr	a
      0006A2 9E               [12]  588 	subb	a,r6
      0006A3 74 80            [12]  589 	mov	a,#(0x00 ^ 0x80)
      0006A5 8F F0            [24]  590 	mov	b,r7
      0006A7 63 F0 80         [24]  591 	xrl	b,#0x80
      0006AA 95 F0            [12]  592 	subb	a,b
      0006AC 40 03            [24]  593 	jc	00197$
      0006AE 02 07 64         [24]  594 	ljmp	00138$
      0006B1                        595 00197$:
                                    596 ;	./src/N76_uart0.c:62: if (num % base >= 10)
      0006B1 85 0C 0E         [24]  597 	mov	_UART0_printNum_sloc0_1_0,_UART0_printNum_PARM_2
      0006B4 75 0F 00         [24]  598 	mov	(_UART0_printNum_sloc0_1_0 + 1),#0x00
      0006B7 75 10 00         [24]  599 	mov	(_UART0_printNum_sloc0_1_0 + 2),#0x00
      0006BA 75 11 00         [24]  600 	mov	(_UART0_printNum_sloc0_1_0 + 3),#0x00
      0006BD 85 0E 2F         [24]  601 	mov	__modslong_PARM_2,_UART0_printNum_sloc0_1_0
      0006C0 85 0F 30         [24]  602 	mov	(__modslong_PARM_2 + 1),(_UART0_printNum_sloc0_1_0 + 1)
      0006C3 85 10 31         [24]  603 	mov	(__modslong_PARM_2 + 2),(_UART0_printNum_sloc0_1_0 + 2)
      0006C6 85 11 32         [24]  604 	mov	(__modslong_PARM_2 + 3),(_UART0_printNum_sloc0_1_0 + 3)
      0006C9 8C 82            [24]  605 	mov	dpl,r4
      0006CB 8D 83            [24]  606 	mov	dph,r5
      0006CD 8E F0            [24]  607 	mov	b,r6
      0006CF EF               [12]  608 	mov	a,r7
      0006D0 C0 07            [24]  609 	push	ar7
      0006D2 C0 06            [24]  610 	push	ar6
      0006D4 C0 05            [24]  611 	push	ar5
      0006D6 C0 04            [24]  612 	push	ar4
      0006D8 C0 03            [24]  613 	push	ar3
      0006DA C0 02            [24]  614 	push	ar2
      0006DC 12 0F 14         [24]  615 	lcall	__modslong
      0006DF 85 82 12         [24]  616 	mov	_UART0_printNum_sloc1_1_0,dpl
      0006E2 85 83 13         [24]  617 	mov	(_UART0_printNum_sloc1_1_0 + 1),dph
      0006E5 85 F0 14         [24]  618 	mov	(_UART0_printNum_sloc1_1_0 + 2),b
      0006E8 F5 15            [12]  619 	mov	(_UART0_printNum_sloc1_1_0 + 3),a
      0006EA D0 02            [24]  620 	pop	ar2
      0006EC D0 03            [24]  621 	pop	ar3
      0006EE D0 04            [24]  622 	pop	ar4
      0006F0 D0 05            [24]  623 	pop	ar5
      0006F2 D0 06            [24]  624 	pop	ar6
      0006F4 D0 07            [24]  625 	pop	ar7
      0006F6 C3               [12]  626 	clr	c
      0006F7 E5 12            [12]  627 	mov	a,_UART0_printNum_sloc1_1_0
      0006F9 94 0A            [12]  628 	subb	a,#0x0a
      0006FB E5 13            [12]  629 	mov	a,(_UART0_printNum_sloc1_1_0 + 1)
      0006FD 94 00            [12]  630 	subb	a,#0x00
      0006FF E5 14            [12]  631 	mov	a,(_UART0_printNum_sloc1_1_0 + 2)
      000701 94 00            [12]  632 	subb	a,#0x00
      000703 E5 15            [12]  633 	mov	a,(_UART0_printNum_sloc1_1_0 + 3)
      000705 64 80            [12]  634 	xrl	a,#0x80
      000707 94 80            [12]  635 	subb	a,#0x80
      000709 40 19            [24]  636 	jc	00107$
                                    637 ;	./src/N76_uart0.c:63: dis[max] = num % base + 55;
      00070B EB               [12]  638 	mov	a,r3
      00070C F8               [12]  639 	mov	r0,a
      00070D 33               [12]  640 	rlc	a
      00070E 95 E0            [12]  641 	subb	a,acc
      000710 F9               [12]  642 	mov	r1,a
      000711 E8               [12]  643 	mov	a,r0
      000712 24 45            [12]  644 	add	a,#_UART0_printNum_dis_65536_31
      000714 F5 82            [12]  645 	mov	dpl,a
      000716 E9               [12]  646 	mov	a,r1
      000717 34 01            [12]  647 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      000719 F5 83            [12]  648 	mov	dph,a
      00071B A9 12            [24]  649 	mov	r1,_UART0_printNum_sloc1_1_0
      00071D 74 37            [12]  650 	mov	a,#0x37
      00071F 29               [12]  651 	add	a,r1
      000720 F9               [12]  652 	mov	r1,a
      000721 F0               [24]  653 	movx	@dptr,a
      000722 80 17            [24]  654 	sjmp	00108$
      000724                        655 00107$:
                                    656 ;	./src/N76_uart0.c:65: dis[max] = num % base + 48;
      000724 EB               [12]  657 	mov	a,r3
      000725 F8               [12]  658 	mov	r0,a
      000726 33               [12]  659 	rlc	a
      000727 95 E0            [12]  660 	subb	a,acc
      000729 F9               [12]  661 	mov	r1,a
      00072A E8               [12]  662 	mov	a,r0
      00072B 24 45            [12]  663 	add	a,#_UART0_printNum_dis_65536_31
      00072D F5 82            [12]  664 	mov	dpl,a
      00072F E9               [12]  665 	mov	a,r1
      000730 34 01            [12]  666 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      000732 F5 83            [12]  667 	mov	dph,a
      000734 A9 12            [24]  668 	mov	r1,_UART0_printNum_sloc1_1_0
      000736 74 30            [12]  669 	mov	a,#0x30
      000738 29               [12]  670 	add	a,r1
      000739 F9               [12]  671 	mov	r1,a
      00073A F0               [24]  672 	movx	@dptr,a
      00073B                        673 00108$:
                                    674 ;	./src/N76_uart0.c:67: num = num / base;
      00073B 85 0E 2F         [24]  675 	mov	__divslong_PARM_2,_UART0_printNum_sloc0_1_0
      00073E 85 0F 30         [24]  676 	mov	(__divslong_PARM_2 + 1),(_UART0_printNum_sloc0_1_0 + 1)
      000741 85 10 31         [24]  677 	mov	(__divslong_PARM_2 + 2),(_UART0_printNum_sloc0_1_0 + 2)
      000744 85 11 32         [24]  678 	mov	(__divslong_PARM_2 + 3),(_UART0_printNum_sloc0_1_0 + 3)
      000747 8C 82            [24]  679 	mov	dpl,r4
      000749 8D 83            [24]  680 	mov	dph,r5
      00074B 8E F0            [24]  681 	mov	b,r6
      00074D EF               [12]  682 	mov	a,r7
      00074E C0 03            [24]  683 	push	ar3
      000750 C0 02            [24]  684 	push	ar2
      000752 12 0F 63         [24]  685 	lcall	__divslong
      000755 AC 82            [24]  686 	mov	r4,dpl
      000757 AD 83            [24]  687 	mov	r5,dph
      000759 AE F0            [24]  688 	mov	r6,b
      00075B FF               [12]  689 	mov	r7,a
      00075C D0 02            [24]  690 	pop	ar2
      00075E D0 03            [24]  691 	pop	ar3
                                    692 ;	./src/N76_uart0.c:68: max++;
      000760 0B               [12]  693 	inc	r3
      000761 02 06 9C         [24]  694 	ljmp	00109$
      000764                        695 00138$:
      000764 8B 07            [24]  696 	mov	ar7,r3
                                    697 ;	./src/N76_uart0.c:71: if (base == HEX) // add 0x for HEX and 0B for BIN
      000766 74 10            [12]  698 	mov	a,#0x10
      000768 B5 0C 6F         [24]  699 	cjne	a,_UART0_printNum_PARM_2,00117$
                                    700 ;	./src/N76_uart0.c:73: if (max % 2 == 1)
      00076B EB               [12]  701 	mov	a,r3
      00076C FD               [12]  702 	mov	r5,a
      00076D 33               [12]  703 	rlc	a
      00076E 95 E0            [12]  704 	subb	a,acc
      000770 FE               [12]  705 	mov	r6,a
      000771 75 2F 02         [24]  706 	mov	__modsint_PARM_2,#0x02
      000774 75 30 00         [24]  707 	mov	(__modsint_PARM_2 + 1),#0x00
      000777 8D 82            [24]  708 	mov	dpl,r5
      000779 8E 83            [24]  709 	mov	dph,r6
      00077B C0 07            [24]  710 	push	ar7
      00077D C0 06            [24]  711 	push	ar6
      00077F C0 05            [24]  712 	push	ar5
      000781 C0 03            [24]  713 	push	ar3
      000783 C0 02            [24]  714 	push	ar2
      000785 12 0F D1         [24]  715 	lcall	__modsint
      000788 A9 82            [24]  716 	mov	r1,dpl
      00078A AC 83            [24]  717 	mov	r4,dph
      00078C D0 02            [24]  718 	pop	ar2
      00078E D0 03            [24]  719 	pop	ar3
      000790 D0 05            [24]  720 	pop	ar5
      000792 D0 06            [24]  721 	pop	ar6
      000794 D0 07            [24]  722 	pop	ar7
      000796 B9 01 13         [24]  723 	cjne	r1,#0x01,00113$
      000799 BC 00 10         [24]  724 	cjne	r4,#0x00,00113$
                                    725 ;	./src/N76_uart0.c:74: dis[max++] = '0';
      00079C EB               [12]  726 	mov	a,r3
      00079D 04               [12]  727 	inc	a
      00079E FF               [12]  728 	mov	r7,a
      00079F ED               [12]  729 	mov	a,r5
      0007A0 24 45            [12]  730 	add	a,#_UART0_printNum_dis_65536_31
      0007A2 F5 82            [12]  731 	mov	dpl,a
      0007A4 EE               [12]  732 	mov	a,r6
      0007A5 34 01            [12]  733 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      0007A7 F5 83            [12]  734 	mov	dph,a
      0007A9 74 30            [12]  735 	mov	a,#0x30
      0007AB F0               [24]  736 	movx	@dptr,a
      0007AC                        737 00113$:
                                    738 ;	./src/N76_uart0.c:76: dis[max++] = 'x';
      0007AC EF               [12]  739 	mov	a,r7
      0007AD FE               [12]  740 	mov	r6,a
      0007AE 04               [12]  741 	inc	a
      0007AF FD               [12]  742 	mov	r5,a
      0007B0 EE               [12]  743 	mov	a,r6
      0007B1 33               [12]  744 	rlc	a
      0007B2 95 E0            [12]  745 	subb	a,acc
      0007B4 FC               [12]  746 	mov	r4,a
      0007B5 EE               [12]  747 	mov	a,r6
      0007B6 24 45            [12]  748 	add	a,#_UART0_printNum_dis_65536_31
      0007B8 F5 82            [12]  749 	mov	dpl,a
      0007BA EC               [12]  750 	mov	a,r4
      0007BB 34 01            [12]  751 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      0007BD F5 83            [12]  752 	mov	dph,a
      0007BF 74 78            [12]  753 	mov	a,#0x78
      0007C1 F0               [24]  754 	movx	@dptr,a
                                    755 ;	./src/N76_uart0.c:77: dis[max++] = '0';
      0007C2 ED               [12]  756 	mov	a,r5
      0007C3 FE               [12]  757 	mov	r6,a
      0007C4 04               [12]  758 	inc	a
      0007C5 FF               [12]  759 	mov	r7,a
      0007C6 EE               [12]  760 	mov	a,r6
      0007C7 33               [12]  761 	rlc	a
      0007C8 95 E0            [12]  762 	subb	a,acc
      0007CA FD               [12]  763 	mov	r5,a
      0007CB EE               [12]  764 	mov	a,r6
      0007CC 24 45            [12]  765 	add	a,#_UART0_printNum_dis_65536_31
      0007CE F5 82            [12]  766 	mov	dpl,a
      0007D0 ED               [12]  767 	mov	a,r5
      0007D1 34 01            [12]  768 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      0007D3 F5 83            [12]  769 	mov	dph,a
      0007D5 74 30            [12]  770 	mov	a,#0x30
      0007D7 F0               [24]  771 	movx	@dptr,a
      0007D8 80 30            [24]  772 	sjmp	00118$
      0007DA                        773 00117$:
                                    774 ;	./src/N76_uart0.c:79: else if (base == BIN)
      0007DA 74 02            [12]  775 	mov	a,#0x02
      0007DC B5 0C 2B         [24]  776 	cjne	a,_UART0_printNum_PARM_2,00118$
                                    777 ;	./src/N76_uart0.c:81: dis[max++] = 'B';
      0007DF EB               [12]  778 	mov	a,r3
      0007E0 04               [12]  779 	inc	a
      0007E1 FE               [12]  780 	mov	r6,a
      0007E2 EB               [12]  781 	mov	a,r3
      0007E3 33               [12]  782 	rlc	a
      0007E4 95 E0            [12]  783 	subb	a,acc
      0007E6 FD               [12]  784 	mov	r5,a
      0007E7 EB               [12]  785 	mov	a,r3
      0007E8 24 45            [12]  786 	add	a,#_UART0_printNum_dis_65536_31
      0007EA F5 82            [12]  787 	mov	dpl,a
      0007EC ED               [12]  788 	mov	a,r5
      0007ED 34 01            [12]  789 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      0007EF F5 83            [12]  790 	mov	dph,a
      0007F1 74 42            [12]  791 	mov	a,#0x42
      0007F3 F0               [24]  792 	movx	@dptr,a
                                    793 ;	./src/N76_uart0.c:82: dis[max++] = '0';
      0007F4 EE               [12]  794 	mov	a,r6
      0007F5 FD               [12]  795 	mov	r5,a
      0007F6 04               [12]  796 	inc	a
      0007F7 FF               [12]  797 	mov	r7,a
      0007F8 ED               [12]  798 	mov	a,r5
      0007F9 33               [12]  799 	rlc	a
      0007FA 95 E0            [12]  800 	subb	a,acc
      0007FC FE               [12]  801 	mov	r6,a
      0007FD ED               [12]  802 	mov	a,r5
      0007FE 24 45            [12]  803 	add	a,#_UART0_printNum_dis_65536_31
      000800 F5 82            [12]  804 	mov	dpl,a
      000802 EE               [12]  805 	mov	a,r6
      000803 34 01            [12]  806 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      000805 F5 83            [12]  807 	mov	dph,a
      000807 74 30            [12]  808 	mov	a,#0x30
      000809 F0               [24]  809 	movx	@dptr,a
      00080A                        810 00118$:
                                    811 ;	./src/N76_uart0.c:85: if (flag == 1) // add minus to negative number
      00080A BA 01 15         [24]  812 	cjne	r2,#0x01,00137$
                                    813 ;	./src/N76_uart0.c:86: dis[max++] = '-';
      00080D 8F 06            [24]  814 	mov	ar6,r7
      00080F 0F               [12]  815 	inc	r7
      000810 EE               [12]  816 	mov	a,r6
      000811 33               [12]  817 	rlc	a
      000812 95 E0            [12]  818 	subb	a,acc
      000814 FD               [12]  819 	mov	r5,a
      000815 EE               [12]  820 	mov	a,r6
      000816 24 45            [12]  821 	add	a,#_UART0_printNum_dis_65536_31
      000818 F5 82            [12]  822 	mov	dpl,a
      00081A ED               [12]  823 	mov	a,r5
      00081B 34 01            [12]  824 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      00081D F5 83            [12]  825 	mov	dph,a
      00081F 74 2D            [12]  826 	mov	a,#0x2d
      000821 F0               [24]  827 	movx	@dptr,a
                                    828 ;	./src/N76_uart0.c:88: for (uint8_t i = 0; i < max / 2; i++) // revert dis array
      000822                        829 00137$:
      000822 EF               [12]  830 	mov	a,r7
      000823 14               [12]  831 	dec	a
      000824 F5 12            [12]  832 	mov	_UART0_printNum_sloc1_1_0,a
      000826 75 0D 00         [24]  833 	mov	_UART0_printNum_i_131072_37,#0x00
      000829                        834 00123$:
      000829 EF               [12]  835 	mov	a,r7
      00082A FB               [12]  836 	mov	r3,a
      00082B 33               [12]  837 	rlc	a
      00082C 95 E0            [12]  838 	subb	a,acc
      00082E FC               [12]  839 	mov	r4,a
      00082F 75 2F 02         [24]  840 	mov	__divsint_PARM_2,#0x02
      000832 75 30 00         [24]  841 	mov	(__divsint_PARM_2 + 1),#0x00
      000835 8B 82            [24]  842 	mov	dpl,r3
      000837 8C 83            [24]  843 	mov	dph,r4
      000839 C0 07            [24]  844 	push	ar7
      00083B C0 04            [24]  845 	push	ar4
      00083D C0 03            [24]  846 	push	ar3
      00083F 12 10 07         [24]  847 	lcall	__divsint
      000842 A9 82            [24]  848 	mov	r1,dpl
      000844 AA 83            [24]  849 	mov	r2,dph
      000846 D0 03            [24]  850 	pop	ar3
      000848 D0 04            [24]  851 	pop	ar4
      00084A D0 07            [24]  852 	pop	ar7
      00084C A8 0D            [24]  853 	mov	r0,_UART0_printNum_i_131072_37
      00084E 7D 00            [12]  854 	mov	r5,#0x00
      000850 C3               [12]  855 	clr	c
      000851 E8               [12]  856 	mov	a,r0
      000852 99               [12]  857 	subb	a,r1
      000853 ED               [12]  858 	mov	a,r5
      000854 64 80            [12]  859 	xrl	a,#0x80
      000856 8A F0            [24]  860 	mov	b,r2
      000858 63 F0 80         [24]  861 	xrl	b,#0x80
      00085B 95 F0            [12]  862 	subb	a,b
      00085D 50 48            [24]  863 	jnc	00121$
                                    864 ;	./src/N76_uart0.c:90: dis[max] = dis[i];
      00085F C0 07            [24]  865 	push	ar7
      000861 EB               [12]  866 	mov	a,r3
      000862 24 45            [12]  867 	add	a,#_UART0_printNum_dis_65536_31
      000864 FA               [12]  868 	mov	r2,a
      000865 EC               [12]  869 	mov	a,r4
      000866 34 01            [12]  870 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      000868 FD               [12]  871 	mov	r5,a
      000869 E5 0D            [12]  872 	mov	a,_UART0_printNum_i_131072_37
      00086B 24 45            [12]  873 	add	a,#_UART0_printNum_dis_65536_31
      00086D F8               [12]  874 	mov	r0,a
      00086E E4               [12]  875 	clr	a
      00086F 34 01            [12]  876 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      000871 F9               [12]  877 	mov	r1,a
      000872 88 82            [24]  878 	mov	dpl,r0
      000874 89 83            [24]  879 	mov	dph,r1
      000876 E0               [24]  880 	movx	a,@dptr
      000877 FF               [12]  881 	mov	r7,a
      000878 8A 82            [24]  882 	mov	dpl,r2
      00087A 8D 83            [24]  883 	mov	dph,r5
      00087C F0               [24]  884 	movx	@dptr,a
                                    885 ;	./src/N76_uart0.c:91: dis[i] = dis[max - 1 - i];
      00087D AD 0D            [24]  886 	mov	r5,_UART0_printNum_i_131072_37
      00087F E5 12            [12]  887 	mov	a,_UART0_printNum_sloc1_1_0
      000881 C3               [12]  888 	clr	c
      000882 9D               [12]  889 	subb	a,r5
      000883 FD               [12]  890 	mov	r5,a
      000884 33               [12]  891 	rlc	a
      000885 95 E0            [12]  892 	subb	a,acc
      000887 FA               [12]  893 	mov	r2,a
      000888 ED               [12]  894 	mov	a,r5
      000889 24 45            [12]  895 	add	a,#_UART0_printNum_dis_65536_31
      00088B FD               [12]  896 	mov	r5,a
      00088C EA               [12]  897 	mov	a,r2
      00088D 34 01            [12]  898 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      00088F FA               [12]  899 	mov	r2,a
      000890 8D 82            [24]  900 	mov	dpl,r5
      000892 8A 83            [24]  901 	mov	dph,r2
      000894 E0               [24]  902 	movx	a,@dptr
      000895 FE               [12]  903 	mov	r6,a
      000896 88 82            [24]  904 	mov	dpl,r0
      000898 89 83            [24]  905 	mov	dph,r1
      00089A F0               [24]  906 	movx	@dptr,a
                                    907 ;	./src/N76_uart0.c:92: dis[max - 1 - i] = dis[max];
      00089B 8D 82            [24]  908 	mov	dpl,r5
      00089D 8A 83            [24]  909 	mov	dph,r2
      00089F EF               [12]  910 	mov	a,r7
      0008A0 F0               [24]  911 	movx	@dptr,a
                                    912 ;	./src/N76_uart0.c:88: for (uint8_t i = 0; i < max / 2; i++) // revert dis array
      0008A1 05 0D            [12]  913 	inc	_UART0_printNum_i_131072_37
      0008A3 D0 07            [24]  914 	pop	ar7
      0008A5 80 82            [24]  915 	sjmp	00123$
      0008A7                        916 00121$:
                                    917 ;	./src/N76_uart0.c:94: dis[max] = '\0';  // end string character
      0008A7 EB               [12]  918 	mov	a,r3
      0008A8 24 45            [12]  919 	add	a,#_UART0_printNum_dis_65536_31
      0008AA F5 82            [12]  920 	mov	dpl,a
      0008AC EC               [12]  921 	mov	a,r4
      0008AD 34 01            [12]  922 	addc	a,#(_UART0_printNum_dis_65536_31 >> 8)
      0008AF F5 83            [12]  923 	mov	dph,a
      0008B1 E4               [12]  924 	clr	a
      0008B2 F0               [24]  925 	movx	@dptr,a
                                    926 ;	./src/N76_uart0.c:95: UART0_print(dis); // print dis
      0008B3 90 01 45         [24]  927 	mov	dptr,#_UART0_printNum_dis_65536_31
      0008B6 75 F0 00         [24]  928 	mov	b,#0x00
                                    929 ;	./src/N76_uart0.c:96: }
      0008B9 02 06 1E         [24]  930 	ljmp	_UART0_print
                                    931 ;------------------------------------------------------------
                                    932 ;Allocation info for local variables in function 'UART0_printNumln'
                                    933 ;------------------------------------------------------------
                                    934 ;base                      Allocated with name '_UART0_printNumln_PARM_2'
                                    935 ;num                       Allocated to registers r4 r5 r6 r7 
                                    936 ;------------------------------------------------------------
                                    937 ;	./src/N76_uart0.c:98: void UART0_printNumln(long num, uint8_t base)
                                    938 ;	-----------------------------------------
                                    939 ;	 function UART0_printNumln
                                    940 ;	-----------------------------------------
      0008BC                        941 _UART0_printNumln:
      0008BC AC 82            [24]  942 	mov	r4,dpl
      0008BE AD 83            [24]  943 	mov	r5,dph
      0008C0 AE F0            [24]  944 	mov	r6,b
      0008C2 FF               [12]  945 	mov	r7,a
                                    946 ;	./src/N76_uart0.c:100: UART0_printNum(num, base);
      0008C3 85 16 0C         [24]  947 	mov	_UART0_printNum_PARM_2,_UART0_printNumln_PARM_2
      0008C6 8C 82            [24]  948 	mov	dpl,r4
      0008C8 8D 83            [24]  949 	mov	dph,r5
      0008CA 8E F0            [24]  950 	mov	b,r6
      0008CC EF               [12]  951 	mov	a,r7
      0008CD 12 06 6F         [24]  952 	lcall	_UART0_printNum
                                    953 ;	./src/N76_uart0.c:101: UART0_println("");
      0008D0 90 10 92         [24]  954 	mov	dptr,#___str_1
      0008D3 75 F0 80         [24]  955 	mov	b,#0x80
                                    956 ;	./src/N76_uart0.c:102: }
      0008D6 02 06 63         [24]  957 	ljmp	_UART0_println
                                    958 	.area CSEG    (CODE)
                                    959 	.area CONST   (CODE)
                                    960 	.area CONST   (CODE)
      00108F                        961 ___str_0:
      00108F 0D                     962 	.db 0x0d
      001090 0A                     963 	.db 0x0a
      001091 00                     964 	.db 0x00
                                    965 	.area CSEG    (CODE)
                                    966 	.area CONST   (CODE)
      001092                        967 ___str_1:
      001092 00                     968 	.db 0x00
                                    969 	.area CSEG    (CODE)
                                    970 	.area XINIT   (CODE)
                                    971 	.area CABS    (ABS,CODE)
