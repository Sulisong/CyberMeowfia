// do_select @ 0xffffffe1a5be018c (file offset 0x3e018c, size 0x1000)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
  3e018c: d503233f     	paciasp
  3e0190: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
  3e0194: a9016ffc     	stp	x28, x27, [sp, #0x10]
  3e0198: a90267fa     	stp	x26, x25, [sp, #0x20]
  3e019c: a9035ff8     	stp	x24, x23, [sp, #0x30]
  3e01a0: a90457f6     	stp	x22, x21, [sp, #0x40]
  3e01a4: a9054ff4     	stp	x20, x19, [sp, #0x50]
  3e01a8: 910003fd     	mov	x29, sp
  3e01ac: d10d83ff     	sub	sp, sp, #0x360
  3e01b0: f9000be2     	str	x2, [sp, #0x10]
  3e01b4: d5384108     	mrs	x8, SP_EL0
  3e01b8: aa0103f3     	mov	x19, x1
  3e01bc: f9431108     	ldr	x8, [x8, #0x620]
  3e01c0: 2a0003f5     	mov	w21, w0
  3e01c4: 910383e0     	add	x0, sp, #0xe0
  3e01c8: 2a1f03e1     	mov	w1, wzr
  3e01cc: 52804e02     	mov	w2, #0x270              // =624
  3e01d0: f81f03a8     	stur	x8, [x29, #-0x10]
  3e01d4: f9005fff     	str	xzr, [sp, #0xb8]
  3e01d8: 9430c31a     	bl	0x1010e40 <.text+0x1000e40>
  3e01dc: f000e768     	adrp	x8, 0x20cf000
  3e01e0: b94c6d08     	ldr	w8, [x8, #0xc6c]
  3e01e4: 7100011f     	cmp	w8, #0x0
  3e01e8: 1a9f07e8     	cset	w8, ne
  3e01ec: 53114116     	lsl	w22, w8, #15
  3e01f0: 97f6117d     	bl	0x1647e4 <.text+0x1547e4>
  3e01f4: d5384108     	mrs	x8, SP_EL0
  3e01f8: f9001be8     	str	x8, [sp, #0x30]
  3e01fc: 93407eaa     	sxtw	x10, w21
  3e0200: f9443108     	ldr	x8, [x8, #0x860]
  3e0204: d346fd49     	lsr	x9, x10, #6
  3e0208: f240154a     	ands	x10, x10, #0x3f
  3e020c: f9401108     	ldr	x8, [x8, #0x20]
  3e0210: f9400d08     	ldr	x8, [x8, #0x18]
  3e0214: 8b090d08     	add	x8, x8, x9, lsl #3
  3e0218: 540002a0     	b.eq	0x3e026c <.text+0x3d026c>
  3e021c: a940366c     	ldp	x12, x13, [x19]
  3e0220: d37df12b     	lsl	x11, x9, #3
  3e0224: f9400a6e     	ldr	x14, [x19, #0x10]
  3e0228: 9280000f     	mov	x15, #-0x1              // =-1
  3e022c: aa1303f4     	mov	x20, x19
  3e0230: 9aca21ea     	lsl	x10, x15, x10
  3e0234: f86b698c     	ldr	x12, [x12, x11]
  3e0238: f86b69ad     	ldr	x13, [x13, x11]
  3e023c: f86b69cb     	ldr	x11, [x14, x11]
  3e0240: aa0c01ac     	orr	x12, x13, x12
  3e0244: aa0b018b     	orr	x11, x12, x11
  3e0248: ea2a016b     	bics	x11, x11, x10
  3e024c: 54000160     	b.eq	0x3e0278 <.text+0x3d0278>
  3e0250: f940010a     	ldr	x10, [x8]
  3e0254: f9401bf3     	ldr	x19, [sp, #0x30]
  3e0258: ea2a017f     	bics	xzr, x11, x10
  3e025c: 54000500     	b.eq	0x3e02fc <.text+0x3d02fc>
  3e0260: 97f61167     	bl	0x1647fc <.text+0x1547fc>
  3e0264: 12800117     	mov	w23, #-0x9              // =-9
  3e0268: 14000153     	b	0x3e07b4 <.text+0x3d07b4>
  3e026c: 2a1f03f7     	mov	w23, wzr
  3e0270: aa1303f4     	mov	x20, x19
  3e0274: 14000002     	b	0x3e027c <.text+0x3d027c>
  3e0278: 2a1f03f7     	mov	w23, wzr
  3e027c: f9401bf3     	ldr	x19, [sp, #0x30]
  3e0280: b40004c9     	cbz	x9, 0x3e0318 <.text+0x3d0318>
  3e0284: d37df12b     	lsl	x11, x9, #3
  3e0288: a940b68e     	ldp	x14, x13, [x20, #0x8]
  3e028c: f940028f     	ldr	x15, [x20]
  3e0290: aa1f03ea     	mov	x10, xzr
  3e0294: aa1f03ec     	mov	x12, xzr
  3e0298: d100216b     	sub	x11, x11, #0x8
  3e029c: d1002110     	sub	x16, x8, #0x8
  3e02a0: 8b0b01ad     	add	x13, x13, x11
  3e02a4: 8b0b01ce     	add	x14, x14, x11
  3e02a8: 8b0b01ef     	add	x15, x15, x11
  3e02ac: 14000005     	b	0x3e02c0 <.text+0x3d02c0>
  3e02b0: d100058c     	sub	x12, x12, #0x1
  3e02b4: 9100214a     	add	x10, x10, #0x8
  3e02b8: ab0c013f     	cmn	x9, x12
  3e02bc: 540002e0     	b.eq	0x3e0318 <.text+0x3d0318>
  3e02c0: d37df18b     	lsl	x11, x12, #3
  3e02c4: f86b69f1     	ldr	x17, [x15, x11]
  3e02c8: f86b69c0     	ldr	x0, [x14, x11]
  3e02cc: f86b69ab     	ldr	x11, [x13, x11]
  3e02d0: aa110011     	orr	x17, x0, x17
  3e02d4: aa0b022b     	orr	x11, x17, x11
  3e02d8: b4fffecb     	cbz	x11, 0x3e02b0 <.text+0x3d02b0>
  3e02dc: f86c7a11     	ldr	x17, [x16, x12, lsl #3]
  3e02e0: ea31017f     	bics	xzr, x11, x17
  3e02e4: 54fffbe1     	b.ne	0x3e0260 <.text+0x3d0260>
  3e02e8: 35fffe57     	cbnz	w23, 0x3e02b0 <.text+0x3d02b0>
  3e02ec: 8b0c0129     	add	x9, x9, x12
  3e02f0: cb0a0108     	sub	x8, x8, x10
  3e02f4: d1000529     	sub	x9, x9, #0x1
  3e02f8: d1002108     	sub	x8, x8, #0x8
  3e02fc: 531a6537     	lsl	w23, w9, #6
  3e0300: d341fd6a     	lsr	x10, x11, #1
  3e0304: f100097f     	cmp	x11, #0x2
  3e0308: 110006f7     	add	w23, w23, #0x1
  3e030c: aa0a03eb     	mov	x11, x10
  3e0310: 54ffff82     	b.hs	0x3e0300 <.text+0x3d0300>
  3e0314: 17ffffdb     	b	0x3e0280 <.text+0x3d0280>
  3e0318: 97f61139     	bl	0x1647fc <.text+0x1547fc>
  3e031c: 37f824d7     	tbnz	w23, #0x1f, 0x3e07b4 <.text+0x3d07b4>
  3e0320: f0ffffe8     	adrp	x8, 0x3df000 <.text+0x3cf000>
  3e0324: 912ea108     	add	x8, x8, #0xba8
  3e0328: a90ffff3     	stp	x19, xzr, [sp, #0xf8]
  3e032c: f90073e8     	str	x8, [sp, #0xe0]
  3e0330: 12800008     	mov	w8, #-0x1               // =-1
  3e0334: b900ebe8     	str	w8, [sp, #0xe8]
  3e0338: f9400be8     	ldr	x8, [sp, #0x10]
  3e033c: f9007bff     	str	xzr, [sp, #0xf0]
  3e0340: b9010bff     	str	wzr, [sp, #0x108]
  3e0344: b4000588     	cbz	x8, 0x3e03f4 <.text+0x3d03f4>
  3e0348: f9400108     	ldr	x8, [x8]
  3e034c: b5000088     	cbnz	x8, 0x3e035c <.text+0x3d035c>
  3e0350: f9400be8     	ldr	x8, [sp, #0x10]
  3e0354: f9400508     	ldr	x8, [x8, #0x8]
  3e0358: b40024c8     	cbz	x8, 0x3e07f0 <.text+0x3d07f0>
  3e035c: b9408668     	ldr	w8, [x19, #0x84]
  3e0360: 7101911f     	cmp	w8, #0x64
  3e0364: 540004eb     	b.lt	0x3e0400 <.text+0x3d0400>
  3e0368: 910303e0     	add	x0, sp, #0xc0
  3e036c: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
  3e0370: 97f6a595     	bl	0x1899c4 <.text+0x1799c4>
  3e0374: f9400be9     	ldr	x9, [sp, #0x10]
  3e0378: a94c2fea     	ldp	x10, x11, [sp, #0xc0]
  3e037c: 910343e0     	add	x0, sp, #0xd0
  3e0380: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
  3e0384: a9402528     	ldp	x8, x9, [x9]
  3e0388: cb0a0101     	sub	x1, x8, x10
  3e038c: cb0b0122     	sub	x2, x9, x11
  3e0390: 97f685d0     	bl	0x181ad0 <.text+0x171ad0>
  3e0394: f9406be8     	ldr	x8, [sp, #0xd0]
  3e0398: b7f80388     	tbnz	x8, #0x3f, 0x3e0408 <.text+0x3d0408>
  3e039c: b9408a69     	ldr	w9, [x19, #0x88]
  3e03a0: 5280190a     	mov	w10, #0xc8              // =200
  3e03a4: 5101e129     	sub	w9, w9, #0x78
  3e03a8: 7100013f     	cmp	w9, #0x0
  3e03ac: 52807d09     	mov	w9, #0x3e8              // =1000
  3e03b0: 9a89c14a     	csel	x10, x10, x9, gt
  3e03b4: 52994009     	mov	w9, #0xca00             // =51712
  3e03b8: 72a77349     	movk	w9, #0x3b9a, lsl #16
  3e03bc: 1aca092b     	udiv	w11, w9, w10
  3e03c0: 529c2009     	mov	w9, #0xe100             // =57600
  3e03c4: 72a0bea9     	movk	w9, #0x5f5, lsl #16
  3e03c8: 1acb092c     	udiv	w12, w9, w11
  3e03cc: eb0c011f     	cmp	x8, x12
  3e03d0: 540001e8     	b.hi	0x3e040c <.text+0x3d040c>
  3e03d4: f9406fe9     	ldr	x9, [sp, #0xd8]
  3e03d8: 9aca0d29     	sdiv	x9, x9, x10
  3e03dc: 9b0b2508     	madd	x8, x8, x11, x9
  3e03e0: 529c2009     	mov	w9, #0xe100             // =57600
  3e03e4: 72a0bea9     	movk	w9, #0x5f5, lsl #16
  3e03e8: eb09011f     	cmp	x8, x9
  3e03ec: 9a89b109     	csel	x9, x8, x9, lt
  3e03f0: 14000007     	b	0x3e040c <.text+0x3d040c>
  3e03f4: b9002fff     	str	wzr, [sp, #0x2c]
  3e03f8: f90003ff     	str	xzr, [sp]
  3e03fc: 14000009     	b	0x3e0420 <.text+0x3d0420>
  3e0400: f90003ff     	str	xzr, [sp]
  3e0404: 14000006     	b	0x3e041c <.text+0x3d041c>
  3e0408: aa1f03e9     	mov	x9, xzr
  3e040c: f9457a68     	ldr	x8, [x19, #0xaf0]
  3e0410: eb08013f     	cmp	x9, x8
  3e0414: 9a888128     	csel	x8, x9, x8, hi
  3e0418: f90003e8     	str	x8, [sp]
  3e041c: b9002fff     	str	wzr, [sp, #0x2c]
  3e0420: a901fff4     	stp	x20, xzr, [sp, #0x18]
  3e0424: f90007ff     	str	xzr, [sp, #0x8]
  3e0428: b9003ff7     	str	w23, [sp, #0x3c]
  3e042c: 34001317     	cbz	w23, 0x3e068c <.text+0x3d068c>
  3e0430: a9422a8b     	ldp	x11, x10, [x20, #0x20]
  3e0434: 2a1f03f8     	mov	w24, wzr
  3e0438: a941328d     	ldp	x13, x12, [x20, #0x10]
  3e043c: 2a1f03e9     	mov	w9, wzr
  3e0440: a9403a8f     	ldp	x15, x14, [x20]
  3e0444: 2a1f03fc     	mov	w28, wzr
  3e0448: 14000007     	b	0x3e0464 <.text+0x3d0464>
  3e044c: 11010129     	add	w9, w9, #0x40
  3e0450: 6b17013f     	cmp	w9, w23
  3e0454: 9100218c     	add	x12, x12, #0x8
  3e0458: 9100216b     	add	x11, x11, #0x8
  3e045c: 9100214a     	add	x10, x10, #0x8
  3e0460: 540011aa     	b.ge	0x3e0694 <.text+0x3d0694>
  3e0464: f84085e8     	ldr	x8, [x15], #0x8
  3e0468: f84085d0     	ldr	x16, [x14], #0x8
  3e046c: f84085b1     	ldr	x17, [x13], #0x8
  3e0470: a908a3f0     	stp	x16, x8, [sp, #0x88]
  3e0474: aa080208     	orr	x8, x16, x8
  3e0478: aa110108     	orr	x8, x8, x17
  3e047c: f90043f1     	str	x17, [sp, #0x80]
  3e0480: f90057e8     	str	x8, [sp, #0xa8]
  3e0484: b4fffe48     	cbz	x8, 0x3e044c <.text+0x3d044c>
  3e0488: 2a1703e8     	mov	w8, w23
  3e048c: aa1f03f5     	mov	x21, xzr
  3e0490: aa1f03f1     	mov	x17, xzr
  3e0494: 6b08013f     	cmp	w9, w8
  3e0498: aa1f03e0     	mov	x0, xzr
  3e049c: aa1f03f7     	mov	x23, xzr
  3e04a0: 1a88c128     	csel	w8, w9, w8, gt
  3e04a4: 52800034     	mov	w20, #0x1               // =1
  3e04a8: a9043bef     	stp	x15, x14, [sp, #0x40]
  3e04ac: 4b090108     	sub	w8, w8, w9
  3e04b0: a90533ed     	stp	x13, x12, [sp, #0x50]
  3e04b4: f90053e8     	str	x8, [sp, #0xa0]
  3e04b8: 2a0903e8     	mov	w8, w9
  3e04bc: a9062beb     	stp	x11, x10, [sp, #0x60]
  3e04c0: b90077e9     	str	w9, [sp, #0x74]
  3e04c4: f9003fe8     	str	x8, [sp, #0x78]
  3e04c8: 14000007     	b	0x3e04e4 <.text+0x3d04e4>
  3e04cc: 2a1f03f6     	mov	w22, wzr
  3e04d0: 2a1f03f8     	mov	w24, wzr
  3e04d4: 910006f7     	add	x23, x23, #0x1
  3e04d8: d37ffa94     	lsl	x20, x20, #1
  3e04dc: f10102ff     	cmp	x23, #0x40
  3e04e0: 54000bc0     	b.eq	0x3e0658 <.text+0x3d0658>
  3e04e4: f94053e8     	ldr	x8, [sp, #0xa0]
  3e04e8: eb17011f     	cmp	x8, x23
  3e04ec: 54000b60     	b.eq	0x3e0658 <.text+0x3d0658>
  3e04f0: f94057e8     	ldr	x8, [sp, #0xa8]
  3e04f4: ea08029f     	tst	x20, x8
  3e04f8: 54fffee0     	b.eq	0x3e04d4 <.text+0x3d04d4>
  3e04fc: f9403fe8     	ldr	x8, [sp, #0x78]
  3e0500: f9005be0     	str	x0, [sp, #0xb0]
  3e0504: aa1103fb     	mov	x27, x17
  3e0508: 8b170100     	add	x0, x8, x23
  3e050c: 94003a30     	bl	0x3eedcc <.text+0x3dedcc>
  3e0510: f9404be8     	ldr	x8, [sp, #0x90]
  3e0514: f27ef419     	ands	x25, x0, #0xfffffffffffffffc
  3e0518: 291363f6     	stp	w22, w24, [sp, #0x98]
  3e051c: 8a080293     	and	x19, x20, x8
  3e0520: 540003c0     	b.eq	0x3e0598 <.text+0x3d0598>
  3e0524: f100027f     	cmp	x19, #0x0
  3e0528: 52800448     	mov	w8, #0x22               // =34
  3e052c: 52801f69     	mov	w9, #0xfb               // =251
  3e0530: 1a890108     	csel	w8, w8, w9, eq
  3e0534: f9406329     	ldr	x9, [x25, #0xc0]
  3e0538: aa0003fa     	mov	x26, x0
  3e053c: 2a16010a     	orr	w10, w8, w22
  3e0540: f94047e8     	ldr	x8, [sp, #0x88]
  3e0544: ea080296     	ands	x22, x20, x8
  3e0548: 52806588     	mov	w8, #0x32c              // =812
  3e054c: 2a08014b     	orr	w11, w10, w8
  3e0550: f9402128     	ldr	x8, [x9, #0x40]
  3e0554: 1a8b0149     	csel	w9, w10, w11, eq
  3e0558: b900ebe9     	str	w9, [sp, #0xe8]
  3e055c: b4000788     	cbz	x8, 0x3e064c <.text+0x3d064c>
  3e0560: 910383e1     	add	x1, sp, #0xe0
  3e0564: aa1903e0     	mov	x0, x25
  3e0568: b85fc110     	ldur	w16, [x8, #-0x4]
  3e056c: 7294c3d1     	movk	w17, #0xa61e
  3e0570: 72b0bcb1     	movk	w17, #0x85e5, lsl #16
  3e0574: 6b11021f     	cmp	w16, w17
  3e0578: 54000040     	b.eq	0x3e0580 <.text+0x3d0580>
  3e057c: d4304500     	brk	#0x8228
  3e0580: d63f0100     	blr	x8
  3e0584: 2a0003f8     	mov	w24, w0
  3e0588: 360000fa     	tbz	w26, #0x0, 0x3e05a4 <.text+0x3d05a4>
  3e058c: aa1903e0     	mov	x0, x25
  3e0590: 97ff91f6     	bl	0x3c4d68 <.text+0x3b4d68>
  3e0594: 14000004     	b	0x3e05a4 <.text+0x3d05a4>
  3e0598: f94047e8     	ldr	x8, [sp, #0x88]
  3e059c: 52800418     	mov	w24, #0x20              // =32
  3e05a0: 8a080296     	and	x22, x20, x8
  3e05a4: 52801f28     	mov	w8, #0xf9               // =249
  3e05a8: 5280658a     	mov	w10, #0x32c             // =812
  3e05ac: 5280044c     	mov	w12, #0x22              // =34
  3e05b0: 6a08031f     	tst	w24, w8
  3e05b4: f94043ed     	ldr	x13, [sp, #0x80]
  3e05b8: f9405be0     	ldr	x0, [sp, #0xb0]
  3e05bc: 1a9f07e8     	cset	w8, ne
  3e05c0: f100027f     	cmp	x19, #0x0
  3e05c4: aa1b03f1     	mov	x17, x27
  3e05c8: 1a9f07e9     	cset	w9, ne
  3e05cc: 6a090109     	ands	w9, w8, w9
  3e05d0: 9a9f1288     	csel	x8, x20, xzr, ne
  3e05d4: 6a0a031f     	tst	w24, w10
  3e05d8: 1a9f07ea     	cset	w10, ne
  3e05dc: f10002df     	cmp	x22, #0x0
  3e05e0: 1a9f07eb     	cset	w11, ne
  3e05e4: 6a0b014b     	ands	w11, w10, w11
  3e05e8: 9a9f128a     	csel	x10, x20, xzr, ne
  3e05ec: 6a0c031f     	tst	w24, w12
  3e05f0: 1a9f07ec     	cset	w12, ne
  3e05f4: ea0d029f     	tst	x20, x13
  3e05f8: 1a9f07ed     	cset	w13, ne
  3e05fc: 6a0d018d     	ands	w13, w12, w13
  3e0600: 9a9f128c     	csel	x12, x20, xzr, ne
  3e0604: 3700006d     	tbnz	w13, #0x0, 0x3e0610 <.text+0x3d0610>
  3e0608: 37000049     	tbnz	w9, #0x0, 0x3e0610 <.text+0x3d0610>
  3e060c: 3600004b     	tbz	w11, #0x0, 0x3e0614 <.text+0x3d0614>
  3e0610: f90073ff     	str	xzr, [sp, #0xe0]
  3e0614: 0b090389     	add	w9, w28, w9
  3e0618: 0b0d016b     	add	w11, w11, w13
  3e061c: aa000100     	orr	x0, x8, x0
  3e0620: 0b0b013c     	add	w28, w9, w11
  3e0624: aa110151     	orr	x17, x10, x17
  3e0628: aa150195     	orr	x21, x12, x21
  3e062c: 35fff51c     	cbnz	w28, 0x3e04cc <.text+0x3d04cc>
  3e0630: b9409bfb     	ldr	w27, [sp, #0x98]
  3e0634: 6a1b031f     	tst	w24, w27
  3e0638: b9409ff8     	ldr	w24, [sp, #0x9c]
  3e063c: 2a1b03f6     	mov	w22, w27
  3e0640: 1a9f07e8     	cset	w8, ne
  3e0644: 2a180118     	orr	w24, w8, w24
  3e0648: 17ffffa3     	b	0x3e04d4 <.text+0x3d04d4>
  3e064c: 528028b8     	mov	w24, #0x145             // =325
  3e0650: 3707f9fa     	tbnz	w26, #0x0, 0x3e058c <.text+0x3d058c>
  3e0654: 17ffffd4     	b	0x3e05a4 <.text+0x3d05a4>
  3e0658: b94077e9     	ldr	w9, [sp, #0x74]
  3e065c: a9462beb     	ldp	x11, x10, [sp, #0x60]
  3e0660: a94533ed     	ldp	x13, x12, [sp, #0x50]
  3e0664: a9443bef     	ldp	x15, x14, [sp, #0x40]
  3e0668: 0b170129     	add	w9, w9, w23
  3e066c: b9403ff7     	ldr	w23, [sp, #0x3c]
  3e0670: b4000040     	cbz	x0, 0x3e0678 <.text+0x3d0678>
  3e0674: f9000180     	str	x0, [x12]
  3e0678: b4000051     	cbz	x17, 0x3e0680 <.text+0x3d0680>
  3e067c: f9000171     	str	x17, [x11]
  3e0680: b4ffee95     	cbz	x21, 0x3e0450 <.text+0x3d0450>
  3e0684: f9000155     	str	x21, [x10]
  3e0688: 17ffff72     	b	0x3e0450 <.text+0x3d0450>
  3e068c: 2a1f03fc     	mov	w28, wzr
  3e0690: 2a1f03f8     	mov	w24, wzr
  3e0694: b9402fe8     	ldr	w8, [sp, #0x2c]
  3e0698: f90073ff     	str	xzr, [sp, #0xe0]
  3e069c: 2a080388     	orr	w8, w28, w8
  3e06a0: 35000848     	cbnz	w8, 0x3e07a8 <.text+0x3d07a8>
  3e06a4: f9401be9     	ldr	x9, [sp, #0x30]
  3e06a8: f9400128     	ldr	x8, [x9]
  3e06ac: 373007c8     	tbnz	w8, #0x6, 0x3e07a4 <.text+0x3d07a4>
  3e06b0: f9400128     	ldr	x8, [x9]
  3e06b4: 37000788     	tbnz	w8, #0x0, 0x3e07a4 <.text+0x3d07a4>
  3e06b8: b94107fc     	ldr	w28, [sp, #0x104]
  3e06bc: 3500077c     	cbnz	w28, 0x3e07a8 <.text+0x3d07a8>
  3e06c0: f9400ff4     	ldr	x20, [sp, #0x18]
  3e06c4: f9401bf5     	ldr	x21, [sp, #0x30]
  3e06c8: 360001d8     	tbz	w24, #0x0, 0x3e0700 <.text+0x3d0700>
  3e06cc: f94002a8     	ldr	x8, [x21]
  3e06d0: 37080188     	tbnz	w8, #0x1, 0x3e0700 <.text+0x3d0700>
  3e06d4: f94013e8     	ldr	x8, [sp, #0x20]
  3e06d8: b40005c8     	cbz	x8, 0x3e0790 <.text+0x3d0790>
  3e06dc: f000e768     	adrp	x8, 0x20cf000
  3e06e0: b94c6d08     	ldr	w8, [x8, #0xc6c]
  3e06e4: 340000e8     	cbz	w8, 0x3e0700 <.text+0x3d0700>
  3e06e8: f94013e9     	ldr	x9, [sp, #0x20]
  3e06ec: 8b080133     	add	x19, x9, x8
  3e06f0: 97f6a3de     	bl	0x189668 <.text+0x179668>
  3e06f4: eb402a7f     	cmp	x19, x0, lsr #10
  3e06f8: b9002fff     	str	wzr, [sp, #0x2c]
  3e06fc: 54ffe982     	b.hs	0x3e042c <.text+0x3d042c>
  3e0700: f9400be8     	ldr	x8, [sp, #0x10]
  3e0704: b4000228     	cbz	x8, 0x3e0748 <.text+0x3d0748>
  3e0708: f94007e8     	ldr	x8, [sp, #0x8]
  3e070c: b50001e8     	cbnz	x8, 0x3e0748 <.text+0x3d0748>
  3e0710: f9400be9     	ldr	x9, [sp, #0x10]
  3e0714: 5299400a     	mov	w10, #0xca00            // =51712
  3e0718: 72a7734a     	movk	w10, #0x3b9a, lsl #16
  3e071c: a9402528     	ldp	x8, x9, [x9]
  3e0720: 9b0a2509     	madd	x9, x8, x10, x9
  3e0724: d28fa06a     	mov	x10, #0x7d03            // =32003
  3e0728: f2a4b82a     	movk	x10, #0x25c1, lsl #16
  3e072c: f2c0004a     	movk	x10, #0x2, lsl #32
  3e0730: eb0a011f     	cmp	x8, x10
  3e0734: 92f00008     	mov	x8, #0x7fffffffffffffff // =9223372036854775807
  3e0738: 9a89c108     	csel	x8, x8, x9, gt
  3e073c: f9005fe8     	str	x8, [sp, #0xb8]
  3e0740: 9102e3e8     	add	x8, sp, #0xb8
  3e0744: f90007e8     	str	x8, [sp, #0x8]
  3e0748: 52800028     	mov	w8, #0x1                // =1
  3e074c: b90032a8     	str	w8, [x21, #0x30]
  3e0750: d5033bbf     	dmb	ish
  3e0754: b94103e8     	ldr	w8, [sp, #0x100]
  3e0758: 34000068     	cbz	w8, 0x3e0764 <.text+0x3d0764>
  3e075c: 12800060     	mov	w0, #-0x4               // =-4
  3e0760: 14000004     	b	0x3e0770 <.text+0x3d0770>
  3e0764: a94003e1     	ldp	x1, x0, [sp]
  3e0768: 2a1f03e2     	mov	w2, wzr
  3e076c: 9431cd24     	bl	0x1053bfc <.text+0x1043bfc>
  3e0770: b90032bf     	str	wzr, [x21, #0x30]
  3e0774: 7100001f     	cmp	w0, #0x0
  3e0778: 2a1f03f6     	mov	w22, wzr
  3e077c: b90103ff     	str	wzr, [sp, #0x100]
  3e0780: 1a9f17e8     	cset	w8, eq
  3e0784: d5033bbf     	dmb	ish
  3e0788: b9002fe8     	str	w8, [sp, #0x2c]
  3e078c: 17ffff28     	b	0x3e042c <.text+0x3d042c>
  3e0790: 97f6a3b6     	bl	0x189668 <.text+0x179668>
  3e0794: d34afc08     	lsr	x8, x0, #10
  3e0798: b9002fff     	str	wzr, [sp, #0x2c]
  3e079c: f90013e8     	str	x8, [sp, #0x20]
  3e07a0: 17ffff23     	b	0x3e042c <.text+0x3d042c>
  3e07a4: 2a1f03fc     	mov	w28, wzr
  3e07a8: 910383e0     	add	x0, sp, #0xe0
  3e07ac: 97fffd41     	bl	0x3dfcb0 <.text+0x3cfcb0>
  3e07b0: 2a1c03f7     	mov	w23, w28
  3e07b4: d5384108     	mrs	x8, SP_EL0
  3e07b8: f9431108     	ldr	x8, [x8, #0x620]
  3e07bc: f85f03a9     	ldur	x9, [x29, #-0x10]
  3e07c0: eb09011f     	cmp	x8, x9
  3e07c4: 54000201     	b.ne	0x3e0804 <.text+0x3d0804>
  3e07c8: 2a1703e0     	mov	w0, w23
  3e07cc: 910d83ff     	add	sp, sp, #0x360
  3e07d0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
  3e07d4: a94457f6     	ldp	x22, x21, [sp, #0x40]
  3e07d8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
  3e07dc: a94267fa     	ldp	x26, x25, [sp, #0x20]
  3e07e0: a9416ffc     	ldp	x28, x27, [sp, #0x10]
  3e07e4: a8c67bfd     	ldp	x29, x30, [sp], #0x60
  3e07e8: d50323bf     	autiasp
  3e07ec: d65f03c0     	ret
  3e07f0: 52800028     	mov	w8, #0x1                // =1
  3e07f4: f90003ff     	str	xzr, [sp]
  3e07f8: f90073ff     	str	xzr, [sp, #0xe0]
  3e07fc: b9002fe8     	str	w8, [sp, #0x2c]
  3e0800: 17ffff08     	b	0x3e0420 <.text+0x3d0420>
  3e0804: 943194f8     	bl	0x1045be4 <.text+0x1035be4>
  3e0808: d503233f     	paciasp
  3e080c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
  3e0810: f9000bf5     	str	x21, [sp, #0x10]
  3e0814: a9024ff4     	stp	x20, x19, [sp, #0x20]
  3e0818: 910003fd     	mov	x29, sp
  3e081c: aa0003e8     	mov	x8, x0
  3e0820: aa1f03e0     	mov	x0, xzr
  3e0824: b40004c1     	cbz	x1, 0x3e08bc <.text+0x3d08bc>
  3e0828: 9100fd08     	add	x8, x8, #0x3f
  3e082c: aa0203f3     	mov	x19, x2
  3e0830: aa0103f4     	mov	x20, x1
  3e0834: d343fd08     	lsr	x8, x8, #3
  3e0838: aa0203e0     	mov	x0, x2
  3e083c: 52800022     	mov	w2, #0x1                // =1
  3e0840: 927de515     	and	x21, x8, #0x1ffffffffffffff8
  3e0844: aa1503e1     	mov	x1, x21
  3e0848: 97ff657e     	bl	0x3b9e40 <.text+0x3a9e40>
  3e084c: 14000021     	b	0x3e08d0 <.text+0x3d08d0>
  3e0850: d503201f     	nop
  3e0854: d53b4228     	mrs	x8, DAIF
  3e0858: d50343df     	msr	DAIFSet, #0x3
  3e085c: d5384109     	mrs	x9, SP_EL0
  3e0860: f9400529     	ldr	x9, [x9, #0x8]
  3e0864: d538202a     	mrs	x10, TTBR1_EL1
  3e0868: aa0903eb     	mov	x11, x9
  3e086c: b340bd4b     	bfxil	x11, x10, #0, #48
  3e0870: d518202b     	msr	TTBR1_EL1, x11
  3e0874: d5182009     	msr	TTBR0_EL1, x9
  3e0878: d5033fdf     	isb
  3e087c: d51b4228     	msr	DAIF, x8
  3e0880: 9248fa80     	and	x0, x20, #0xff7fffffffffffff
  3e0884: aa1303e1     	mov	x1, x19
  3e0888: aa1503e2     	mov	x2, x21
  3e088c: 9430b78d     	bl	0x100e6c0 <.text+0xffe6c0>
  3e0890: 14000014     	b	0x3e08e0 <.text+0x3d08e0>
  3e0894: d503201f     	nop
  3e0898: d53b4228     	mrs	x8, DAIF
  3e089c: d50343df     	msr	DAIFSet, #0x3
  3e08a0: d5382029     	mrs	x9, TTBR1_EL1
  3e08a4: 9240bd29     	and	x9, x9, #0xffffffffffff
  3e08a8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
  3e08ac: d518200a     	msr	TTBR0_EL1, x10
  3e08b0: d5182029     	msr	TTBR1_EL1, x9
  3e08b4: d5033fdf     	isb
  3e08b8: d51b4228     	msr	DAIF, x8
  3e08bc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
  3e08c0: f9400bf5     	ldr	x21, [sp, #0x10]
  3e08c4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
  3e08c8: d50323bf     	autiasp
  3e08cc: d65f03c0     	ret
  3e08d0: 9000f788     	adrp	x8, 0x22d0000
  3e08d4: f9433108     	ldr	x8, [x8, #0x660]
  3e08d8: b737fd48     	tbnz	x8, #0x26, 0x3e0880 <.text+0x3d0880>
  3e08dc: 17ffffde     	b	0x3e0854 <.text+0x3d0854>
  3e08e0: 9000f788     	adrp	x8, 0x22d0000
  3e08e4: f9433108     	ldr	x8, [x8, #0x660]
  3e08e8: b737fea8     	tbnz	x8, #0x26, 0x3e08bc <.text+0x3d08bc>
  3e08ec: 17ffffeb     	b	0x3e0898 <.text+0x3d0898>
  3e08f0: b02b34d9     	adrp	x25, 0x56a79000
  3e08f4: d503233f     	paciasp
  3e08f8: d10203ff     	sub	sp, sp, #0x80
  3e08fc: a9037bfd     	stp	x29, x30, [sp, #0x30]
  3e0900: a90467fa     	stp	x26, x25, [sp, #0x40]
  3e0904: a9055ff8     	stp	x24, x23, [sp, #0x50]
  3e0908: a90657f6     	stp	x22, x21, [sp, #0x60]
  3e090c: a9074ff4     	stp	x20, x19, [sp, #0x70]
  3e0910: 9100c3fd     	add	x29, sp, #0x30
  3e0914: d5384108     	mrs	x8, SP_EL0
  3e0918: f9431108     	ldr	x8, [x8, #0x620]
  3e091c: f81f83a8     	stur	x8, [x29, #-0x8]
  3e0920: a941cc14     	ldp	x20, x19, [x0, #0x18]
  3e0924: b9400015     	ldr	w21, [x0]
  3e0928: a940d817     	ldp	x23, x22, [x0, #0x8]
  3e092c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
  3e0930: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  3e0934: b4000113     	cbz	x19, 0x3e0954 <.text+0x3d0954>
  3e0938: 910023e0     	add	x0, sp, #0x8
  3e093c: aa1303e1     	mov	x1, x19
  3e0940: 52800202     	mov	w2, #0x10               // =16
  3e0944: 940002d4     	bl	0x3e1494 <.text+0x3d1494>
  3e0948: b40003a0     	cbz	x0, 0x3e09bc <.text+0x3d09bc>
  3e094c: 928001a0     	mov	x0, #-0xe               // =-14
  3e0950: 1400000e     	b	0x3e0988 <.text+0x3d0988>
  3e0954: aa1f03f8     	mov	x24, xzr
  3e0958: 2a1503e0     	mov	w0, w21
  3e095c: aa1703e1     	mov	x1, x23
  3e0960: aa1603e2     	mov	x2, x22
  3e0964: aa1403e3     	mov	x3, x20
  3e0968: aa1803e4     	mov	x4, x24
  3e096c: 97fffd22     	bl	0x3dfdf4 <.text+0x3cfdf4>
  3e0970: 2a0003e3     	mov	w3, w0
  3e0974: 910063e0     	add	x0, sp, #0x18
  3e0978: aa1303e1     	mov	x1, x19
  3e097c: 2a1f03e2     	mov	w2, wzr
  3e0980: 9400030d     	bl	0x3e15b4 <.text+0x3d15b4>
  3e0984: 93407c00     	sxtw	x0, w0
  3e0988: d5384108     	mrs	x8, SP_EL0
  3e098c: f9431108     	ldr	x8, [x8, #0x620]
  3e0990: f85f83a9     	ldur	x9, [x29, #-0x8]
  3e0994: eb09011f     	cmp	x8, x9
  3e0998: 54000561     	b.ne	0x3e0a44 <.text+0x3d0a44>
  3e099c: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  3e09a0: a94657f6     	ldp	x22, x21, [sp, #0x60]
  3e09a4: a9455ff8     	ldp	x24, x23, [sp, #0x50]
  3e09a8: a94467fa     	ldp	x26, x25, [sp, #0x40]
  3e09ac: a9437bfd     	ldp	x29, x30, [sp, #0x30]
  3e09b0: 910203ff     	add	sp, sp, #0x80
  3e09b4: d50323bf     	autiasp
  3e09b8: d65f03c0     	ret
  3e09bc: d2869b69     	mov	x9, #0x34db             // =13531
  3e09c0: a940a3eb     	ldp	x11, x8, [sp, #0x8]
  3e09c4: f2baf6c9     	movk	x9, #0xd7b6, lsl #16
  3e09c8: 928002a0     	mov	x0, #-0x16              // =-22
  3e09cc: f2dbd049     	movk	x9, #0xde82, lsl #32
  3e09d0: f2e86369     	movk	x9, #0x431b, lsl #48
  3e09d4: 9b497d09     	smulh	x9, x8, x9
  3e09d8: 9352fd2a     	asr	x10, x9, #18
  3e09dc: 8b49fd49     	add	x9, x10, x9, lsr #63
  3e09e0: ab0b0139     	adds	x25, x9, x11
  3e09e4: 54fffd24     	b.mi	0x3e0988 <.text+0x3d0988>
  3e09e8: 5288480a     	mov	w10, #0x4240            // =16960
  3e09ec: 72a001ea     	movk	w10, #0xf, lsl #16
  3e09f0: 9b0aa128     	msub	x8, x9, x10, x8
  3e09f4: 52807d09     	mov	w9, #0x3e8              // =1000
  3e09f8: 9b097d1a     	mul	x26, x8, x9
  3e09fc: 52993fe8     	mov	w8, #0xc9ff             // =51711
  3e0a00: 72a77348     	movk	w8, #0x3b9a, lsl #16
  3e0a04: eb08035f     	cmp	x26, x8
  3e0a08: 54fffc08     	b.hi	0x3e0988 <.text+0x3d0988>
  3e0a0c: aa190348     	orr	x8, x26, x25
  3e0a10: b4000148     	cbz	x8, 0x3e0a38 <.text+0x3d0a38>
  3e0a14: 910063e0     	add	x0, sp, #0x18
  3e0a18: 910063f8     	add	x24, sp, #0x18
  3e0a1c: 97f6a3ea     	bl	0x1899c4 <.text+0x1799c4>
  3e0a20: a94187e0     	ldp	x0, x1, [sp, #0x18]
  3e0a24: aa1903e2     	mov	x2, x25
  3e0a28: aa1a03e3     	mov	x3, x26
  3e0a2c: 97f684cd     	bl	0x181d60 <.text+0x171d60>
  3e0a30: a90187e0     	stp	x0, x1, [sp, #0x18]
  3e0a34: 17ffffc9     	b	0x3e0958 <.text+0x3d0958>
  3e0a38: a901ffff     	stp	xzr, xzr, [sp, #0x18]
  3e0a3c: 910063f8     	add	x24, sp, #0x18
  3e0a40: 17ffffc6     	b	0x3e0958 <.text+0x3d0958>
  3e0a44: 94319468     	bl	0x1045be4 <.text+0x1035be4>
  3e0a48: b02b34d9     	adrp	x25, 0x56a79000
  3e0a4c: d503233f     	paciasp
  3e0a50: d10243ff     	sub	sp, sp, #0x90
  3e0a54: a9037bfd     	stp	x29, x30, [sp, #0x30]
  3e0a58: a9046ffc     	stp	x28, x27, [sp, #0x40]
  3e0a5c: a90567fa     	stp	x26, x25, [sp, #0x50]
  3e0a60: a9065ff8     	stp	x24, x23, [sp, #0x60]
  3e0a64: a90757f6     	stp	x22, x21, [sp, #0x70]
  3e0a68: a9084ff4     	stp	x20, x19, [sp, #0x80]
  3e0a6c: 9100c3fd     	add	x29, sp, #0x30
  3e0a70: d5384108     	mrs	x8, SP_EL0
  3e0a74: f9431108     	ldr	x8, [x8, #0x620]
  3e0a78: f81f83a8     	stur	x8, [x29, #-0x8]
  3e0a7c: a9422413     	ldp	x19, x9, [x0, #0x20]
  3e0a80: b9400014     	ldr	w20, [x0]
  3e0a84: a940d817     	ldp	x23, x22, [x0, #0x8]
  3e0a88: f9400c15     	ldr	x21, [x0, #0x18]
  3e0a8c: b4000189     	cbz	x9, 0x3e0abc <.text+0x3d0abc>
  3e0a90: d5384108     	mrs	x8, SP_EL0
  3e0a94: 3941190a     	ldrb	w10, [x8, #0x46]
  3e0a98: 372804aa     	tbnz	w10, #0x5, 0x3e0b2c <.text+0x3d0b2c>
  3e0a9c: f940010a     	ldr	x10, [x8]
  3e0aa0: 37d0076a     	tbnz	w10, #0x1a, 0x3e0b8c <.text+0x3d0b8c>
  3e0aa4: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
  3e0aa8: f29fff2a     	movk	x10, #0xfff9
  3e0aac: d100214a     	sub	x10, x10, #0x8
  3e0ab0: eb0a013f     	cmp	x9, x10
  3e0ab4: 54000763     	b.lo	0x3e0ba0 <.text+0x3d0ba0>
  3e0ab8: 14000083     	b	0x3e0cc4 <.text+0x3d0cc4>
  3e0abc: aa1f03f8     	mov	x24, xzr
  3e0ac0: aa1f03f9     	mov	x25, xzr
  3e0ac4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
  3e0ac8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  3e0acc: b40003d3     	cbz	x19, 0x3e0b44 <.text+0x3d0b44>
  3e0ad0: 910063e0     	add	x0, sp, #0x18
  3e0ad4: aa1303e1     	mov	x1, x19
  3e0ad8: 97f684d0     	bl	0x181e18 <.text+0x171e18>
  3e0adc: 35000f40     	cbnz	w0, 0x3e0cc4 <.text+0x3d0cc4>
  3e0ae0: f9400ffb     	ldr	x27, [sp, #0x18]
  3e0ae4: 928002a0     	mov	x0, #-0x16              // =-22
  3e0ae8: b7f80f1b     	tbnz	x27, #0x3f, 0x3e0cc8 <.text+0x3d0cc8>
  3e0aec: f94013fc     	ldr	x28, [sp, #0x20]
  3e0af0: 52993fe8     	mov	w8, #0xc9ff             // =51711
  3e0af4: 72a77348     	movk	w8, #0x3b9a, lsl #16
  3e0af8: eb08039f     	cmp	x28, x8
  3e0afc: 54000e68     	b.hi	0x3e0cc8 <.text+0x3d0cc8>
  3e0b00: aa1b0388     	orr	x8, x28, x27
  3e0b04: b4000fe8     	cbz	x8, 0x3e0d00 <.text+0x3d0d00>
  3e0b08: 910023e0     	add	x0, sp, #0x8
  3e0b0c: 910023fa     	add	x26, sp, #0x8
  3e0b10: 97f6a3ad     	bl	0x1899c4 <.text+0x1799c4>
  3e0b14: a94087e0     	ldp	x0, x1, [sp, #0x8]
  3e0b18: aa1b03e2     	mov	x2, x27
  3e0b1c: aa1c03e3     	mov	x3, x28
  3e0b20: 97f68490     	bl	0x181d60 <.text+0x171d60>
  3e0b24: a90087e0     	stp	x0, x1, [sp, #0x8]
  3e0b28: 14000008     	b	0x3e0b48 <.text+0x3d0b48>
  3e0b2c: d378dd2a     	lsl	x10, x9, #8
  3e0b30: 8a8a212b     	and	x11, x9, x10, asr #8
  3e0b34: b27c8bea     	mov	x10, #0x7ffffffff0      // =549755813872
  3e0b38: eb0a017f     	cmp	x11, x10
  3e0b3c: 540003c9     	b.ls	0x3e0bb4 <.text+0x3d0bb4>
  3e0b40: 14000061     	b	0x3e0cc4 <.text+0x3d0cc4>
  3e0b44: aa1f03fa     	mov	x26, xzr
  3e0b48: aa1803e0     	mov	x0, x24
  3e0b4c: aa1903e1     	mov	x1, x25
  3e0b50: 97f393d4     	bl	0xc5aa0 <.text+0xb5aa0>
  3e0b54: 35000180     	cbnz	w0, 0x3e0b84 <.text+0x3d0b84>
  3e0b58: 2a1403e0     	mov	w0, w20
  3e0b5c: aa1703e1     	mov	x1, x23
  3e0b60: aa1603e2     	mov	x2, x22
  3e0b64: aa1503e3     	mov	x3, x21
  3e0b68: aa1a03e4     	mov	x4, x26
  3e0b6c: 97fffca2     	bl	0x3dfdf4 <.text+0x3cfdf4>
  3e0b70: 2a0003e3     	mov	w3, w0
  3e0b74: 910023e0     	add	x0, sp, #0x8
  3e0b78: aa1303e1     	mov	x1, x19
  3e0b7c: 52800042     	mov	w2, #0x2                // =2
  3e0b80: 9400028d     	bl	0x3e15b4 <.text+0x3d15b4>
  3e0b84: 93407c00     	sxtw	x0, w0
  3e0b88: 14000050     	b	0x3e0cc8 <.text+0x3d0cc8>
  3e0b8c: d378dd2a     	lsl	x10, x9, #8
  3e0b90: b27c8beb     	mov	x11, #0x7ffffffff0      // =549755813872
  3e0b94: 8a8a212a     	and	x10, x9, x10, asr #8
  3e0b98: eb0b015f     	cmp	x10, x11
  3e0b9c: 54000948     	b.hi	0x3e0cc4 <.text+0x3d0cc4>
  3e0ba0: f940010a     	ldr	x10, [x8]
  3e0ba4: aa0903eb     	mov	x11, x9
  3e0ba8: 36d0006a     	tbz	w10, #0x1a, 0x3e0bb4 <.text+0x3d0bb4>
  3e0bac: d378dd2a     	lsl	x10, x9, #8
  3e0bb0: 8a8a212b     	and	x11, x9, x10, asr #8
  3e0bb4: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
  3e0bb8: f29fff2a     	movk	x10, #0xfff9
  3e0bbc: eb0a017f     	cmp	x11, x10
  3e0bc0: 54000822     	b.hs	0x3e0cc4 <.text+0x3d0cc4>
  3e0bc4: 9248f92c     	and	x12, x9, #0xff7fffffffffffff
  3e0bc8: 14000052     	b	0x3e0d10 <.text+0x3d0d10>
  3e0bcc: d503201f     	nop
  3e0bd0: d53b422b     	mrs	x11, DAIF
  3e0bd4: d50343df     	msr	DAIFSet, #0x3
  3e0bd8: f940050d     	ldr	x13, [x8, #0x8]
  3e0bdc: d538202e     	mrs	x14, TTBR1_EL1
  3e0be0: aa0d03ef     	mov	x15, x13
  3e0be4: b340bdcf     	bfxil	x15, x14, #0, #48
  3e0be8: d518202f     	msr	TTBR1_EL1, x15
  3e0bec: d518200d     	msr	TTBR0_EL1, x13
  3e0bf0: d5033fdf     	isb
  3e0bf4: d51b422b     	msr	DAIF, x11
  3e0bf8: 2a1f03eb     	mov	w11, wzr
  3e0bfc: f8400998     	ldtr	x24, [x12]
  3e0c00: 14000048     	b	0x3e0d20 <.text+0x3d0d20>
  3e0c04: d503201f     	nop
  3e0c08: d53b422c     	mrs	x12, DAIF
  3e0c0c: d50343df     	msr	DAIFSet, #0x3
  3e0c10: d538202d     	mrs	x13, TTBR1_EL1
  3e0c14: 9240bdad     	and	x13, x13, #0xffffffffffff
  3e0c18: d14005ae     	sub	x14, x13, #0x1, lsl #12 // =0x1000
  3e0c1c: d518200e     	msr	TTBR0_EL1, x14
  3e0c20: d518202d     	msr	TTBR1_EL1, x13
  3e0c24: d5033fdf     	isb
  3e0c28: d51b422c     	msr	DAIF, x12
  3e0c2c: 350004cb     	cbnz	w11, 0x3e0cc4 <.text+0x3d0cc4>
  3e0c30: 3941190b     	ldrb	w11, [x8, #0x46]
  3e0c34: 91002129     	add	x9, x9, #0x8
  3e0c38: 3728008b     	tbnz	w11, #0x5, 0x3e0c48 <.text+0x3d0c48>
  3e0c3c: f940010c     	ldr	x12, [x8]
  3e0c40: aa0903eb     	mov	x11, x9
  3e0c44: 36d0006c     	tbz	w12, #0x1a, 0x3e0c50 <.text+0x3d0c50>
  3e0c48: d378dd2b     	lsl	x11, x9, #8
  3e0c4c: 8a8b212b     	and	x11, x9, x11, asr #8
  3e0c50: eb0a017f     	cmp	x11, x10
  3e0c54: 54000382     	b.hs	0x3e0cc4 <.text+0x3d0cc4>
  3e0c58: 9248f929     	and	x9, x9, #0xff7fffffffffffff
  3e0c5c: 14000035     	b	0x3e0d30 <.text+0x3d0d30>
  3e0c60: d503201f     	nop
  3e0c64: d53b422a     	mrs	x10, DAIF
  3e0c68: d50343df     	msr	DAIFSet, #0x3
  3e0c6c: f9400508     	ldr	x8, [x8, #0x8]
  3e0c70: d538202b     	mrs	x11, TTBR1_EL1
  3e0c74: aa0803ec     	mov	x12, x8
  3e0c78: b340bd6c     	bfxil	x12, x11, #0, #48
  3e0c7c: d518202c     	msr	TTBR1_EL1, x12
  3e0c80: d5182008     	msr	TTBR0_EL1, x8
  3e0c84: d5033fdf     	isb
  3e0c88: d51b422a     	msr	DAIF, x10
  3e0c8c: 2a1f03e8     	mov	w8, wzr
  3e0c90: f8400939     	ldtr	x25, [x9]
  3e0c94: 1400002b     	b	0x3e0d40 <.text+0x3d0d40>
  3e0c98: d503201f     	nop
  3e0c9c: d53b4229     	mrs	x9, DAIF
  3e0ca0: d50343df     	msr	DAIFSet, #0x3
  3e0ca4: d538202a     	mrs	x10, TTBR1_EL1
  3e0ca8: 9240bd4a     	and	x10, x10, #0xffffffffffff
  3e0cac: d140054b     	sub	x11, x10, #0x1, lsl #12 // =0x1000
  3e0cb0: d518200b     	msr	TTBR0_EL1, x11
  3e0cb4: d518202a     	msr	TTBR1_EL1, x10
  3e0cb8: d5033fdf     	isb
  3e0cbc: d51b4229     	msr	DAIF, x9
  3e0cc0: 34fff028     	cbz	w8, 0x3e0ac4 <.text+0x3d0ac4>
  3e0cc4: 928001a0     	mov	x0, #-0xe               // =-14
  3e0cc8: d5384108     	mrs	x8, SP_EL0
  3e0ccc: f9431108     	ldr	x8, [x8, #0x620]
  3e0cd0: f85f83a9     	ldur	x9, [x29, #-0x8]
  3e0cd4: eb09011f     	cmp	x8, x9
  3e0cd8: 540001a1     	b.ne	0x3e0d0c <.text+0x3d0d0c>
  3e0cdc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
  3e0ce0: a94757f6     	ldp	x22, x21, [sp, #0x70]
  3e0ce4: a9465ff8     	ldp	x24, x23, [sp, #0x60]
  3e0ce8: a94567fa     	ldp	x26, x25, [sp, #0x50]
  3e0cec: a9446ffc     	ldp	x28, x27, [sp, #0x40]
  3e0cf0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
  3e0cf4: 910243ff     	add	sp, sp, #0x90
  3e0cf8: d50323bf     	autiasp
  3e0cfc: d65f03c0     	ret
  3e0d00: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  3e0d04: 910023fa     	add	x26, sp, #0x8
  3e0d08: 17ffff90     	b	0x3e0b48 <.text+0x3d0b48>
  3e0d0c: 943193b6     	bl	0x1045be4 <.text+0x1035be4>
  3e0d10: 9000f78b     	adrp	x11, 0x22d0000
  3e0d14: f943316b     	ldr	x11, [x11, #0x660]
  3e0d18: b737f70b     	tbnz	x11, #0x26, 0x3e0bf8 <.text+0x3d0bf8>
  3e0d1c: 17ffffad     	b	0x3e0bd0 <.text+0x3d0bd0>
  3e0d20: 9000f78c     	adrp	x12, 0x22d0000
  3e0d24: f943318c     	ldr	x12, [x12, #0x660]
  3e0d28: b737f82c     	tbnz	x12, #0x26, 0x3e0c2c <.text+0x3d0c2c>
  3e0d2c: 17ffffb7     	b	0x3e0c08 <.text+0x3d0c08>
  3e0d30: 9000f78a     	adrp	x10, 0x22d0000
  3e0d34: f943314a     	ldr	x10, [x10, #0x660]
  3e0d38: b737faaa     	tbnz	x10, #0x26, 0x3e0c8c <.text+0x3d0c8c>
  3e0d3c: 17ffffca     	b	0x3e0c64 <.text+0x3d0c64>
  3e0d40: 9000f789     	adrp	x9, 0x22d0000
  3e0d44: f9433129     	ldr	x9, [x9, #0x660]
  3e0d48: b737fbc9     	tbnz	x9, #0x26, 0x3e0cc0 <.text+0x3d0cc0>
  3e0d4c: 17ffffd4     	b	0x3e0c9c <.text+0x3d0c9c>
  3e0d50: b02b34d9     	adrp	x25, 0x56a79000
  3e0d54: d503233f     	paciasp
  3e0d58: d10183ff     	sub	sp, sp, #0x60
  3e0d5c: a9027bfd     	stp	x29, x30, [sp, #0x20]
  3e0d60: a9035ff8     	stp	x24, x23, [sp, #0x30]
  3e0d64: a90457f6     	stp	x22, x21, [sp, #0x40]
  3e0d68: a9054ff4     	stp	x20, x19, [sp, #0x50]
  3e0d6c: 910083fd     	add	x29, sp, #0x20
  3e0d70: d5384108     	mrs	x8, SP_EL0
  3e0d74: f9431108     	ldr	x8, [x8, #0x620]
  3e0d78: f81f83a8     	stur	x8, [x29, #-0x8]
  3e0d7c: b9401018     	ldr	w24, [x0, #0x10]
  3e0d80: f9400014     	ldr	x20, [x0]
  3e0d84: b9400813     	ldr	w19, [x0, #0x8]
  3e0d88: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  3e0d8c: 37f802b8     	tbnz	w24, #0x1f, 0x3e0de0 <.text+0x3d0de0>
  3e0d90: 5289ba68     	mov	w8, #0x4dd3             // =19923
  3e0d94: 52884809     	mov	w9, #0x4240             // =16960
  3e0d98: 72a20c48     	movk	w8, #0x1062, lsl #16
  3e0d9c: 72a001e9     	movk	w9, #0xf, lsl #16
  3e0da0: 9ba87f08     	umull	x8, w24, w8
  3e0da4: d366fd16     	lsr	x22, x8, #38
  3e0da8: 52807d08     	mov	w8, #0x3e8              // =1000
  3e0dac: 1b08e2c8     	msub	w8, w22, w8, w24
  3e0db0: 1b097d17     	mul	w23, w8, w9
  3e0db4: aa1602e8     	orr	x8, x23, x22
  3e0db8: b4000188     	cbz	x8, 0x3e0de8 <.text+0x3d0de8>
  3e0dbc: 910023e0     	add	x0, sp, #0x8
  3e0dc0: 910023f5     	add	x21, sp, #0x8
  3e0dc4: 97f6a300     	bl	0x1899c4 <.text+0x1799c4>
  3e0dc8: a94087e0     	ldp	x0, x1, [sp, #0x8]
  3e0dcc: aa1603e2     	mov	x2, x22
  3e0dd0: aa1703e3     	mov	x3, x23
  3e0dd4: 97f683e3     	bl	0x181d60 <.text+0x171d60>
  3e0dd8: a90087e0     	stp	x0, x1, [sp, #0x8]
  3e0ddc: 14000004     	b	0x3e0dec <.text+0x3d0dec>
  3e0de0: aa1f03f5     	mov	x21, xzr
  3e0de4: 14000002     	b	0x3e0dec <.text+0x3d0dec>
  3e0de8: 910023f5     	add	x21, sp, #0x8
  3e0dec: aa1403e0     	mov	x0, x20
  3e0df0: 2a1303e1     	mov	w1, w19
  3e0df4: aa1503e2     	mov	x2, x21
  3e0df8: 940002a2     	bl	0x3e1880 <.text+0x3d1880>
  3e0dfc: 3108081f     	cmn	w0, #0x202
  3e0e00: 54000201     	b.ne	0x3e0e40 <.text+0x3d0e40>
  3e0e04: d5384108     	mrs	x8, SP_EL0
  3e0e08: f902f914     	str	x20, [x8, #0x5f0]
  3e0e0c: b905f913     	str	w19, [x8, #0x5f8]
  3e0e10: 37f800d8     	tbnz	w24, #0x1f, 0x3e0e28 <.text+0x3d0e28>
  3e0e14: a940abe9     	ldp	x9, x10, [sp, #0x8]
  3e0e18: f9030109     	str	x9, [x8, #0x600]
  3e0e1c: 52800029     	mov	w9, #0x1                // =1
  3e0e20: f903050a     	str	x10, [x8, #0x608]
  3e0e24: 14000002     	b	0x3e0e2c <.text+0x3d0e2c>
  3e0e28: 2a1f03e9     	mov	w9, wzr
  3e0e2c: b905fd09     	str	w9, [x8, #0x5fc]
  3e0e30: b0000009     	adrp	x9, 0x3e1000 <.text+0x3d1000>
  3e0e34: 913ac129     	add	x9, x9, #0xeb0
  3e0e38: 12804060     	mov	w0, #-0x204             // =-516
  3e0e3c: f902f509     	str	x9, [x8, #0x5e8]
  3e0e40: d5384108     	mrs	x8, SP_EL0
  3e0e44: f9431108     	ldr	x8, [x8, #0x620]
  3e0e48: f85f83a9     	ldur	x9, [x29, #-0x8]
  3e0e4c: eb09011f     	cmp	x8, x9
  3e0e50: 54000121     	b.ne	0x3e0e74 <.text+0x3d0e74>
  3e0e54: 93407c00     	sxtw	x0, w0
  3e0e58: a9454ff4     	ldp	x20, x19, [sp, #0x50]
  3e0e5c: a94457f6     	ldp	x22, x21, [sp, #0x40]
  3e0e60: a9435ff8     	ldp	x24, x23, [sp, #0x30]
  3e0e64: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  3e0e68: 910183ff     	add	sp, sp, #0x60
  3e0e6c: d50323bf     	autiasp
  3e0e70: d65f03c0     	ret
  3e0e74: 9431935c     	bl	0x1045be4 <.text+0x1035be4>
  3e0e78: b02b34d9     	adrp	x25, 0x56a79000
  3e0e7c: d503233f     	paciasp
  3e0e80: d10203ff     	sub	sp, sp, #0x80
  3e0e84: a9037bfd     	stp	x29, x30, [sp, #0x30]
  3e0e88: a90467fa     	stp	x26, x25, [sp, #0x40]
  3e0e8c: a9055ff8     	stp	x24, x23, [sp, #0x50]
  3e0e90: a90657f6     	stp	x22, x21, [sp, #0x60]
  3e0e94: a9074ff4     	stp	x20, x19, [sp, #0x70]
  3e0e98: 9100c3fd     	add	x29, sp, #0x30
  3e0e9c: d5384108     	mrs	x8, SP_EL0
  3e0ea0: f9431108     	ldr	x8, [x8, #0x620]
  3e0ea4: f81f83a8     	stur	x8, [x29, #-0x8]
  3e0ea8: a9415c13     	ldp	x19, x23, [x0, #0x10]
  3e0eac: f9400014     	ldr	x20, [x0]
  3e0eb0: b9400815     	ldr	w21, [x0, #0x8]
  3e0eb4: f9401016     	ldr	x22, [x0, #0x20]
  3e0eb8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
  3e0ebc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  3e0ec0: b40000f3     	cbz	x19, 0x3e0edc <.text+0x3d0edc>
  3e0ec4: 910063e0     	add	x0, sp, #0x18
  3e0ec8: aa1303e1     	mov	x1, x19
  3e0ecc: 97f683d3     	bl	0x181e18 <.text+0x171e18>
  3e0ed0: 340003e0     	cbz	w0, 0x3e0f4c <.text+0x3d0f4c>
  3e0ed4: 928001a0     	mov	x0, #-0xe               // =-14
  3e0ed8: 14000010     	b	0x3e0f18 <.text+0x3d0f18>
  3e0edc: aa1f03f8     	mov	x24, xzr
  3e0ee0: aa1703e0     	mov	x0, x23
  3e0ee4: aa1603e1     	mov	x1, x22
  3e0ee8: 97f392ee     	bl	0xc5aa0 <.text+0xb5aa0>
  3e0eec: 35000140     	cbnz	w0, 0x3e0f14 <.text+0x3d0f14>
  3e0ef0: aa1403e0     	mov	x0, x20
  3e0ef4: 2a1503e1     	mov	w1, w21
  3e0ef8: aa1803e2     	mov	x2, x24
  3e0efc: 94000261     	bl	0x3e1880 <.text+0x3d1880>
  3e0f00: 2a0003e3     	mov	w3, w0
  3e0f04: 910023e0     	add	x0, sp, #0x8
  3e0f08: aa1303e1     	mov	x1, x19
  3e0f0c: 52800042     	mov	w2, #0x2                // =2
  3e0f10: 940001a9     	bl	0x3e15b4 <.text+0x3d15b4>
  3e0f14: 93407c00     	sxtw	x0, w0
  3e0f18: d5384108     	mrs	x8, SP_EL0
  3e0f1c: f9431108     	ldr	x8, [x8, #0x620]
  3e0f20: f85f83a9     	ldur	x9, [x29, #-0x8]
  3e0f24: eb09011f     	cmp	x8, x9
  3e0f28: 540003e1     	b.ne	0x3e0fa4 <.text+0x3d0fa4>
  3e0f2c: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  3e0f30: a94657f6     	ldp	x22, x21, [sp, #0x60]
  3e0f34: a9455ff8     	ldp	x24, x23, [sp, #0x50]
  3e0f38: a94467fa     	ldp	x26, x25, [sp, #0x40]
  3e0f3c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
  3e0f40: 910203ff     	add	sp, sp, #0x80
  3e0f44: d50323bf     	autiasp
  3e0f48: d65f03c0     	ret
  3e0f4c: f9400ff9     	ldr	x25, [sp, #0x18]
  3e0f50: 928002a0     	mov	x0, #-0x16              // =-22
  3e0f54: b7fffe39     	tbnz	x25, #0x3f, 0x3e0f18 <.text+0x3d0f18>
  3e0f58: f94013fa     	ldr	x26, [sp, #0x20]
  3e0f5c: 52993fe8     	mov	w8, #0xc9ff             // =51711
  3e0f60: 72a77348     	movk	w8, #0x3b9a, lsl #16
  3e0f64: eb08035f     	cmp	x26, x8
  3e0f68: 54fffd88     	b.hi	0x3e0f18 <.text+0x3d0f18>
  3e0f6c: aa190348     	orr	x8, x26, x25
  3e0f70: b4000148     	cbz	x8, 0x3e0f98 <.text+0x3d0f98>
  3e0f74: 910023e0     	add	x0, sp, #0x8
  3e0f78: 910023f8     	add	x24, sp, #0x8
  3e0f7c: 97f6a292     	bl	0x1899c4 <.text+0x1799c4>
  3e0f80: a94087e0     	ldp	x0, x1, [sp, #0x8]
  3e0f84: aa1903e2     	mov	x2, x25
  3e0f88: aa1a03e3     	mov	x3, x26
  3e0f8c: 97f68375     	bl	0x181d60 <.text+0x171d60>
  3e0f90: a90087e0     	stp	x0, x1, [sp, #0x8]
  3e0f94: 17ffffd3     	b	0x3e0ee0 <.text+0x3d0ee0>
  3e0f98: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  3e0f9c: 910023f8     	add	x24, sp, #0x8
  3e0fa0: 17ffffd0     	b	0x3e0ee0 <.text+0x3d0ee0>
  3e0fa4: 94319310     	bl	0x1045be4 <.text+0x1035be4>
  3e0fa8: b02b34d9     	adrp	x25, 0x56a79000
  3e0fac: d503233f     	paciasp
  3e0fb0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  3e0fb4: 910003fd     	mov	x29, sp
  3e0fb8: b9400008     	ldr	w8, [x0]
  3e0fbc: a9408801     	ldp	x1, x2, [x0, #0x8]
  3e0fc0: a9419003     	ldp	x3, x4, [x0, #0x18]
  3e0fc4: 2a0803e0     	mov	w0, w8
  3e0fc8: 940003df     	bl	0x3e1f44 <.text+0x3d1f44>
  3e0fcc: 93407c00     	sxtw	x0, w0
  3e0fd0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  3e0fd4: d50323bf     	autiasp
  3e0fd8: d65f03c0     	ret
  3e0fdc: b02b34d9     	adrp	x25, 0x56a79000
  3e0fe0: d503233f     	paciasp
  3e0fe4: d100c3ff     	sub	sp, sp, #0x30
  3e0fe8: a9027bfd     	stp	x29, x30, [sp, #0x20]
  3e0fec: 910083fd     	add	x29, sp, #0x20
  3e0ff0: d5384108     	mrs	x8, SP_EL0
  3e0ff4: 52800282     	mov	w2, #0x14               // =20
  3e0ff8: f9431108     	ldr	x8, [x8, #0x620]
  3e0ffc: f81f83a8     	stur	x8, [x29, #-0x8]
  3e1000: f9400001     	ldr	x1, [x0]
  3e1004: 910003e0     	mov	x0, sp
  3e1008: b90013ff     	str	wzr, [sp, #0x10]
  3e100c: a9007fff     	stp	xzr, xzr, [sp]
  3e1010: 94000121     	bl	0x3e1494 <.text+0x3d1494>
  3e1014: b4000060     	cbz	x0, 0x3e1020 <.text+0x3d1020>
  3e1018: 928001a0     	mov	x0, #-0xe               // =-14
  3e101c: 14000006     	b	0x3e1034 <.text+0x3d1034>
  3e1020: 294007e0     	ldp	w0, w1, [sp]
  3e1024: 29410fe2     	ldp	w2, w3, [sp, #0x8]
  3e1028: b94013e4     	ldr	w4, [sp, #0x10]
  3e102c: 940003c6     	bl	0x3e1f44 <.text+0x3d1f44>
  3e1030: 93407c00     	sxtw	x0, w0
  3e1034: d5384108     	mrs	x8, SP_EL0
  3e1038: f9431108     	ldr	x8, [x8, #0x620]
  3e103c: f85f83a9     	ldur	x9, [x29, #-0x8]
  3e1040: eb09011f     	cmp	x8, x9
  3e1044: 540000a1     	b.ne	0x3e1058 <.text+0x3d1058>
  3e1048: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  3e104c: 9100c3ff     	add	sp, sp, #0x30
  3e1050: d50323bf     	autiasp
  3e1054: d65f03c0     	ret
  3e1058: 943192e3     	bl	0x1045be4 <.text+0x1035be4>
  3e105c: b02b34d9     	adrp	x25, 0x56a7a000
  3e1060: d503233f     	paciasp
  3e1064: d10143ff     	sub	sp, sp, #0x50
  3e1068: a9017bfd     	stp	x29, x30, [sp, #0x10]
  3e106c: f90013f7     	str	x23, [sp, #0x20]
  3e1070: a90357f6     	stp	x22, x21, [sp, #0x30]
  3e1074: a9044ff4     	stp	x20, x19, [sp, #0x40]
  3e1078: 910043fd     	add	x29, sp, #0x10
  3e107c: d5384108     	mrs	x8, SP_EL0
  3e1080: f9431108     	ldr	x8, [x8, #0x620]
  3e1084: f90007e8     	str	x8, [sp, #0x8]
  3e1088: a9420417     	ldp	x23, x1, [x0, #0x20]
  3e108c: f90003ff     	str	xzr, [sp]
  3e1090: a9405013     	ldp	x19, x20, [x0]
  3e1094: a9415815     	ldp	x21, x22, [x0, #0x10]
  3e1098: 910003e0     	mov	x0, sp
  3e109c: 940004c2     	bl	0x3e23a4 <.text+0x3d23a4>
  3e10a0: 34000060     	cbz	w0, 0x3e10ac <.text+0x3d10ac>
  3e10a4: 928001a0     	mov	x0, #-0xe               // =-14
  3e10a8: 14000009     	b	0x3e10cc <.text+0x3d10cc>
  3e10ac: 29401be5     	ldp	w5, w6, [sp]
  3e10b0: 2a1303e0     	mov	w0, w19
  3e10b4: aa1403e1     	mov	x1, x20
  3e10b8: aa1503e2     	mov	x2, x21
  3e10bc: aa1603e3     	mov	x3, x22
  3e10c0: aa1703e4     	mov	x4, x23
  3e10c4: 52800047     	mov	w7, #0x2                // =2
  3e10c8: 94000531     	bl	0x3e258c <.text+0x3d258c>
  3e10cc: d5384108     	mrs	x8, SP_EL0
  3e10d0: f9431108     	ldr	x8, [x8, #0x620]
  3e10d4: f94007e9     	ldr	x9, [sp, #0x8]
  3e10d8: eb09011f     	cmp	x8, x9
  3e10dc: 54000101     	b.ne	0x3e10fc <.text+0x3d10fc>
  3e10e0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
  3e10e4: f94013f7     	ldr	x23, [sp, #0x20]
  3e10e8: a94357f6     	ldp	x22, x21, [sp, #0x30]
  3e10ec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
  3e10f0: 910143ff     	add	sp, sp, #0x50
  3e10f4: d50323bf     	autiasp
  3e10f8: d65f03c0     	ret
  3e10fc: 943192ba     	bl	0x1045be4 <.text+0x1035be4>
  3e1100: b02b34d9     	adrp	x25, 0x56a7a000
  3e1104: d503233f     	paciasp
  3e1108: d10143ff     	sub	sp, sp, #0x50
  3e110c: a9017bfd     	stp	x29, x30, [sp, #0x10]
  3e1110: f90013f7     	str	x23, [sp, #0x20]
  3e1114: a90357f6     	stp	x22, x21, [sp, #0x30]
  3e1118: a9044ff4     	stp	x20, x19, [sp, #0x40]
  3e111c: 910043fd     	add	x29, sp, #0x10
  3e1120: d5384108     	mrs	x8, SP_EL0
  3e1124: f9431108     	ldr	x8, [x8, #0x620]
  3e1128: f90007e8     	str	x8, [sp, #0x8]
  3e112c: a9420417     	ldp	x23, x1, [x0, #0x20]
  3e1130: f90003ff     	str	xzr, [sp]
  3e1134: a9405013     	ldp	x19, x20, [x0]
  3e1138: a9415815     	ldp	x21, x22, [x0, #0x10]
  3e113c: 910003e0     	mov	x0, sp
  3e1140: 94000499     	bl	0x3e23a4 <.text+0x3d23a4>
  3e1144: 34000060     	cbz	w0, 0x3e1150 <.text+0x3d1150>
  3e1148: 928001a0     	mov	x0, #-0xe               // =-14
  3e114c: 14000009     	b	0x3e1170 <.text+0x3d1170>
  3e1150: 29401be5     	ldp	w5, w6, [sp]
  3e1154: 2a1303e0     	mov	w0, w19
  3e1158: aa1403e1     	mov	x1, x20
  3e115c: aa1503e2     	mov	x2, x21
  3e1160: aa1603e3     	mov	x3, x22
  3e1164: aa1703e4     	mov	x4, x23
  3e1168: 52800067     	mov	w7, #0x3                // =3
  3e116c: 94000508     	bl	0x3e258c <.text+0x3d258c>
  3e1170: d5384108     	mrs	x8, SP_EL0
  3e1174: f9431108     	ldr	x8, [x8, #0x620]
  3e1178: f94007e9     	ldr	x9, [sp, #0x8]
  3e117c: eb09011f     	cmp	x8, x9
  3e1180: 54000101     	b.ne	0x3e11a0 <.text+0x3d11a0>
  3e1184: a9444ff4     	ldp	x20, x19, [sp, #0x40]
  3e1188: f94013f7     	ldr	x23, [sp, #0x20]
