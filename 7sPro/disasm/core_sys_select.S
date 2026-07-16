// core_sys_select @ 0xffffffe1a5bdfdf4 (file offset 0x3dfdf4, size 0x800)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
  3dfdf4: d503233f     	paciasp
  3dfdf8: d107c3ff     	sub	sp, sp, #0x1f0
  3dfdfc: a9197bfd     	stp	x29, x30, [sp, #0x190]
  3dfe00: a91a6ffc     	stp	x28, x27, [sp, #0x1a0]
  3dfe04: a91b67fa     	stp	x26, x25, [sp, #0x1b0]
  3dfe08: a91c5ff8     	stp	x24, x23, [sp, #0x1c0]
  3dfe0c: a91d57f6     	stp	x22, x21, [sp, #0x1d0]
  3dfe10: a91e4ff4     	stp	x20, x19, [sp, #0x1e0]
  3dfe14: 910643fd     	add	x29, sp, #0x190
  3dfe18: a90407e2     	stp	x2, x1, [sp, #0x40]
  3dfe1c: d5384108     	mrs	x8, SP_EL0
  3dfe20: f9431108     	ldr	x8, [x8, #0x620]
  3dfe24: f81f03a8     	stur	x8, [x29, #-0x10]
  3dfe28: 37f80580     	tbnz	w0, #0x1f, 0x3dfed8 <.text+0x3cfed8>
  3dfe2c: aa0403f6     	mov	x22, x4
  3dfe30: aa0303f5     	mov	x21, x3
  3dfe34: 2a0003f3     	mov	w19, w0
  3dfe38: a9177fff     	stp	xzr, xzr, [sp, #0x170]
  3dfe3c: a9167fff     	stp	xzr, xzr, [sp, #0x160]
  3dfe40: a9157fff     	stp	xzr, xzr, [sp, #0x150]
  3dfe44: a9147fff     	stp	xzr, xzr, [sp, #0x140]
  3dfe48: a9137fff     	stp	xzr, xzr, [sp, #0x130]
  3dfe4c: a9127fff     	stp	xzr, xzr, [sp, #0x120]
  3dfe50: a9117fff     	stp	xzr, xzr, [sp, #0x110]
  3dfe54: a9107fff     	stp	xzr, xzr, [sp, #0x100]
  3dfe58: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
  3dfe5c: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
  3dfe60: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
  3dfe64: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
  3dfe68: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
  3dfe6c: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
  3dfe70: a9097fff     	stp	xzr, xzr, [sp, #0x90]
  3dfe74: a9087fff     	stp	xzr, xzr, [sp, #0x80]
  3dfe78: 97f6125b     	bl	0x1647e4 <.text+0x1547e4>
  3dfe7c: d5384118     	mrs	x24, SP_EL0
  3dfe80: f9443308     	ldr	x8, [x24, #0x860]
  3dfe84: f9401108     	ldr	x8, [x8, #0x20]
  3dfe88: b9400114     	ldr	w20, [x8]
  3dfe8c: 97f6125c     	bl	0x1647fc <.text+0x1547fc>
  3dfe90: 6b13029f     	cmp	w20, w19
  3dfe94: 1a93b288     	csel	w8, w20, w19, lt
  3dfe98: 93407d13     	sxtw	x19, w8
  3dfe9c: 9100fe68     	add	x8, x19, #0x3f
  3dfea0: d343fd08     	lsr	x8, x8, #3
  3dfea4: 927de519     	and	x25, x8, #0x1ffffffffffffff8
  3dfea8: f100af3f     	cmp	x25, #0x2b
  3dfeac: 540001a3     	b.lo	0x3dfee0 <.text+0x3cfee0>
  3dfeb0: 8b190728     	add	x8, x25, x25, lsl #1
  3dfeb4: 52819801     	mov	w1, #0xcc0              // =3264
  3dfeb8: 12800002     	mov	w2, #-0x1               // =-1
  3dfebc: d37ff917     	lsl	x23, x8, #1
  3dfec0: aa1703e0     	mov	x0, x23
  3dfec4: 97fc867a     	bl	0x3018ac <.text+0x2f18ac>
  3dfec8: b40012a0     	cbz	x0, 0x3e011c <.text+0x3d011c>
  3dfecc: aa0003f4     	mov	x20, x0
  3dfed0: a900cff8     	stp	x24, x19, [sp, #0x8]
  3dfed4: 14000006     	b	0x3dfeec <.text+0x3cfeec>
  3dfed8: 128002b7     	mov	w23, #-0x16             // =-22
  3dfedc: 14000091     	b	0x3e0120 <.text+0x3d0120>
  3dfee0: a900cff8     	stp	x24, x19, [sp, #0x8]
  3dfee4: 910203f4     	add	x20, sp, #0x80
  3dfee8: 52802017     	mov	w23, #0x100             // =256
  3dfeec: f9000ff6     	str	x22, [sp, #0x18]
  3dfef0: f9001ff5     	str	x21, [sp, #0x38]
  3dfef4: d37ffb3c     	lsl	x28, x25, #1
  3dfef8: d37ef73b     	lsl	x27, x25, #2
  3dfefc: d35fff36     	lsr	x22, x25, #31
  3dff00: 8b190295     	add	x21, x20, x25
  3dff04: 8b190398     	add	x24, x28, x25
  3dff08: 8b1c0293     	add	x19, x20, x28
  3dff0c: 8b1b0289     	add	x9, x20, x27
  3dff10: 8b180288     	add	x8, x20, x24
  3dff14: 8b19037a     	add	x26, x27, x25
  3dff18: a90557f4     	stp	x20, x21, [sp, #0x50]
  3dff1c: a90623f3     	stp	x19, x8, [sp, #0x60]
  3dff20: a902a3e9     	stp	x9, x8, [sp, #0x28]
  3dff24: 8b1a0288     	add	x8, x20, x26
  3dff28: a90723e9     	stp	x9, x8, [sp, #0x70]
  3dff2c: f90013e8     	str	x8, [sp, #0x20]
  3dff30: f94027e8     	ldr	x8, [sp, #0x48]
  3dff34: b4000488     	cbz	x8, 0x3dffc4 <.text+0x3cffc4>
  3dff38: b5001176     	cbnz	x22, 0x3e0164 <.text+0x3d0164>
  3dff3c: aa1403e0     	mov	x0, x20
  3dff40: aa1903e1     	mov	x1, x25
  3dff44: 2a1f03e2     	mov	w2, wzr
  3dff48: 97ff67be     	bl	0x3b9e40 <.text+0x3a9e40>
  3dff4c: f94027e1     	ldr	x1, [sp, #0x48]
  3dff50: aa1403e0     	mov	x0, x20
  3dff54: aa1903e2     	mov	x2, x25
  3dff58: 9400054f     	bl	0x3e1494 <.text+0x3d1494>
  3dff5c: b5000d20     	cbnz	x0, 0x3e0100 <.text+0x3d0100>
  3dff60: f94023e8     	ldr	x8, [sp, #0x40]
  3dff64: b4000408     	cbz	x8, 0x3dffe4 <.text+0x3cffe4>
  3dff68: b5001036     	cbnz	x22, 0x3e016c <.text+0x3d016c>
  3dff6c: aa1503e0     	mov	x0, x21
  3dff70: aa1903e1     	mov	x1, x25
  3dff74: 2a1f03e2     	mov	w2, wzr
  3dff78: 97ff67b2     	bl	0x3b9e40 <.text+0x3a9e40>
  3dff7c: f94023e1     	ldr	x1, [sp, #0x40]
  3dff80: aa1503e0     	mov	x0, x21
  3dff84: aa1903e2     	mov	x2, x25
  3dff88: 94000543     	bl	0x3e1494 <.text+0x3d1494>
  3dff8c: b5000ba0     	cbnz	x0, 0x3e0100 <.text+0x3d0100>
  3dff90: f9401ff5     	ldr	x21, [sp, #0x38]
  3dff94: b40003d5     	cbz	x21, 0x3e000c <.text+0x3d000c>
  3dff98: b5000ef6     	cbnz	x22, 0x3e0174 <.text+0x3d0174>
  3dff9c: aa1303e0     	mov	x0, x19
  3dffa0: aa1903e1     	mov	x1, x25
  3dffa4: 2a1f03e2     	mov	w2, wzr
  3dffa8: 97ff67a6     	bl	0x3b9e40 <.text+0x3a9e40>
  3dffac: aa1303e0     	mov	x0, x19
  3dffb0: aa1503e1     	mov	x1, x21
  3dffb4: aa1903e2     	mov	x2, x25
  3dffb8: 94000537     	bl	0x3e1494 <.text+0x3d1494>
  3dffbc: b5000a20     	cbnz	x0, 0x3e0100 <.text+0x3d0100>
  3dffc0: 1400001b     	b	0x3e002c <.text+0x3d002c>
  3dffc4: eb1902ff     	cmp	x23, x25
  3dffc8: 54000dc3     	b.lo	0x3e0180 <.text+0x3d0180>
  3dffcc: aa1403e0     	mov	x0, x20
  3dffd0: 2a1f03e1     	mov	w1, wzr
  3dffd4: aa1903e2     	mov	x2, x25
  3dffd8: 9430c39a     	bl	0x1010e40 <.text+0x1000e40>
  3dffdc: f94023e8     	ldr	x8, [sp, #0x40]
  3dffe0: b5fffc48     	cbnz	x8, 0x3dff68 <.text+0x3cff68>
  3dffe4: eb1902e8     	subs	x8, x23, x25
  3dffe8: 9a8833e8     	csel	x8, xzr, x8, lo
  3dffec: eb19011f     	cmp	x8, x25
  3dfff0: 54000c83     	b.lo	0x3e0180 <.text+0x3d0180>
  3dfff4: aa1503e0     	mov	x0, x21
  3dfff8: 2a1f03e1     	mov	w1, wzr
  3dfffc: aa1903e2     	mov	x2, x25
  3e0000: 9430c390     	bl	0x1010e40 <.text+0x1000e40>
  3e0004: f9401ff5     	ldr	x21, [sp, #0x38]
  3e0008: b5fffc95     	cbnz	x21, 0x3dff98 <.text+0x3cff98>
  3e000c: eb1c02e8     	subs	x8, x23, x28
  3e0010: 9a8833e8     	csel	x8, xzr, x8, lo
  3e0014: eb19011f     	cmp	x8, x25
  3e0018: 54000b43     	b.lo	0x3e0180 <.text+0x3d0180>
  3e001c: aa1303e0     	mov	x0, x19
  3e0020: 2a1f03e1     	mov	w1, wzr
  3e0024: aa1903e2     	mov	x2, x25
  3e0028: 9430c386     	bl	0x1010e40 <.text+0x1000e40>
  3e002c: eb1802e8     	subs	x8, x23, x24
  3e0030: 9a8833e8     	csel	x8, xzr, x8, lo
  3e0034: eb19011f     	cmp	x8, x25
  3e0038: 54000a43     	b.lo	0x3e0180 <.text+0x3d0180>
  3e003c: f9401be0     	ldr	x0, [sp, #0x30]
  3e0040: 2a1f03e1     	mov	w1, wzr
  3e0044: aa1903e2     	mov	x2, x25
  3e0048: 9430c37e     	bl	0x1010e40 <.text+0x1000e40>
  3e004c: eb1b02e8     	subs	x8, x23, x27
  3e0050: 9a8833e8     	csel	x8, xzr, x8, lo
  3e0054: eb19011f     	cmp	x8, x25
  3e0058: 54000943     	b.lo	0x3e0180 <.text+0x3d0180>
  3e005c: f94017f8     	ldr	x24, [sp, #0x28]
  3e0060: 2a1f03e1     	mov	w1, wzr
  3e0064: aa1903e2     	mov	x2, x25
  3e0068: aa1803e0     	mov	x0, x24
  3e006c: 9430c375     	bl	0x1010e40 <.text+0x1000e40>
  3e0070: eb1a02e8     	subs	x8, x23, x26
  3e0074: 9a8833e8     	csel	x8, xzr, x8, lo
  3e0078: eb19011f     	cmp	x8, x25
  3e007c: 54000823     	b.lo	0x3e0180 <.text+0x3d0180>
  3e0080: f94013f6     	ldr	x22, [sp, #0x20]
  3e0084: 2a1f03e1     	mov	w1, wzr
  3e0088: aa1903e2     	mov	x2, x25
  3e008c: aa1603e0     	mov	x0, x22
  3e0090: 9430c36c     	bl	0x1010e40 <.text+0x1000e40>
  3e0094: a9410bf3     	ldp	x19, x2, [sp, #0x10]
  3e0098: 910143e1     	add	x1, sp, #0x50
  3e009c: 2a1303e0     	mov	w0, w19
  3e00a0: 9400003b     	bl	0x3e018c <.text+0x3d018c>
  3e00a4: f94007e9     	ldr	x9, [sp, #0x8]
  3e00a8: 2a0003f7     	mov	w23, w0
  3e00ac: 37f802c0     	tbnz	w0, #0x1f, 0x3e0104 <.text+0x3d0104>
  3e00b0: 350000b7     	cbnz	w23, 0x3e00c4 <.text+0x3d00c4>
  3e00b4: f9400128     	ldr	x8, [x9]
  3e00b8: 37300528     	tbnz	w8, #0x6, 0x3e015c <.text+0x3d015c>
  3e00bc: f9400128     	ldr	x8, [x9]
  3e00c0: 370004e8     	tbnz	w8, #0x0, 0x3e015c <.text+0x3d015c>
  3e00c4: f94027e1     	ldr	x1, [sp, #0x48]
  3e00c8: f9401be2     	ldr	x2, [sp, #0x30]
  3e00cc: aa1303e0     	mov	x0, x19
  3e00d0: 940001ce     	bl	0x3e0808 <.text+0x3d0808>
  3e00d4: b5000160     	cbnz	x0, 0x3e0100 <.text+0x3d0100>
  3e00d8: f94023e1     	ldr	x1, [sp, #0x40]
  3e00dc: aa1303e0     	mov	x0, x19
  3e00e0: aa1803e2     	mov	x2, x24
  3e00e4: 940001c9     	bl	0x3e0808 <.text+0x3d0808>
  3e00e8: b50000c0     	cbnz	x0, 0x3e0100 <.text+0x3d0100>
  3e00ec: aa1303e0     	mov	x0, x19
  3e00f0: aa1503e1     	mov	x1, x21
  3e00f4: aa1603e2     	mov	x2, x22
  3e00f8: 940001c4     	bl	0x3e0808 <.text+0x3d0808>
  3e00fc: b4000040     	cbz	x0, 0x3e0104 <.text+0x3d0104>
  3e0100: 128001b7     	mov	w23, #-0xe              // =-14
  3e0104: 910203e8     	add	x8, sp, #0x80
  3e0108: eb08029f     	cmp	x20, x8
  3e010c: 540000a0     	b.eq	0x3e0120 <.text+0x3d0120>
  3e0110: aa1403e0     	mov	x0, x20
  3e0114: 97fc839b     	bl	0x300f80 <.text+0x2f0f80>
  3e0118: 14000002     	b	0x3e0120 <.text+0x3d0120>
  3e011c: 12800177     	mov	w23, #-0xc              // =-12
  3e0120: d5384108     	mrs	x8, SP_EL0
  3e0124: f9431108     	ldr	x8, [x8, #0x620]
  3e0128: f85f03a9     	ldur	x9, [x29, #-0x10]
  3e012c: eb09011f     	cmp	x8, x9
  3e0130: 54000261     	b.ne	0x3e017c <.text+0x3d017c>
  3e0134: 2a1703e0     	mov	w0, w23
  3e0138: a95e4ff4     	ldp	x20, x19, [sp, #0x1e0]
  3e013c: a95d57f6     	ldp	x22, x21, [sp, #0x1d0]
  3e0140: a95c5ff8     	ldp	x24, x23, [sp, #0x1c0]
  3e0144: a95b67fa     	ldp	x26, x25, [sp, #0x1b0]
  3e0148: a95a6ffc     	ldp	x28, x27, [sp, #0x1a0]
  3e014c: a9597bfd     	ldp	x29, x30, [sp, #0x190]
  3e0150: 9107c3ff     	add	sp, sp, #0x1f0
  3e0154: d50323bf     	autiasp
  3e0158: d65f03c0     	ret
  3e015c: 12804037     	mov	w23, #-0x202            // =-514
  3e0160: 17ffffe9     	b	0x3e0104 <.text+0x3d0104>
  3e0164: d4210000     	brk	#0x800
  3e0168: 17ffffe6     	b	0x3e0100 <.text+0x3d0100>
  3e016c: d4210000     	brk	#0x800
  3e0170: 17ffffe4     	b	0x3e0100 <.text+0x3d0100>
  3e0174: d4210000     	brk	#0x800
  3e0178: 17ffffe2     	b	0x3e0100 <.text+0x3d0100>
  3e017c: 9431969a     	bl	0x1045be4 <.text+0x1035be4>
  3e0180: f0008f40     	adrp	x0, 0x15cb000 <.text+0x15bb000>
  3e0184: 913e6000     	add	x0, x0, #0xf98
  3e0188: 943188b1     	bl	0x104244c <.text+0x103244c>
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
