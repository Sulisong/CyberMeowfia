// futex_wait_requeue_pi @ 0xffffffe1a59a2890 (file offset 0x1a2890, size 0x800)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
  1a2890: d503233f     	paciasp
  1a2894: d10703ff     	sub	sp, sp, #0x1c0
  1a2898: a9167bfd     	stp	x29, x30, [sp, #0x160]
  1a289c: a9176ffc     	stp	x28, x27, [sp, #0x170]
  1a28a0: a91867fa     	stp	x26, x25, [sp, #0x180]
  1a28a4: a9195ff8     	stp	x24, x23, [sp, #0x190]
  1a28a8: a91a57f6     	stp	x22, x21, [sp, #0x1a0]
  1a28ac: a91b4ff4     	stp	x20, x19, [sp, #0x1b0]
  1a28b0: 910583fd     	add	x29, sp, #0x160
  1a28b4: d5384108     	mrs	x8, SP_EL0
  1a28b8: 128002b9     	mov	w25, #-0x16             // =-22
  1a28bc: f9431108     	ldr	x8, [x8, #0x620]
  1a28c0: f81f03a8     	stur	x8, [x29, #-0x10]
  1a28c4: 12800008     	mov	w8, #-0x1               // =-1
  1a28c8: a907ffff     	stp	xzr, xzr, [sp, #0x78]
  1a28cc: a906ffff     	stp	xzr, xzr, [sp, #0x68]
  1a28d0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
  1a28d4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
  1a28d8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
  1a28dc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
  1a28e0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
  1a28e4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  1a28e8: b9006be8     	str	w8, [sp, #0x68]
  1a28ec: f90003ff     	str	xzr, [sp]
  1a28f0: 34000724     	cbz	w4, 0x1a29d4 <.text+0x1929d4>
  1a28f4: aa0503f4     	mov	x20, x5
  1a28f8: aa0003f7     	mov	x23, x0
  1a28fc: eb05001f     	cmp	x0, x5
  1a2900: 540006a0     	b.eq	0x1a29d4 <.text+0x1929d4>
  1a2904: d538411a     	mrs	x26, SP_EL0
  1a2908: f9457b48     	ldr	x8, [x26, #0xaf0]
  1a290c: 2a0103f6     	mov	w22, w1
  1a2910: 2a0203f5     	mov	w21, w2
  1a2914: 910243fb     	add	x27, sp, #0x90
  1a2918: d10183a1     	sub	x1, x29, #0x60
  1a291c: aa0303e0     	mov	x0, x3
  1a2920: 2a1603e2     	mov	w2, w22
  1a2924: aa0803e3     	mov	x3, x8
  1a2928: 2a0403f8     	mov	w24, w4
  1a292c: a93e7fbf     	stp	xzr, xzr, [x29, #-0x20]
  1a2930: 9100a379     	add	x25, x27, #0x28
  1a2934: a93d7fbf     	stp	xzr, xzr, [x29, #-0x30]
  1a2938: a93c7fbf     	stp	xzr, xzr, [x29, #-0x40]
  1a293c: a93b7fbf     	stp	xzr, xzr, [x29, #-0x50]
  1a2940: a93a7fbf     	stp	xzr, xzr, [x29, #-0x60]
  1a2944: a9097fff     	stp	xzr, xzr, [sp, #0x90]
  1a2948: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
  1a294c: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
  1a2950: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
  1a2954: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
  1a2958: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
  1a295c: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
  1a2960: f90047ff     	str	xzr, [sp, #0x88]
  1a2964: 97ffedfa     	bl	0x19e14c <.text+0x18e14c>
  1a2968: aa0003f3     	mov	x19, x0
  1a296c: 52800068     	mov	w8, #0x3                // =3
  1a2970: 120002c1     	and	w1, w22, #0x1
  1a2974: 9101c3e2     	add	x2, sp, #0x70
  1a2978: aa1403e0     	mov	x0, x20
  1a297c: 52800023     	mov	w3, #0x1                // =1
  1a2980: f9005ff9     	str	x25, [sp, #0xb8]
  1a2984: 9101c3fc     	add	x28, sp, #0x70
  1a2988: f9004bfb     	str	x27, [sp, #0x90]
  1a298c: b900f3e8     	str	w8, [sp, #0xf0]
  1a2990: f90073ff     	str	xzr, [sp, #0xe0]
  1a2994: 97ffee0a     	bl	0x19e1bc <.text+0x18e1bc>
  1a2998: 35001780     	cbnz	w0, 0x1a2c88 <.text+0x192c88>
  1a299c: 910003e3     	mov	x3, sp
  1a29a0: 910223e4     	add	x4, sp, #0x88
  1a29a4: aa1703e0     	mov	x0, x23
  1a29a8: 2a1503e1     	mov	w1, w21
  1a29ac: 2a1603e2     	mov	w2, w22
  1a29b0: b9006bf8     	str	w24, [sp, #0x68]
  1a29b4: a905f3fb     	stp	x27, x28, [sp, #0x58]
  1a29b8: 910003f5     	mov	x21, sp
  1a29bc: 940004f3     	bl	0x1a3d88 <.text+0x193d88>
  1a29c0: 2a0003f9     	mov	w25, w0
  1a29c4: 34000260     	cbz	w0, 0x1a2a10 <.text+0x192a10>
  1a29c8: b4000073     	cbz	x19, 0x1a29d4 <.text+0x1929d4>
  1a29cc: aa1303e0     	mov	x0, x19
  1a29d0: 97ff9224     	bl	0x187260 <.text+0x177260>
  1a29d4: d5384108     	mrs	x8, SP_EL0
  1a29d8: f9431108     	ldr	x8, [x8, #0x620]
  1a29dc: f85f03a9     	ldur	x9, [x29, #-0x10]
  1a29e0: eb09011f     	cmp	x8, x9
  1a29e4: 540015a1     	b.ne	0x1a2c98 <.text+0x192c98>
  1a29e8: 2a1903e0     	mov	w0, w25
  1a29ec: a95b4ff4     	ldp	x20, x19, [sp, #0x1b0]
  1a29f0: a95a57f6     	ldp	x22, x21, [sp, #0x1a0]
  1a29f4: a9595ff8     	ldp	x24, x23, [sp, #0x190]
  1a29f8: a95867fa     	ldp	x26, x25, [sp, #0x180]
  1a29fc: a9576ffc     	ldp	x28, x27, [sp, #0x170]
  1a2a00: a9567bfd     	ldp	x29, x30, [sp, #0x160]
  1a2a04: 910703ff     	add	sp, sp, #0x1c0
  1a2a08: d50323bf     	autiasp
  1a2a0c: d65f03c0     	ret
  1a2a10: b100e2bf     	cmn	x21, #0x38
  1a2a14: 54000220     	b.eq	0x1a2a58 <.text+0x192a58>
  1a2a18: f94023e8     	ldr	x8, [sp, #0x40]
  1a2a1c: f9403fe9     	ldr	x9, [sp, #0x78]
  1a2a20: eb09011f     	cmp	x8, x9
  1a2a24: 540001a1     	b.ne	0x1a2a58 <.text+0x192a58>
  1a2a28: f9401fe8     	ldr	x8, [sp, #0x38]
  1a2a2c: f9403be9     	ldr	x9, [sp, #0x70]
  1a2a30: eb09011f     	cmp	x8, x9
  1a2a34: 54000121     	b.ne	0x1a2a58 <.text+0x192a58>
  1a2a38: b9404be8     	ldr	w8, [sp, #0x48]
  1a2a3c: b94083e9     	ldr	w9, [sp, #0x80]
  1a2a40: 6b09011f     	cmp	w8, w9
  1a2a44: 540000a1     	b.ne	0x1a2a58 <.text+0x192a58>
  1a2a48: f94047e0     	ldr	x0, [sp, #0x88]
  1a2a4c: 97fff092     	bl	0x19ec94 <.text+0x18ec94>
  1a2a50: 128002b9     	mov	w25, #-0x16             // =-22
  1a2a54: 17ffffdd     	b	0x1a29c8 <.text+0x1929c8>
  1a2a58: f94047e0     	ldr	x0, [sp, #0x88]
  1a2a5c: 910003e1     	mov	x1, sp
  1a2a60: aa1303e2     	mov	x2, x19
  1a2a64: 910003f5     	mov	x21, sp
  1a2a68: 940003a8     	bl	0x1a3908 <.text+0x193908>
  1a2a6c: 9101b2a8     	add	x8, x21, #0x6c
  1a2a70: 88dffd0a     	ldar	w10, [x8]
  1a2a74: 52800069     	mov	w9, #0x3                // =3
  1a2a78: 2a0a03e8     	mov	w8, w10
  1a2a7c: 71000d5f     	cmp	w10, #0x3
  1a2a80: 540004ec     	b.gt	0x1a2b1c <.text+0x192b1c>
  1a2a84: 7100011f     	cmp	w8, #0x0
  1a2a88: 1a9f152b     	csinc	w11, w9, wzr, ne
  1a2a8c: 14000007     	b	0x1a2aa8 <.text+0x192aa8>
  1a2a90: 2a0803ea     	mov	w10, w8
  1a2a94: 9101b2ac     	add	x12, x21, #0x6c
  1a2a98: 88eafd8b     	casal	w10, w11, [x12]
  1a2a9c: 6b08015f     	cmp	w10, w8
  1a2aa0: 540001a0     	b.eq	0x1a2ad4 <.text+0x192ad4>
  1a2aa4: 17fffff5     	b	0x1a2a78 <.text+0x192a78>
  1a2aa8: 2a0803ec     	mov	w12, w8
  1a2aac: 9101b2ad     	add	x13, x21, #0x6c
  1a2ab0: f98001b1     	prfm	pstl1strm, [x13]
  1a2ab4: 885f7daa     	ldxr	w10, [x13]
  1a2ab8: 4a0c014e     	eor	w14, w10, w12
  1a2abc: 3500008e     	cbnz	w14, 0x1a2acc <.text+0x192acc>
  1a2ac0: 880efdab     	stlxr	w14, w11, [x13]
  1a2ac4: 35ffff8e     	cbnz	w14, 0x1a2ab4 <.text+0x192ab4>
  1a2ac8: d5033bbf     	dmb	ish
  1a2acc: 6b08015f     	cmp	w10, w8
  1a2ad0: 54fffd41     	b.ne	0x1a2a78 <.text+0x192a78>
  1a2ad4: 7100091f     	cmp	w8, #0x2
  1a2ad8: 54000201     	b.ne	0x1a2b18 <.text+0x192b18>
  1a2adc: b9406fe8     	ldr	w8, [sp, #0x6c]
  1a2ae0: 71000d1f     	cmp	w8, #0x3
  1a2ae4: 540001a1     	b.ne	0x1a2b18 <.text+0x192b18>
  1a2ae8: 910003e8     	mov	x8, sp
  1a2aec: 52800069     	mov	w9, #0x3                // =3
  1a2af0: 9101b108     	add	x8, x8, #0x6c
  1a2af4: d50320bf     	sevl
  1a2af8: d503205f     	wfe
  1a2afc: 885f7d0a     	ldxr	w10, [x8]
  1a2b00: 4a09014a     	eor	w10, w10, w9
  1a2b04: 3500004a     	cbnz	w10, 0x1a2b0c <.text+0x192b0c>
  1a2b08: d503205f     	wfe
  1a2b0c: b9406fea     	ldr	w10, [sp, #0x6c]
  1a2b10: 71000d5f     	cmp	w10, #0x3
  1a2b14: 54ffff00     	b.eq	0x1a2af4 <.text+0x192af4>
  1a2b18: b9406fe8     	ldr	w8, [sp, #0x6c]
  1a2b1c: 7100151f     	cmp	w8, #0x5
  1a2b20: 54000280     	b.eq	0x1a2b70 <.text+0x192b70>
  1a2b24: 7100111f     	cmp	w8, #0x4
  1a2b28: 540004a1     	b.ne	0x1a2bbc <.text+0x192bbc>
  1a2b2c: f9402be8     	ldr	x8, [sp, #0x50]
  1a2b30: 910243e2     	add	x2, sp, #0x90
  1a2b34: aa1303e1     	mov	x1, x19
  1a2b38: 91004115     	add	x21, x8, #0x10
  1a2b3c: aa1503e0     	mov	x0, x21
  1a2b40: 943abe09     	bl	0x1052364 <.text+0x1042364>
  1a2b44: f9401be8     	ldr	x8, [sp, #0x30]
  1a2b48: 2a0003f6     	mov	w22, w0
  1a2b4c: aa0803e0     	mov	x0, x8
  1a2b50: 943ac666     	bl	0x10544e8 <.text+0x10444e8>
  1a2b54: 340006f6     	cbz	w22, 0x1a2c30 <.text+0x192c30>
  1a2b58: 910243e1     	add	x1, sp, #0x90
  1a2b5c: aa1503e0     	mov	x0, x21
  1a2b60: 943abeb5     	bl	0x1052634 <.text+0x1042634>
  1a2b64: 7200001f     	tst	w0, #0x1
  1a2b68: 1a9f12d5     	csel	w21, w22, wzr, ne
  1a2b6c: 14000032     	b	0x1a2c34 <.text+0x192c34>
  1a2b70: f9402be8     	ldr	x8, [sp, #0x50]
  1a2b74: b40005a8     	cbz	x8, 0x1a2c28 <.text+0x192c28>
  1a2b78: f9401908     	ldr	x8, [x8, #0x30]
  1a2b7c: eb1a011f     	cmp	x8, x26
  1a2b80: 54000540     	b.eq	0x1a2c28 <.text+0x192c28>
  1a2b84: f9401be0     	ldr	x0, [sp, #0x30]
  1a2b88: 943ac658     	bl	0x10544e8 <.text+0x10444e8>
  1a2b8c: 910003e1     	mov	x1, sp
  1a2b90: aa1403e0     	mov	x0, x20
  1a2b94: 52800022     	mov	w2, #0x1                // =1
  1a2b98: 97fff9ca     	bl	0x1a12c0 <.text+0x1912c0>
  1a2b9c: f9402be8     	ldr	x8, [sp, #0x50]
  1a2ba0: 2a0003f4     	mov	w20, w0
  1a2ba4: aa0803e0     	mov	x0, x8
  1a2ba8: 97fff7f2     	bl	0x1a0b70 <.text+0x190b70>
  1a2bac: f9401be0     	ldr	x0, [sp, #0x30]
  1a2bb0: 943ac6c0     	bl	0x10546b0 <.text+0x10446b0>
  1a2bb4: 0a947e99     	and	w25, w20, w20, asr #31
  1a2bb8: 17ffff84     	b	0x1a29c8 <.text+0x1929c8>
  1a2bbc: 7100051f     	cmp	w8, #0x1
  1a2bc0: 540006e1     	b.ne	0x1a2c9c <.text+0x192c9c>
  1a2bc4: f94047e8     	ldr	x8, [sp, #0x88]
  1a2bc8: 91001100     	add	x0, x8, #0x4
  1a2bcc: 943ac647     	bl	0x10544e8 <.text+0x10444e8>
  1a2bd0: f94047f4     	ldr	x20, [sp, #0x88]
  1a2bd4: f9401be8     	ldr	x8, [sp, #0x30]
  1a2bd8: 91001289     	add	x9, x20, #0x4
  1a2bdc: eb08013f     	cmp	x9, x8
  1a2be0: 54000581     	b.ne	0x1a2c90 <.text+0x192c90>
  1a2be4: 91002281     	add	x1, x20, #0x8
  1a2be8: 910003e0     	mov	x0, sp
  1a2bec: 943a2284     	bl	0x102b5fc <.text+0x101b5fc>
  1a2bf0: 1400002c     	b	0x1a2ca0 <.text+0x192ca0>
  1a2bf4: 12800008     	mov	w8, #-0x1               // =-1
  1a2bf8: b828029f     	stadd	w8, [x20]
  1a2bfc: b4000073     	cbz	x19, 0x1a2c08 <.text+0x192c08>
  1a2c00: f9402668     	ldr	x8, [x19, #0x48]
  1a2c04: b4000388     	cbz	x8, 0x1a2c74 <.text+0x192c74>
  1a2c08: f9400348     	ldr	x8, [x26]
  1a2c0c: 12804019     	mov	w25, #-0x201            // =-513
  1a2c10: 37300348     	tbnz	w8, #0x6, 0x1a2c78 <.text+0x192c78>
  1a2c14: f9400348     	ldr	x8, [x26]
  1a2c18: f240011f     	tst	x8, #0x1
  1a2c1c: 12800148     	mov	w8, #-0xb               // =-11
  1a2c20: 1a990119     	csel	w25, w8, w25, eq
  1a2c24: 14000015     	b	0x1a2c78 <.text+0x192c78>
  1a2c28: 2a1f03f9     	mov	w25, wzr
  1a2c2c: 17ffff67     	b	0x1a29c8 <.text+0x1929c8>
  1a2c30: 2a1f03f5     	mov	w21, wzr
  1a2c34: 710002bf     	cmp	w21, #0x0
  1a2c38: 910003e1     	mov	x1, sp
  1a2c3c: aa1403e0     	mov	x0, x20
  1a2c40: 1a9f17e2     	cset	w2, eq
  1a2c44: 97fff99f     	bl	0x1a12c0 <.text+0x1912c0>
  1a2c48: 0a807c08     	and	w8, w0, w0, asr #31
  1a2c4c: 7100001f     	cmp	w0, #0x0
  1a2c50: 910003e0     	mov	x0, sp
  1a2c54: 1a8802b4     	csel	w20, w21, w8, eq
  1a2c58: 97fff0a1     	bl	0x19eedc <.text+0x18eedc>
  1a2c5c: f9401be0     	ldr	x0, [sp, #0x30]
  1a2c60: 943ac694     	bl	0x10546b0 <.text+0x10446b0>
  1a2c64: 3100129f     	cmn	w20, #0x4
  1a2c68: 12800148     	mov	w8, #-0xb               // =-11
  1a2c6c: 1a940119     	csel	w25, w8, w20, eq
  1a2c70: 17ffff56     	b	0x1a29c8 <.text+0x1929c8>
  1a2c74: 12800db9     	mov	w25, #-0x6e             // =-110
  1a2c78: f94047e8     	ldr	x8, [sp, #0x88]
  1a2c7c: 91001100     	add	x0, x8, #0x4
  1a2c80: 943ac68c     	bl	0x10546b0 <.text+0x10446b0>
  1a2c84: 17ffff51     	b	0x1a29c8 <.text+0x1929c8>
  1a2c88: 2a0003f9     	mov	w25, w0
  1a2c8c: 17ffff4f     	b	0x1a29c8 <.text+0x1929c8>
  1a2c90: d4210000     	brk	#0x800
  1a2c94: 17ffffd4     	b	0x1a2be4 <.text+0x192be4>
  1a2c98: 943a8bd3     	bl	0x1045be4 <.text+0x1035be4>
  1a2c9c: d4210000     	brk	#0x800
  1a2ca0: 52800028     	mov	w8, #0x1                // =1
  1a2ca4: f9800291     	prfm	pstl1strm, [x20]
  1a2ca8: 885f7e89     	ldxr	w9, [x20]
  1a2cac: 4b080129     	sub	w9, w9, w8
  1a2cb0: 880a7e89     	stxr	w10, w9, [x20]
  1a2cb4: 35ffffaa     	cbnz	w10, 0x1a2ca8 <.text+0x192ca8>
  1a2cb8: b5fffa53     	cbnz	x19, 0x1a2c00 <.text+0x192c00>
  1a2cbc: 17ffffd3     	b	0x1a2c08 <.text+0x192c08>
  1a2cc0: 17fffe4d     	b	0x1a25f4 <.text+0x1925f4>
  1a2cc4: 17fffe5c     	b	0x1a2634 <.text+0x192634>
  1a2cc8: 85e3449b     	<unknown>
  1a2ccc: d503233f     	paciasp
  1a2cd0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
  1a2cd4: f9000bf5     	str	x21, [sp, #0x10]
  1a2cd8: a9024ff4     	stp	x20, x19, [sp, #0x20]
  1a2cdc: 910003fd     	mov	x29, sp
  1a2ce0: f9402828     	ldr	x8, [x1, #0x50]
  1a2ce4: b40000c8     	cbz	x8, 0x1a2cfc <.text+0x192cfc>
  1a2ce8: b000a040     	adrp	x0, 0x15ab000 <.text+0x159b000>
  1a2cec: 913f6400     	add	x0, x0, #0xfd9
  1a2cf0: 97fc2b3b     	bl	0xad9dc <.text+0x9d9dc>
  1a2cf4: d4210000     	brk	#0x800
  1a2cf8: 14000016     	b	0x1a2d50 <.text+0x192d50>
  1a2cfc: f9402c28     	ldr	x8, [x1, #0x58]
  1a2d00: aa0103f4     	mov	x20, x1
  1a2d04: b5ffff28     	cbnz	x8, 0x1a2ce8 <.text+0x192ce8>
  1a2d08: f9401695     	ldr	x21, [x20, #0x28]
  1a2d0c: aa0003f3     	mov	x19, x0
  1a2d10: 910102a0     	add	x0, x21, #0x40
  1a2d14: 14000016     	b	0x1a2d6c <.text+0x192d6c>
  1a2d18: 52800028     	mov	w8, #0x1                // =1
  1a2d1c: b8280008     	ldadd	w8, w8, [x0]
  1a2d20: 34000328     	cbz	w8, 0x1a2d84 <.text+0x192d84>
  1a2d24: 11000509     	add	w9, w8, #0x1
  1a2d28: 2a080128     	orr	w8, w9, w8
  1a2d2c: 37f801c8     	tbnz	w8, #0x1f, 0x1a2d64 <.text+0x192d64>
  1a2d30: aa1403e0     	mov	x0, x20
  1a2d34: 97ffef66     	bl	0x19eacc <.text+0x18eacc>
  1a2d38: aa1f03e8     	mov	x8, xzr
  1a2d3c: 9100c289     	add	x9, x20, #0x30
  1a2d40: c89ffd28     	stlr	x8, [x9]
  1a2d44: aa1303e0     	mov	x0, x19
  1a2d48: aa1503e1     	mov	x1, x21
  1a2d4c: 97fd2525     	bl	0xec1e0 <.text+0xdc1e0>
  1a2d50: a9424ff4     	ldp	x20, x19, [sp, #0x20]
  1a2d54: f9400bf5     	ldr	x21, [sp, #0x10]
  1a2d58: a8c37bfd     	ldp	x29, x30, [sp], #0x30
  1a2d5c: d50323bf     	autiasp
  1a2d60: d65f03c0     	ret
  1a2d64: 52800021     	mov	w1, #0x1                // =1
  1a2d68: 14000008     	b	0x1a2d88 <.text+0x192d88>
  1a2d6c: f9800011     	prfm	pstl1strm, [x0]
  1a2d70: 885f7c08     	ldxr	w8, [x0]
  1a2d74: 11000509     	add	w9, w8, #0x1
  1a2d78: 880a7c09     	stxr	w10, w9, [x0]
  1a2d7c: 35ffffaa     	cbnz	w10, 0x1a2d70 <.text+0x192d70>
  1a2d80: 35fffd28     	cbnz	w8, 0x1a2d24 <.text+0x192d24>
  1a2d84: 52800041     	mov	w1, #0x2                // =2
  1a2d88: 94159b6d     	bl	0x709b3c <.text+0x6f9b3c>
  1a2d8c: 17ffffe9     	b	0x1a2d30 <.text+0x192d30>
  1a2d90: 826c50c4     	<unknown>
  1a2d94: d503233f     	paciasp
  1a2d98: d10383ff     	sub	sp, sp, #0xe0
  1a2d9c: a9087bfd     	stp	x29, x30, [sp, #0x80]
  1a2da0: f9004bfb     	str	x27, [sp, #0x90]
  1a2da4: a90a67fa     	stp	x26, x25, [sp, #0xa0]
  1a2da8: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
  1a2dac: a90c57f6     	stp	x22, x21, [sp, #0xc0]
  1a2db0: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
  1a2db4: 910203fd     	add	x29, sp, #0x80
  1a2db8: d5384108     	mrs	x8, SP_EL0
  1a2dbc: 9100a3e9     	add	x9, sp, #0x28
  1a2dc0: f9431108     	ldr	x8, [x8, #0x620]
  1a2dc4: f81f83a8     	stur	x8, [x29, #-0x8]
  1a2dc8: 52800028     	mov	w8, #0x1                // =1
  1a2dcc: a93d7fbf     	stp	xzr, xzr, [x29, #-0x30]
  1a2dd0: f81c83bf     	stur	xzr, [x29, #-0x38]
  1a2dd4: a902a7e8     	stp	x8, x9, [sp, #0x28]
  1a2dd8: 34000be3     	cbz	w3, 0x1a2f54 <.text+0x192f54>
  1a2ddc: 2a0303f4     	mov	w20, w3
  1a2de0: 2a0203f3     	mov	w19, w2
  1a2de4: 12000021     	and	w1, w1, #0x1
  1a2de8: d100e3a2     	sub	x2, x29, #0x38
  1a2dec: 2a1f03e3     	mov	w3, wzr
  1a2df0: b81c43bf     	stur	wzr, [x29, #-0x3c]
  1a2df4: f9001fff     	str	xzr, [sp, #0x38]
  1a2df8: 97ffecf1     	bl	0x19e1bc <.text+0x18e1bc>
  1a2dfc: 35000e40     	cbnz	w0, 0x1a2fc4 <.text+0x192fc4>
  1a2e00: d100e3a0     	sub	x0, x29, #0x38
  1a2e04: 97ffec98     	bl	0x19e064 <.text+0x18e064>
  1a2e08: d5033bbf     	dmb	ish
  1a2e0c: b9400008     	ldr	w8, [x0]
  1a2e10: 34000a68     	cbz	w8, 0x1a2f5c <.text+0x192f5c>
  1a2e14: 91001016     	add	x22, x0, #0x4
  1a2e18: aa0003f5     	mov	x21, x0
  1a2e1c: aa1603e0     	mov	x0, x22
  1a2e20: 943ac5b2     	bl	0x10544e8 <.text+0x10444e8>
  1a2e24: a97ca7a8     	ldp	x8, x9, [x29, #-0x38]
  1a2e28: 910022b7     	add	x23, x21, #0x8
  1a2e2c: f85d83aa     	ldur	x10, [x29, #-0x28]
  1a2e30: a90127e8     	stp	x8, x9, [sp, #0x10]
  1a2e34: f90013ea     	str	x10, [sp, #0x20]
  1a2e38: d503201f     	nop
  1a2e3c: f94002e8     	ldr	x8, [x23]
  1a2e40: eb17011f     	cmp	x8, x23
  1a2e44: 54000900     	b.eq	0x1a2f64 <.text+0x192f64>
  1a2e48: 2a1f03f5     	mov	w21, wzr
  1a2e4c: 9000f7b8     	adrp	x24, 0x2096000
  1a2e50: 91002318     	add	x24, x24, #0x8
  1a2e54: 9000f959     	adrp	x25, 0x20ca000
  1a2e58: 91386339     	add	x25, x25, #0xe18
  1a2e5c: d538411a     	mrs	x26, SP_EL0
  1a2e60: 14000004     	b	0x1a2e70 <.text+0x192e70>
  1a2e64: eb17037f     	cmp	x27, x23
  1a2e68: aa1b03e8     	mov	x8, x27
  1a2e6c: 540007e0     	b.eq	0x1a2f68 <.text+0x192f68>
  1a2e70: aa0803e9     	mov	x9, x8
  1a2e74: f842053b     	ldr	x27, [x9], #0x20
  1a2e78: b4ffff69     	cbz	x9, 0x1a2e64 <.text+0x192e64>
  1a2e7c: f940150a     	ldr	x10, [x8, #0x28]
  1a2e80: f85d03ab     	ldur	x11, [x29, #-0x30]
  1a2e84: eb0b015f     	cmp	x10, x11
  1a2e88: 54fffee1     	b.ne	0x1a2e64 <.text+0x192e64>
  1a2e8c: f9400129     	ldr	x9, [x9]
  1a2e90: f85c83aa     	ldur	x10, [x29, #-0x38]
  1a2e94: eb0a013f     	cmp	x9, x10
  1a2e98: 54fffe61     	b.ne	0x1a2e64 <.text+0x192e64>
  1a2e9c: b9403109     	ldr	w9, [x8, #0x30]
  1a2ea0: b85d83aa     	ldur	w10, [x29, #-0x28]
  1a2ea4: 6b0a013f     	cmp	w9, w10
  1a2ea8: 54fffde1     	b.ne	0x1a2e64 <.text+0x192e64>
  1a2eac: f9401d09     	ldr	x9, [x8, #0x38]
  1a2eb0: b5000869     	cbnz	x9, 0x1a2fbc <.text+0x192fbc>
  1a2eb4: f9402109     	ldr	x9, [x8, #0x40]
  1a2eb8: b5000829     	cbnz	x9, 0x1a2fbc <.text+0x192fbc>
  1a2ebc: b9405109     	ldr	w9, [x8, #0x50]
  1a2ec0: 6a14013f     	tst	w9, w20
  1a2ec4: 54fffd00     	b.eq	0x1a2e64 <.text+0x192e64>
  1a2ec8: b85c43a3     	ldur	w3, [x29, #-0x3c]
  1a2ecc: f9400904     	ldr	x4, [x8, #0x10]
  1a2ed0: d503201f     	nop
  1a2ed4: d1006101     	sub	x1, x8, #0x18
  1a2ed8: 9100a3e0     	add	x0, sp, #0x28
  1a2edc: 97ffff7c     	bl	0x1a2ccc <.text+0x192ccc>
  1a2ee0: 110006b5     	add	w21, w21, #0x1
  1a2ee4: 6b1302bf     	cmp	w21, w19
  1a2ee8: 54fffbeb     	b.lt	0x1a2e64 <.text+0x192e64>
  1a2eec: 1400001f     	b	0x1a2f68 <.text+0x192f68>
  1a2ef0: d538d089     	mrs	x9, TPIDR_EL1
  1a2ef4: b8786929     	ldr	w9, [x9, x24]
  1a2ef8: d343fd2a     	lsr	x10, x9, #3
  1a2efc: 927d654a     	and	x10, x10, #0x1ffffff8
  1a2f00: f86a6b2a     	ldr	x10, [x25, x10]
  1a2f04: 9ac92549     	lsr	x9, x10, x9
  1a2f08: 3607fe69     	tbz	w9, #0x0, 0x1a2ed4 <.text+0x192ed4>
  1a2f0c: b9401349     	ldr	w9, [x26, #0x10]
  1a2f10: aa1f03e0     	mov	x0, xzr
  1a2f14: 2a1503e1     	mov	w1, w21
  1a2f18: 2a1303e2     	mov	w2, w19
  1a2f1c: 11000529     	add	w9, w9, #0x1
  1a2f20: b9001349     	str	w9, [x26, #0x10]
  1a2f24: f90007e8     	str	x8, [sp, #0x8]
  1a2f28: 942cc472     	bl	0xcd40f0 <.text+0xcc40f0>
  1a2f2c: f94007e8     	ldr	x8, [sp, #0x8]
  1a2f30: f9400b49     	ldr	x9, [x26, #0x10]
  1a2f34: f1000529     	subs	x9, x9, #0x1
  1a2f38: b9001349     	str	w9, [x26, #0x10]
  1a2f3c: 54000060     	b.eq	0x1a2f48 <.text+0x192f48>
  1a2f40: f9400b49     	ldr	x9, [x26, #0x10]
  1a2f44: b5fffc89     	cbnz	x9, 0x1a2ed4 <.text+0x192ed4>
  1a2f48: 943aa03c     	bl	0x104b038 <.text+0x103b038>
  1a2f4c: f94007e8     	ldr	x8, [sp, #0x8]
  1a2f50: 17ffffe1     	b	0x1a2ed4 <.text+0x192ed4>
  1a2f54: 128002b5     	mov	w21, #-0x16             // =-22
  1a2f58: 1400000a     	b	0x1a2f80 <.text+0x192f80>
  1a2f5c: 2a1f03f5     	mov	w21, wzr
  1a2f60: 14000008     	b	0x1a2f80 <.text+0x192f80>
  1a2f64: 2a1f03f5     	mov	w21, wzr
  1a2f68: aa1603e0     	mov	x0, x22
  1a2f6c: 943ac5d1     	bl	0x10546b0 <.text+0x10446b0>
  1a2f70: 9100a3e0     	add	x0, sp, #0x28
  1a2f74: 97fd24cf     	bl	0xec2b0 <.text+0xdc2b0>
  1a2f78: b85c43a2     	ldur	w2, [x29, #-0x3c]
  1a2f7c: d503201f     	nop
  1a2f80: d5384108     	mrs	x8, SP_EL0
  1a2f84: f9431108     	ldr	x8, [x8, #0x620]
  1a2f88: f85f83a9     	ldur	x9, [x29, #-0x8]
  1a2f8c: eb09011f     	cmp	x8, x9
  1a2f90: 540001e1     	b.ne	0x1a2fcc <.text+0x192fcc>
  1a2f94: 2a1503e0     	mov	w0, w21
  1a2f98: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
  1a2f9c: f9404bfb     	ldr	x27, [sp, #0x90]
  1a2fa0: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
  1a2fa4: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
  1a2fa8: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
  1a2fac: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  1a2fb0: 910383ff     	add	sp, sp, #0xe0
  1a2fb4: d50323bf     	autiasp
  1a2fb8: d65f03c0     	ret
  1a2fbc: 128002b5     	mov	w21, #-0x16             // =-22
  1a2fc0: 17ffffea     	b	0x1a2f68 <.text+0x192f68>
  1a2fc4: 2a0003f5     	mov	w21, w0
  1a2fc8: 17ffffee     	b	0x1a2f80 <.text+0x192f80>
  1a2fcc: 943a8b06     	bl	0x1045be4 <.text+0x1035be4>
  1a2fd0: d538d088     	mrs	x8, TPIDR_EL1
  1a2fd4: 9000f7a9     	adrp	x9, 0x2096000
  1a2fd8: 91002129     	add	x9, x9, #0x8
  1a2fdc: b8696908     	ldr	w8, [x8, x9]
  1a2fe0: 9000f94a     	adrp	x10, 0x20ca000
  1a2fe4: 9138614a     	add	x10, x10, #0xe18
  1a2fe8: d343fd09     	lsr	x9, x8, #3
  1a2fec: 927d6529     	and	x9, x9, #0x1ffffff8
  1a2ff0: f8696949     	ldr	x9, [x10, x9]
  1a2ff4: 9ac82528     	lsr	x8, x9, x8
  1a2ff8: 3607f228     	tbz	w8, #0x0, 0x1a2e3c <.text+0x192e3c>
  1a2ffc: d5384115     	mrs	x21, SP_EL0
  1a3000: b94012a8     	ldr	w8, [x21, #0x10]
  1a3004: d100f3a2     	sub	x2, x29, #0x3c
  1a3008: d10083a3     	sub	x3, x29, #0x20
  1a300c: aa1f03e0     	mov	x0, xzr
  1a3010: aa1703e1     	mov	x1, x23
  1a3014: 11000508     	add	w8, w8, #0x1
  1a3018: 2a1403e4     	mov	w4, w20
  1a301c: b90012a8     	str	w8, [x21, #0x10]
  1a3020: a94127e8     	ldp	x8, x9, [sp, #0x10]
  1a3024: f94013ea     	ldr	x10, [sp, #0x20]
  1a3028: f81f03aa     	stur	x10, [x29, #-0x10]
  1a302c: a93e27a8     	stp	x8, x9, [x29, #-0x20]
  1a3030: 942cc3fb     	bl	0xcd401c <.text+0xcc401c>
  1a3034: f9400aa8     	ldr	x8, [x21, #0x10]
  1a3038: f1000508     	subs	x8, x8, #0x1
  1a303c: b90012a8     	str	w8, [x21, #0x10]
  1a3040: 54000060     	b.eq	0x1a304c <.text+0x19304c>
  1a3044: f9400aa8     	ldr	x8, [x21, #0x10]
  1a3048: b5ffefa8     	cbnz	x8, 0x1a2e3c <.text+0x192e3c>
  1a304c: 943a9ffb     	bl	0x104b038 <.text+0x103b038>
  1a3050: 17ffff7b     	b	0x1a2e3c <.text+0x192e3c>
  1a3054: d538d088     	mrs	x8, TPIDR_EL1
  1a3058: f000f789     	adrp	x9, 0x2096000
  1a305c: 91002129     	add	x9, x9, #0x8
  1a3060: b8696908     	ldr	w8, [x8, x9]
  1a3064: f000f92a     	adrp	x10, 0x20ca000
  1a3068: 9138614a     	add	x10, x10, #0xe18
  1a306c: d343fd09     	lsr	x9, x8, #3
  1a3070: 927d6529     	and	x9, x9, #0x1ffffff8
  1a3074: f8696949     	ldr	x9, [x10, x9]
  1a3078: 9ac82528     	lsr	x8, x9, x8
  1a307c: 3607f828     	tbz	w8, #0x0, 0x1a2f80 <.text+0x192f80>
  1a3080: d5384114     	mrs	x20, SP_EL0
  1a3084: b9401288     	ldr	w8, [x20, #0x10]
  1a3088: aa1f03e0     	mov	x0, xzr
  1a308c: 2a1303e1     	mov	w1, w19
