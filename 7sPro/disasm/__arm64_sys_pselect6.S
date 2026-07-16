// __arm64_sys_pselect6 @ 0xffffffe1a5be0a4c (file offset 0x3e0a4c, size 0x200)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
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
