// __arm64_sys_futex @ 0xffffffe1a59a0150 (file offset 0x1a0150, size 0x200)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
  1a0150: d503233f     	paciasp
  1a0154: d101c3ff     	sub	sp, sp, #0x70
  1a0158: a9027bfd     	stp	x29, x30, [sp, #0x20]
  1a015c: a90367fa     	stp	x26, x25, [sp, #0x30]
  1a0160: a9045ff8     	stp	x24, x23, [sp, #0x40]
  1a0164: a90557f6     	stp	x22, x21, [sp, #0x50]
  1a0168: a9064ff4     	stp	x20, x19, [sp, #0x60]
  1a016c: 910083fd     	add	x29, sp, #0x20
  1a0170: d5384108     	mrs	x8, SP_EL0
  1a0174: f9431108     	ldr	x8, [x8, #0x620]
  1a0178: f81f83a8     	stur	x8, [x29, #-0x8]
  1a017c: a941e016     	ldp	x22, x24, [x0, #0x18]
  1a0180: f9400014     	ldr	x20, [x0]
  1a0184: b9400813     	ldr	w19, [x0, #0x8]
  1a0188: b9401015     	ldr	w21, [x0, #0x10]
  1a018c: b9402817     	ldr	w23, [x0, #0x28]
  1a0190: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  1a0194: f90003ff     	str	xzr, [sp]
  1a0198: b4000216     	cbz	x22, 0x1a01d8 <.text+0x1901d8>
  1a019c: 1217767a     	and	w26, w19, #0xfffffe7f
  1a01a0: aa1f03e3     	mov	x3, xzr
  1a01a4: 7100375f     	cmp	w26, #0xd
  1a01a8: 540001a8     	b.hi	0x1a01dc <.text+0x1901dc>
  1a01ac: 52800028     	mov	w8, #0x1                // =1
  1a01b0: 52854829     	mov	w9, #0x2a41             // =10817
  1a01b4: 1ada2108     	lsl	w8, w8, w26
  1a01b8: 6a09011f     	tst	w8, w9
  1a01bc: 54000100     	b.eq	0x1a01dc <.text+0x1901dc>
  1a01c0: 910003e0     	mov	x0, sp
  1a01c4: aa1603e1     	mov	x1, x22
  1a01c8: 97ff8714     	bl	0x181e18 <.text+0x171e18>
  1a01cc: 34000300     	cbz	w0, 0x1a022c <.text+0x19022c>
  1a01d0: 928001a0     	mov	x0, #-0xe               // =-14
  1a01d4: 14000009     	b	0x1a01f8 <.text+0x1901f8>
  1a01d8: aa1f03e3     	mov	x3, xzr
  1a01dc: aa1403e0     	mov	x0, x20
  1a01e0: 2a1303e1     	mov	w1, w19
  1a01e4: 2a1503e2     	mov	w2, w21
  1a01e8: aa1803e4     	mov	x4, x24
  1a01ec: 2a1603e5     	mov	w5, w22
  1a01f0: 2a1703e6     	mov	w6, w23
  1a01f4: 97ffff38     	bl	0x19fed4 <.text+0x18fed4>
  1a01f8: d5384108     	mrs	x8, SP_EL0
  1a01fc: f9431108     	ldr	x8, [x8, #0x620]
  1a0200: f85f83a9     	ldur	x9, [x29, #-0x8]
  1a0204: eb09011f     	cmp	x8, x9
  1a0208: 54000661     	b.ne	0x1a02d4 <.text+0x1902d4>
  1a020c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
  1a0210: a94557f6     	ldp	x22, x21, [sp, #0x50]
  1a0214: a9445ff8     	ldp	x24, x23, [sp, #0x40]
  1a0218: a94367fa     	ldp	x26, x25, [sp, #0x30]
  1a021c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  1a0220: 9101c3ff     	add	sp, sp, #0x70
  1a0224: d50323bf     	autiasp
  1a0228: d65f03c0     	ret
  1a022c: f94003e8     	ldr	x8, [sp]
  1a0230: 928002a0     	mov	x0, #-0x16              // =-22
  1a0234: b7fffe28     	tbnz	x8, #0x3f, 0x1a01f8 <.text+0x1901f8>
  1a0238: f94007e9     	ldr	x9, [sp, #0x8]
  1a023c: 5299400a     	mov	w10, #0xca00            // =51712
  1a0240: 72a7734a     	movk	w10, #0x3b9a, lsl #16
  1a0244: eb0a013f     	cmp	x9, x10
  1a0248: 54fffd82     	b.hs	0x1a01f8 <.text+0x1901f8>
  1a024c: 9b0a2509     	madd	x9, x8, x10, x9
  1a0250: d28fa06a     	mov	x10, #0x7d03            // =32003
  1a0254: f2a4b82a     	movk	x10, #0x25c1, lsl #16
  1a0258: f2c0004a     	movk	x10, #0x2, lsl #32
  1a025c: eb0a011f     	cmp	x8, x10
  1a0260: 92f00008     	mov	x8, #0x7fffffffffffffff // =9223372036854775807
  1a0264: 9a898119     	csel	x25, x8, x9, hi
  1a0268: 71001b5f     	cmp	w26, #0x6
  1a026c: f9000bf9     	str	x25, [sp, #0x10]
  1a0270: 54000220     	b.eq	0x1a02b4 <.text+0x1902b4>
  1a0274: 350000fa     	cbnz	w26, 0x1a0290 <.text+0x190290>
  1a0278: 97ffa4fc     	bl	0x189668 <.text+0x179668>
  1a027c: aa1903e1     	mov	x1, x25
  1a0280: 97ff995c     	bl	0x1867f0 <.text+0x1767f0>
  1a0284: 910043e3     	add	x3, sp, #0x10
  1a0288: f9000be0     	str	x0, [sp, #0x10]
  1a028c: 17ffffd4     	b	0x1a01dc <.text+0x1901dc>
  1a0290: 37400133     	tbnz	w19, #0x8, 0x1a02b4 <.text+0x1902b4>
  1a0294: d5384108     	mrs	x8, SP_EL0
  1a0298: f000fe69     	adrp	x9, 0x216f000
  1a029c: 912c2129     	add	x9, x9, #0xb08
  1a02a0: f9443908     	ldr	x8, [x8, #0x870]
  1a02a4: f9401908     	ldr	x8, [x8, #0x30]
  1a02a8: eb09011f     	cmp	x8, x9
  1a02ac: 54000081     	b.ne	0x1a02bc <.text+0x1902bc>
  1a02b0: f9000bf9     	str	x25, [sp, #0x10]
  1a02b4: 910043e3     	add	x3, sp, #0x10
  1a02b8: 17ffffc9     	b	0x1a01dc <.text+0x1901dc>
  1a02bc: 9100a102     	add	x2, x8, #0x28
  1a02c0: 52800020     	mov	w0, #0x1                // =1
  1a02c4: aa1903e1     	mov	x1, x25
  1a02c8: 97fff3ff     	bl	0x19d2c4 <.text+0x18d2c4>
  1a02cc: aa0003f9     	mov	x25, x0
  1a02d0: 17fffff8     	b	0x1a02b0 <.text+0x1902b0>
  1a02d4: 943a9644     	bl	0x1045be4 <.text+0x1035be4>
  1a02d8: b02b34d9     	adrp	x25, 0x56839000
  1a02dc: d503233f     	paciasp
  1a02e0: d10403ff     	sub	sp, sp, #0x100
  1a02e4: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
  1a02e8: a90b6ffc     	stp	x28, x27, [sp, #0xb0]
  1a02ec: a90c67fa     	stp	x26, x25, [sp, #0xc0]
  1a02f0: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
  1a02f4: a90e57f6     	stp	x22, x21, [sp, #0xe0]
  1a02f8: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
  1a02fc: 910283fd     	add	x29, sp, #0xa0
  1a0300: d5384108     	mrs	x8, SP_EL0
  1a0304: f9431108     	ldr	x8, [x8, #0x620]
  1a0308: f81f83a8     	stur	x8, [x29, #-0x8]
  1a030c: b9401008     	ldr	w8, [x0, #0x10]
  1a0310: 34000228     	cbz	w8, 0x1a0354 <.text+0x190354>
  1a0314: 928002b5     	mov	x21, #-0x16             // =-22
  1a0318: d5384108     	mrs	x8, SP_EL0
  1a031c: f9431108     	ldr	x8, [x8, #0x620]
  1a0320: f85f83a9     	ldur	x9, [x29, #-0x8]
  1a0324: eb09011f     	cmp	x8, x9
  1a0328: 54001981     	b.ne	0x1a0658 <.text+0x190658>
  1a032c: aa1503e0     	mov	x0, x21
  1a0330: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
  1a0334: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
  1a0338: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
  1a033c: a94c67fa     	ldp	x26, x25, [sp, #0xc0]
  1a0340: a94b6ffc     	ldp	x28, x27, [sp, #0xb0]
  1a0344: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
  1a0348: 910403ff     	add	sp, sp, #0x100
  1a034c: d50323bf     	autiasp
