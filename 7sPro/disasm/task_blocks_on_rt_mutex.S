// task_blocks_on_rt_mutex @ 0xffffffe1a6051c08 (file offset 0x851c08, size 0x200)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
  851c08: f9403a6a     	ldr	x10, [x19, #0x70]
  851c0c: 51000508     	sub	w8, w8, #0x1
  851c10: 0a090108     	and	w8, w8, w9
  851c14: 8b282d48     	add	x8, x10, w8, uxth #3
  851c18: 2940a503     	ldp	w3, w9, [x8, #0x4]
  851c1c: b9000029     	str	w9, [x1]
  851c20: b9405a68     	ldr	w8, [x19, #0x58]
  851c24: 6b08007f     	cmp	w3, w8
  851c28: 540005a2     	b.hs	0x851cdc <.text+0x841cdc>
  851c2c: f9404268     	ldr	x8, [x19, #0x80]
  851c30: d37cec69     	lsl	x9, x3, #4
  851c34: f8696914     	ldr	x20, [x8, x9]
  851c38: b4000614     	cbz	x20, 0x851cf8 <.text+0x841cf8>
  851c3c: aa1303e0     	mov	x0, x19
  851c40: 2a0303e1     	mov	w1, w3
  851c44: 940007f5     	bl	0x853c18 <.text+0x843c18>
  851c48: 7940a268     	ldrh	w8, [x19, #0x50]
  851c4c: 7940f269     	ldrh	w9, [x19, #0x78]
  851c50: 11000508     	add	w8, w8, #0x1
  851c54: 7900a268     	strh	w8, [x19, #0x50]
  851c58: 37000189     	tbnz	w9, #0x0, 0x851c88 <.text+0x841c88>
  851c5c: f9403669     	ldr	x9, [x19, #0x68]
  851c60: b9405a6a     	ldr	w10, [x19, #0x58]
  851c64: 39410a6b     	ldrb	w11, [x19, #0x42]
  851c68: 8b0a0529     	add	x9, x9, x10, lsl #1
  851c6c: 79000928     	strh	w8, [x9, #0x4]
  851c70: 340000ab     	cbz	w11, 0x851c84 <.text+0x841c84>
  851c74: d5033bbf     	dmb	ish
  851c78: 14000004     	b	0x851c88 <.text+0x841c88>
  851c7c: d5033f9f     	dsb	sy
  851c80: 14000002     	b	0x851c88 <.text+0x841c88>
  851c84: d5033f9f     	dsb	sy
  851c88: aa1403e0     	mov	x0, x20
  851c8c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
  851c90: f9400bf7     	ldr	x23, [sp, #0x10]
  851c94: a94257f6     	ldp	x22, x21, [sp, #0x20]
  851c98: a8c47bfd     	ldp	x29, x30, [sp], #0x40
  851c9c: d50323bf     	autiasp
  851ca0: d65f03c0     	ret
  851ca4: a941a262     	ldp	x2, x8, [x19, #0x18]
  851ca8: d00068e1     	adrp	x1, 0x156f000 <.text+0x155f000>
  851cac: 9116bc21     	add	x1, x1, #0x5af
  851cb0: 2a1503e3     	mov	w3, w21
  851cb4: 1400000d     	b	0x851ce8 <.text+0x841ce8>
  851cb8: a941a262     	ldp	x2, x8, [x19, #0x18]
  851cbc: b0006b21     	adrp	x1, 0x15b6000 <.text+0x15a6000>
  851cc0: 913b9821     	add	x1, x1, #0xee6
  851cc4: 2a1503e3     	mov	w3, w21
  851cc8: 1400000f     	b	0x851d04 <.text+0x841d04>
  851ccc: 710002df     	cmp	w22, #0x0
  851cd0: 4b0a0108     	sub	w8, w8, w10
  851cd4: 1a9fb7e9     	cset	w9, ge
  851cd8: 17ffffbb     	b	0x851bc4 <.text+0x841bc4>
  851cdc: a941a262     	ldp	x2, x8, [x19, #0x18]
  851ce0: d00068e1     	adrp	x1, 0x156f000 <.text+0x155f000>
  851ce4: 9116bc21     	add	x1, x1, #0x5af
  851ce8: 91004100     	add	x0, x8, #0x10
  851cec: 941fc553     	bl	0x1043238 <.text+0x1033238>
  851cf0: aa1f03f4     	mov	x20, xzr
  851cf4: 14000006     	b	0x851d0c <.text+0x841d0c>
  851cf8: a941a262     	ldp	x2, x8, [x19, #0x18]
  851cfc: b0006b21     	adrp	x1, 0x15b6000 <.text+0x15a6000>
  851d00: 913b9821     	add	x1, x1, #0xee6
  851d04: 91004100     	add	x0, x8, #0x10
  851d08: 941fc54c     	bl	0x1043238 <.text+0x1033238>
  851d0c: 52800028     	mov	w8, #0x1                // =1
  851d10: 39010e68     	strb	w8, [x19, #0x43]
  851d14: 17ffffdd     	b	0x851c88 <.text+0x841c88>
  851d18: 9fc9153b     	<unknown>
  851d1c: d503233f     	paciasp
  851d20: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  851d24: 910003fd     	mov	x29, sp
  851d28: aa1f03e2     	mov	x2, xzr
  851d2c: 97ffff65     	bl	0x851ac0 <.text+0x841ac0>
  851d30: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  851d34: d50323bf     	autiasp
  851d38: d65f03c0     	ret
  851d3c: 84f526f8     	ldff1sh	{ z24.s }, p1/z, [x23, z21.s, sxtw #1]
  851d40: 39410008     	ldrb	w8, [x0, #0x40]
  851d44: 34000128     	cbz	w8, 0x851d68 <.text+0x841d68>
  851d48: 7940fc08     	ldrh	w8, [x0, #0x7e]
  851d4c: 7100051f     	cmp	w8, #0x1
  851d50: 540000a0     	b.eq	0x851d64 <.text+0x841d64>
  851d54: 39414809     	ldrb	w9, [x0, #0x52]
  851d58: 52800028     	mov	w8, #0x1                // =1
  851d5c: 7900fc08     	strh	w8, [x0, #0x7e]
  851d60: 340001e9     	cbz	w9, 0x851d9c <.text+0x841d9c>
  851d64: d65f03c0     	ret
  851d68: 7940f008     	ldrh	w8, [x0, #0x78]
  851d6c: 3707ffc8     	tbnz	w8, #0x0, 0x851d64 <.text+0x841d64>
  851d70: 39414809     	ldrb	w9, [x0, #0x52]
  851d74: 32000108     	orr	w8, w8, #0x1
  851d78: 7900f008     	strh	w8, [x0, #0x78]
  851d7c: 35ffff49     	cbnz	w9, 0x851d64 <.text+0x841d64>
  851d80: 3941140a     	ldrb	w10, [x0, #0x45]
  851d84: f9403409     	ldr	x9, [x0, #0x68]
  851d88: 3400010a     	cbz	w10, 0x851da8 <.text+0x841da8>
  851d8c: b9405808     	ldr	w8, [x0, #0x58]
  851d90: 8b080528     	add	x8, x9, x8, lsl #1
  851d94: 7900091f     	strh	wzr, [x8, #0x4]
  851d98: d65f03c0     	ret
  851d9c: f9403409     	ldr	x9, [x0, #0x68]
  851da0: 79000528     	strh	w8, [x9, #0x2]
  851da4: d65f03c0     	ret
  851da8: 79000128     	strh	w8, [x9]
  851dac: d65f03c0     	ret
  851db0: 5babfac0     	<unknown>
  851db4: 39414808     	ldrb	w8, [x0, #0x52]
  851db8: 34000048     	cbz	w8, 0x851dc0 <.text+0x841dc0>
  851dbc: 3901481f     	strb	wzr, [x0, #0x52]
  851dc0: 39410008     	ldrb	w8, [x0, #0x40]
  851dc4: 34000148     	cbz	w8, 0x851dec <.text+0x841dec>
  851dc8: 39411408     	ldrb	w8, [x0, #0x45]
  851dcc: 340002e8     	cbz	w8, 0x851e28 <.text+0x841e28>
  851dd0: 7940a008     	ldrh	w8, [x0, #0x50]
  851dd4: f9403409     	ldr	x9, [x0, #0x68]
  851dd8: 79000128     	strh	w8, [x9]
  851ddc: 39410808     	ldrb	w8, [x0, #0x42]
  851de0: 34000228     	cbz	w8, 0x851e24 <.text+0x841e24>
  851de4: d5033abf     	dmb	ishst
  851de8: 14000010     	b	0x851e28 <.text+0x841e28>
  851dec: 7940f008     	ldrh	w8, [x0, #0x78]
  851df0: 360000e8     	tbz	w8, #0x0, 0x851e0c <.text+0x841e0c>
  851df4: 39411409     	ldrb	w9, [x0, #0x45]
  851df8: 121f3908     	and	w8, w8, #0xfffe
  851dfc: 7900f008     	strh	w8, [x0, #0x78]
  851e00: 35000069     	cbnz	w9, 0x851e0c <.text+0x841e0c>
  851e04: f9403409     	ldr	x9, [x0, #0x68]
