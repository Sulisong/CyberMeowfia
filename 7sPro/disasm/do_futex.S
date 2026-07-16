// do_futex @ 0xffffffe1a599fed4 (file offset 0x19fed4, size 0x300)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
  19fed4: d503233f     	paciasp
  19fed8: d10183ff     	sub	sp, sp, #0x60
  19fedc: a9047bfd     	stp	x29, x30, [sp, #0x40]
  19fee0: f9002bf3     	str	x19, [sp, #0x50]
  19fee4: 910103fd     	add	x29, sp, #0x40
  19fee8: d538410c     	mrs	x12, SP_EL0
  19feec: 5280002b     	mov	w11, #0x1               // =1
  19fef0: 2a0503e9     	mov	w9, w5
  19fef4: f943118c     	ldr	x12, [x12, #0x620]
  19fef8: 0a611d6b     	bic	w11, w11, w1, lsr #7
  19fefc: aa0403e8     	mov	x8, x4
  19ff00: aa0303ea     	mov	x10, x3
  19ff04: 2a0203e3     	mov	w3, w2
  19ff08: f81f83ac     	stur	x12, [x29, #-0x8]
  19ff0c: 1217742c     	and	w12, w1, #0xfffffe7f
  19ff10: 293e1bab     	stp	w11, w6, [x29, #-0x10]
  19ff14: 37400261     	tbnz	w1, #0x8, 0x19ff60 <.text+0x18ff60>
  19ff18: d503201f     	nop
  19ff1c: 7100359f     	cmp	w12, #0xd
  19ff20: 928004ab     	mov	x11, #-0x26             // =-38
  19ff24: 54000a68     	b.hi	0x1a0070 <.text+0x190070>
  19ff28: 90007c2d     	adrp	x13, 0x1123000 <.text+0x1113000>
  19ff2c: 910101ad     	add	x13, x13, #0x40
  19ff30: 1000000e     	adr	x14, 0x19ff30 <.text+0x18ff30>
  19ff34: b8ac79af     	ldrsw	x15, [x13, x12, lsl #2]
  19ff38: 8b0f01ce     	add	x14, x14, x15
  19ff3c: d61f01c0     	br	x14
  19ff40: 12800006     	mov	w6, #-0x1               // =-1
  19ff44: b81f43a6     	stur	w6, [x29, #-0xc]
  19ff48: b85f03a1     	ldur	w1, [x29, #-0x10]
  19ff4c: 2a0303e2     	mov	w2, w3
  19ff50: aa0a03e3     	mov	x3, x10
  19ff54: 2a0603e4     	mov	w4, w6
  19ff58: 94000ffe     	bl	0x1a3f50 <.text+0x193f50>
  19ff5c: 14000044     	b	0x1a006c <.text+0x19006c>
  19ff60: 1280304d     	mov	w13, #-0x183            // =-387
  19ff64: 321f016b     	orr	w11, w11, #0x2
  19ff68: 0a0d002d     	and	w13, w1, w13
  19ff6c: b81f03ab     	stur	w11, [x29, #-0x10]
  19ff70: 710025bf     	cmp	w13, #0x9
  19ff74: 54fffd20     	b.eq	0x19ff18 <.text+0x18ff18>
  19ff78: 7100359f     	cmp	w12, #0xd
  19ff7c: 54fffce0     	b.eq	0x19ff18 <.text+0x18ff18>
  19ff80: 928004ab     	mov	x11, #-0x26             // =-38
  19ff84: 1400003b     	b	0x1a0070 <.text+0x190070>
  19ff88: b85f03a1     	ldur	w1, [x29, #-0x10]
  19ff8c: 12800009     	mov	w9, #-0x1               // =-1
  19ff90: 2a0303e2     	mov	w2, w3
  19ff94: aa0a03e3     	mov	x3, x10
  19ff98: 12800004     	mov	w4, #-0x1               // =-1
  19ff9c: aa0803e5     	mov	x5, x8
  19ffa0: b81f43a9     	stur	w9, [x29, #-0xc]
  19ffa4: 94000a3b     	bl	0x1a2890 <.text+0x192890>
  19ffa8: 14000031     	b	0x1a006c <.text+0x19006c>
  19ffac: b85f03a1     	ldur	w1, [x29, #-0x10]
  19ffb0: aa0803e2     	mov	x2, x8
  19ffb4: 2a0903e4     	mov	w4, w9
  19ffb8: aa1f03e5     	mov	x5, xzr
  19ffbc: 2a1f03e6     	mov	w6, wzr
  19ffc0: 1400000e     	b	0x19fff8 <.text+0x18fff8>
  19ffc4: b85f03a1     	ldur	w1, [x29, #-0x10]
  19ffc8: 1400001e     	b	0x1a0040 <.text+0x190040>
  19ffcc: b85f03a1     	ldur	w1, [x29, #-0x10]
  19ffd0: d10033a5     	sub	x5, x29, #0xc
  19ffd4: aa0803e2     	mov	x2, x8
  19ffd8: 2a0903e4     	mov	w4, w9
  19ffdc: 2a1f03e6     	mov	w6, wzr
  19ffe0: 14000006     	b	0x19fff8 <.text+0x18fff8>
  19ffe4: b85f03a1     	ldur	w1, [x29, #-0x10]
  19ffe8: d10033a5     	sub	x5, x29, #0xc
  19ffec: aa0803e2     	mov	x2, x8
  19fff0: 2a0903e4     	mov	w4, w9
  19fff4: 52800026     	mov	w6, #0x1                // =1
  19fff8: 94000793     	bl	0x1a1e44 <.text+0x191e44>
  19fffc: 1400001c     	b	0x1a006c <.text+0x19006c>
  1a0000: 12800006     	mov	w6, #-0x1               // =-1
  1a0004: b81f43a6     	stur	w6, [x29, #-0xc]
  1a0008: b85f03a1     	ldur	w1, [x29, #-0x10]
  1a000c: 2a0303e2     	mov	w2, w3
  1a0010: 2a0603e3     	mov	w3, w6
  1a0014: 94000b60     	bl	0x1a2d94 <.text+0x192d94>
  1a0018: 14000015     	b	0x1a006c <.text+0x19006c>
  1a001c: b85f03a1     	ldur	w1, [x29, #-0x10]
  1a0020: aa0803e2     	mov	x2, x8
  1a0024: 2a0903e4     	mov	w4, w9
  1a0028: 2a0603e5     	mov	w5, w6
  1a002c: 94000c25     	bl	0x1a30c0 <.text+0x1930c0>
  1a0030: 1400000f     	b	0x1a006c <.text+0x19006c>
  1a0034: b85f03a8     	ldur	w8, [x29, #-0x10]
  1a0038: 321f0101     	orr	w1, w8, #0x2
  1a003c: b81f03a1     	stur	w1, [x29, #-0x10]
  1a0040: aa0a03e2     	mov	x2, x10
  1a0044: 2a1f03e3     	mov	w3, wzr
  1a0048: 9400054a     	bl	0x1a1570 <.text+0x191570>
  1a004c: 14000008     	b	0x1a006c <.text+0x19006c>
  1a0050: b85f03a1     	ldur	w1, [x29, #-0x10]
  1a0054: aa1f03e2     	mov	x2, xzr
  1a0058: 52800023     	mov	w3, #0x1                // =1
  1a005c: 94000545     	bl	0x1a1570 <.text+0x191570>
  1a0060: 14000003     	b	0x1a006c <.text+0x19006c>
  1a0064: b85f03a1     	ldur	w1, [x29, #-0x10]
  1a0068: 94000636     	bl	0x1a1940 <.text+0x191940>
  1a006c: 93407c0b     	sxtw	x11, w0
  1a0070: d5384108     	mrs	x8, SP_EL0
  1a0074: f9431108     	ldr	x8, [x8, #0x620]
  1a0078: f85f83a9     	ldur	x9, [x29, #-0x8]
  1a007c: eb09011f     	cmp	x8, x9
  1a0080: 540000e1     	b.ne	0x1a009c <.text+0x19009c>
  1a0084: aa0b03e0     	mov	x0, x11
  1a0088: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  1a008c: f9402bf3     	ldr	x19, [sp, #0x50]
  1a0090: 910183ff     	add	sp, sp, #0x60
  1a0094: d50323bf     	autiasp
  1a0098: d65f03c0     	ret
  1a009c: 943a96d2     	bl	0x1045be4 <.text+0x1035be4>
  1a00a0: d538d08b     	mrs	x11, TPIDR_EL1
  1a00a4: d000f7ad     	adrp	x13, 0x2096000
  1a00a8: 910021ad     	add	x13, x13, #0x8
  1a00ac: b86d696b     	ldr	w11, [x11, x13]
  1a00b0: d000f94e     	adrp	x14, 0x20ca000
  1a00b4: 913861ce     	add	x14, x14, #0xe18
  1a00b8: d343fd6d     	lsr	x13, x11, #3
  1a00bc: 927d65ad     	and	x13, x13, #0x1ffffff8
  1a00c0: f86d69cd     	ldr	x13, [x14, x13]
  1a00c4: 9acb25ab     	lsr	x11, x13, x11
  1a00c8: 3607f2ab     	tbz	w11, #0x0, 0x19ff1c <.text+0x18ff1c>
  1a00cc: d5384113     	mrs	x19, SP_EL0
  1a00d0: b940126b     	ldr	w11, [x19, #0x10]
  1a00d4: d10043a2     	sub	x2, x29, #0x10
  1a00d8: aa0c03e1     	mov	x1, x12
  1a00dc: 1100056b     	add	w11, w11, #0x1
  1a00e0: b900126b     	str	w11, [x19, #0x10]
  1a00e4: f90013e0     	str	x0, [sp, #0x20]
  1a00e8: aa1f03e0     	mov	x0, xzr
  1a00ec: 29008fe9     	stp	w9, w3, [sp, #0x4]
  1a00f0: aa0803e3     	mov	x3, x8
  1a00f4: f81e83ac     	stur	x12, [x29, #-0x18]
  1a00f8: a9012be8     	stp	x8, x10, [sp, #0x10]
  1a00fc: b9000fe6     	str	w6, [sp, #0xc]
  1a0100: 942ccf65     	bl	0xcd3e94 <.text+0xcc3e94>
  1a0104: f85e83ac     	ldur	x12, [x29, #-0x18]
  1a0108: a9412be8     	ldp	x8, x10, [sp, #0x10]
  1a010c: 29411be3     	ldp	w3, w6, [sp, #0x8]
  1a0110: b94007e9     	ldr	w9, [sp, #0x4]
  1a0114: f94013e0     	ldr	x0, [sp, #0x20]
  1a0118: f9400a6b     	ldr	x11, [x19, #0x10]
  1a011c: f100056b     	subs	x11, x11, #0x1
  1a0120: b900126b     	str	w11, [x19, #0x10]
  1a0124: 54000060     	b.eq	0x1a0130 <.text+0x190130>
  1a0128: f9400a6b     	ldr	x11, [x19, #0x10]
  1a012c: b5ffef8b     	cbnz	x11, 0x19ff1c <.text+0x18ff1c>
  1a0130: 943aabc2     	bl	0x104b038 <.text+0x103b038>
  1a0134: 29411be3     	ldp	w3, w6, [sp, #0x8]
  1a0138: a9412be8     	ldp	x8, x10, [sp, #0x10]
  1a013c: f85e83ac     	ldur	x12, [x29, #-0x18]
  1a0140: b94007e9     	ldr	w9, [sp, #0x4]
  1a0144: f94013e0     	ldr	x0, [sp, #0x20]
  1a0148: 17ffff75     	b	0x19ff1c <.text+0x18ff1c>
  1a014c: b02b34d9     	adrp	x25, 0x56839000
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
