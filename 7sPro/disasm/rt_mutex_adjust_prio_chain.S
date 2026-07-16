// rt_mutex_adjust_prio_chain @ 0xffffffe1a6052868 (file offset 0x852868, size 0x400)
// _text = 0xffffffe1a5800000




0000000000010000 <.text>:
  852868: 1400005a     	b	0x8529d0 <.text+0x8429d0>
  85286c: 128002a0     	mov	w0, #-0x16              // =-22
  852870: 14000058     	b	0x8529d0 <.text+0x8429d0>
  852874: 39430268     	ldrb	w8, [x19, #0xc0]
  852878: 34000aa8     	cbz	w8, 0x8529cc <.text+0x8429cc>
  85287c: f9401268     	ldr	x8, [x19, #0x20]
  852880: f941e109     	ldr	x9, [x8, #0x3c0]
  852884: f9403d28     	ldr	x8, [x9, #0x78]
  852888: b40009e8     	cbz	x8, 0x8529c4 <.text+0x8429c4>
  85288c: f9404129     	ldr	x9, [x9, #0x80]
  852890: b40009a9     	cbz	x9, 0x8529c4 <.text+0x8429c4>
  852894: aa1303e0     	mov	x0, x19
  852898: aa0203f5     	mov	x21, x2
  85289c: b85fc110     	ldur	w16, [x8, #-0x4]
  8528a0: 728b5131     	movk	w17, #0x5a89
  8528a4: 72b89d71     	movk	w17, #0xc4eb, lsl #16
  8528a8: 6b11021f     	cmp	w16, w17
  8528ac: 54000040     	b.eq	0x8528b4 <.text+0x8428b4>
  8528b0: d4304500     	brk	#0x8228
  8528b4: d63f0100     	blr	x8
  8528b8: 350008c0     	cbnz	w0, 0x8529d0 <.text+0x8429d0>
  8528bc: aa1303e0     	mov	x0, x19
  8528c0: 97fffe1e     	bl	0x852138 <.text+0x842138>
  8528c4: b40001c0     	cbz	x0, 0x8528fc <.text+0x8428fc>
  8528c8: aa0003e1     	mov	x1, x0
  8528cc: aa1303e0     	mov	x0, x19
  8528d0: b85fc2b0     	ldur	w16, [x21, #-0x4]
  8528d4: 728a3c71     	movk	w17, #0x51e3
  8528d8: 72b0bcb1     	movk	w17, #0x85e5, lsl #16
  8528dc: 6b11021f     	cmp	w16, w17
  8528e0: 54000040     	b.eq	0x8528e8 <.text+0x8428e8>
  8528e4: d43046a0     	brk	#0x8235
  8528e8: d63f02a0     	blr	x21
  8528ec: aa1303e0     	mov	x0, x19
  8528f0: 97fffe12     	bl	0x852138 <.text+0x842138>
  8528f4: aa0003e1     	mov	x1, x0
  8528f8: b5fffea0     	cbnz	x0, 0x8528cc <.text+0x8428cc>
  8528fc: 39410268     	ldrb	w8, [x19, #0x40]
  852900: 34000828     	cbz	w8, 0x852a04 <.text+0x842a04>
  852904: f9401277     	ldr	x23, [x19, #0x20]
  852908: f9406663     	ldr	x3, [x19, #0xc8]
  85290c: 910023e0     	add	x0, sp, #0x8
  852910: 2a1403e2     	mov	w2, w20
  852914: a905ffff     	stp	xzr, xzr, [sp, #0x58]
  852918: aa1703e1     	mov	x1, x23
  85291c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
  852920: a903ffff     	stp	xzr, xzr, [sp, #0x38]
  852924: a902ffff     	stp	xzr, xzr, [sp, #0x28]
  852928: a901ffff     	stp	xzr, xzr, [sp, #0x18]
  85292c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  852930: 9400053b     	bl	0x853e1c <.text+0x843e1c>
  852934: 35000cc0     	cbnz	w0, 0x852acc <.text+0x842acc>
  852938: b9400bf9     	ldr	w25, [sp, #0x8]
  85293c: 52819801     	mov	w1, #0xcc0              // =3264
  852940: 8b394728     	add	x8, x25, w25, uxtw #1
  852944: d37df115     	lsl	x21, x8, #3
  852948: aa1503e0     	mov	x0, x21
  85294c: 97eafaba     	bl	0x311434 <.text+0x301434>
  852950: b4000b60     	cbz	x0, 0x852abc <.text+0x842abc>
  852954: 2a1f03e1     	mov	w1, wzr
  852958: aa1503e2     	mov	x2, x21
  85295c: aa0003f4     	mov	x20, x0
  852960: 941ef938     	bl	0x1010e40 <.text+0x1000e40>
  852964: d37cef35     	lsl	x21, x25, #4
  852968: 52819801     	mov	w1, #0xcc0              // =3264
  85296c: aa1503e0     	mov	x0, x21
  852970: 97eafab1     	bl	0x311434 <.text+0x301434>
  852974: b4000a00     	cbz	x0, 0x852ab4 <.text+0x842ab4>
  852978: 2a1f03e1     	mov	w1, wzr
  85297c: aa1503e2     	mov	x2, x21
  852980: aa0003f6     	mov	x22, x0
  852984: 941ef92f     	bl	0x1010e40 <.text+0x1000e40>
  852988: 71000728     	subs	w8, w25, #0x1
  85298c: 540013e0     	b.eq	0x852c08 <.text+0x842c08>
  852990: b24002a9     	orr	x9, x21, #0x1
  852994: 528001ca     	mov	w10, #0xe               // =14
  852998: f100393f     	cmp	x9, #0xe
  85299c: 9a8a8129     	csel	x9, x9, x10, hi
  8529a0: d100050a     	sub	x10, x8, #0x1
  8529a4: 91000529     	add	x9, x9, #0x1
  8529a8: d344fd29     	lsr	x9, x9, #4
  8529ac: eb0a013f     	cmp	x9, x10
  8529b0: 9a8a3129     	csel	x9, x9, x10, lo
  8529b4: f100093f     	cmp	x9, #0x2
  8529b8: 54000f82     	b.hs	0x852ba8 <.text+0x842ba8>
  8529bc: aa1f03e9     	mov	x9, xzr
  8529c0: 14000088     	b	0x852be0 <.text+0x842be0>
  8529c4: 12800020     	mov	w0, #-0x2               // =-2
  8529c8: 14000002     	b	0x8529d0 <.text+0x8429d0>
  8529cc: 12800000     	mov	w0, #-0x1               // =-1
  8529d0: d5384108     	mrs	x8, SP_EL0
  8529d4: f9431108     	ldr	x8, [x8, #0x620]
  8529d8: f85f83a9     	ldur	x9, [x29, #-0x8]
  8529dc: eb09011f     	cmp	x8, x9
  8529e0: 54001e81     	b.ne	0x852db0 <.text+0x842db0>
  8529e4: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
  8529e8: f94043f9     	ldr	x25, [sp, #0x80]
  8529ec: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
  8529f0: a9495ff8     	ldp	x24, x23, [sp, #0x90]
  8529f4: a9477bfd     	ldp	x29, x30, [sp, #0x70]
  8529f8: 910303ff     	add	sp, sp, #0xc0
  8529fc: d50323bf     	autiasp
  852a00: d65f03c0     	ret
  852a04: f9401277     	ldr	x23, [x19, #0x20]
  852a08: b940a263     	ldr	w3, [x19, #0xa0]
  852a0c: 910023e0     	add	x0, sp, #0x8
  852a10: 39429264     	ldrb	w4, [x19, #0xa4]
  852a14: f9406665     	ldr	x5, [x19, #0xc8]
  852a18: 2a1403e2     	mov	w2, w20
  852a1c: aa1703e1     	mov	x1, x23
  852a20: a904ffff     	stp	xzr, xzr, [sp, #0x48]
  852a24: a903ffff     	stp	xzr, xzr, [sp, #0x38]
  852a28: a902ffff     	stp	xzr, xzr, [sp, #0x28]
  852a2c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
  852a30: a900ffff     	stp	xzr, xzr, [sp, #0x8]
  852a34: 940005bd     	bl	0x854128 <.text+0x844128>
  852a38: 35000760     	cbnz	w0, 0x852b24 <.text+0x842b24>
  852a3c: b9400bf9     	ldr	w25, [sp, #0x8]
  852a40: 52819801     	mov	w1, #0xcc0              // =3264
  852a44: d37cef34     	lsl	x20, x25, #4
  852a48: aa1403e0     	mov	x0, x20
  852a4c: 97eafa7a     	bl	0x311434 <.text+0x301434>
  852a50: b4000480     	cbz	x0, 0x852ae0 <.text+0x842ae0>
  852a54: aa0003f5     	mov	x21, x0
  852a58: aa1403e0     	mov	x0, x20
  852a5c: 52819801     	mov	w1, #0xcc0              // =3264
  852a60: 97eafa75     	bl	0x311434 <.text+0x301434>
  852a64: b40003a0     	cbz	x0, 0x852ad8 <.text+0x842ad8>
  852a68: 2a1f03e1     	mov	w1, wzr
  852a6c: aa1403e2     	mov	x2, x20
  852a70: aa0003f6     	mov	x22, x0
  852a74: 941ef8f3     	bl	0x1010e40 <.text+0x1000e40>
  852a78: 71000728     	subs	w8, w25, #0x1
  852a7c: 54001380     	b.eq	0x852cec <.text+0x842cec>
  852a80: b2400289     	orr	x9, x20, #0x1
  852a84: 528001ca     	mov	w10, #0xe               // =14
  852a88: f100393f     	cmp	x9, #0xe
  852a8c: 9a8a8129     	csel	x9, x9, x10, hi
  852a90: d100050a     	sub	x10, x8, #0x1
  852a94: 91000529     	add	x9, x9, #0x1
  852a98: d344fd29     	lsr	x9, x9, #4
  852a9c: eb0a013f     	cmp	x9, x10
  852aa0: 9a8a3129     	csel	x9, x9, x10, lo
  852aa4: f100093f     	cmp	x9, #0x2
  852aa8: 54000f22     	b.hs	0x852c8c <.text+0x842c8c>
  852aac: aa1f03e9     	mov	x9, xzr
  852ab0: 14000085     	b	0x852cc4 <.text+0x842cc4>
  852ab4: aa1403e0     	mov	x0, x20
  852ab8: 97eafb2f     	bl	0x311774 <.text+0x301774>
  852abc: f9406662     	ldr	x2, [x19, #0xc8]
  852ac0: 910023e0     	add	x0, sp, #0x8
  852ac4: aa1703e1     	mov	x1, x23
  852ac8: 94000559     	bl	0x85402c <.text+0x84402c>
  852acc: aa1303e0     	mov	x0, x19
  852ad0: 9400012b     	bl	0x852f7c <.text+0x842f7c>
  852ad4: 140000a8     	b	0x852d74 <.text+0x842d74>
  852ad8: aa1503e0     	mov	x0, x21
  852adc: 97eafb26     	bl	0x311774 <.text+0x301774>
  852ae0: 394f92e8     	ldrb	w8, [x23, #0x3e4]
  852ae4: f94027e1     	ldr	x1, [sp, #0x48]
  852ae8: f9400be2     	ldr	x2, [sp, #0x10]
  852aec: 370800c8     	tbnz	w8, #0x1, 0x852b04 <.text+0x842b04>
  852af0: 913ffc28     	add	x8, x1, #0xfff
  852af4: aa0203e0     	mov	x0, x2
  852af8: 9274cd01     	and	x1, x8, #0xfffffffffffff000
  852afc: 97ec187c     	bl	0x358cec <.text+0x348cec>
  852b00: 14000005     	b	0x852b14 <.text+0x842b14>
  852b04: f9406660     	ldr	x0, [x19, #0xc8]
  852b08: f94023e3     	ldr	x3, [sp, #0x40]
  852b0c: aa1f03e4     	mov	x4, xzr
  852b10: 97e47222     	bl	0x16f398 <.text+0x15f398>
  852b14: f9401be0     	ldr	x0, [sp, #0x30]
  852b18: 97eafb17     	bl	0x311774 <.text+0x301774>
  852b1c: f9401fe0     	ldr	x0, [sp, #0x38]
  852b20: 97eafb15     	bl	0x311774 <.text+0x301774>
  852b24: f9403668     	ldr	x8, [x19, #0x68]
  852b28: b9805a69     	ldrsw	x9, [x19, #0x58]
  852b2c: 7900011f     	strh	wzr, [x8]
  852b30: f9403668     	ldr	x8, [x19, #0x68]
  852b34: 7900051f     	strh	wzr, [x8, #0x2]
  852b38: f9403668     	ldr	x8, [x19, #0x68]
  852b3c: 8b090508     	add	x8, x8, x9, lsl #1
  852b40: 7900091f     	strh	wzr, [x8, #0x4]
  852b44: f9403a68     	ldr	x8, [x19, #0x70]
  852b48: 7900011f     	strh	wzr, [x8]
  852b4c: f9403a68     	ldr	x8, [x19, #0x70]
  852b50: 7900051f     	strh	wzr, [x8, #0x2]
  852b54: f9403a68     	ldr	x8, [x19, #0x70]
  852b58: 8b090d08     	add	x8, x8, x9, lsl #3
  852b5c: 7900091f     	strh	wzr, [x8, #0x4]
  852b60: 39410268     	ldrb	w8, [x19, #0x40]
  852b64: b9002e69     	str	w9, [x19, #0x2c]
  852b68: f9400a69     	ldr	x9, [x19, #0x10]
  852b6c: 39014a7f     	strb	wzr, [x19, #0x52]
  852b70: 7100011f     	cmp	w8, #0x0
  852b74: b9004e7f     	str	wzr, [x19, #0x4c]
  852b78: 1a9f07e8     	cset	w8, ne
  852b7c: b9007a7f     	str	wzr, [x19, #0x78]
  852b80: 53114108     	lsl	w8, w8, #15
  852b84: 7900a268     	strh	w8, [x19, #0x50]
  852b88: b5000f69     	cbnz	x9, 0x852d74 <.text+0x842d74>
  852b8c: 39411669     	ldrb	w9, [x19, #0x45]
  852b90: 52800028     	mov	w8, #0x1                // =1
  852b94: 7900f268     	strh	w8, [x19, #0x78]
  852b98: 35000ee9     	cbnz	w9, 0x852d74 <.text+0x842d74>
  852b9c: f9403669     	ldr	x9, [x19, #0x68]
  852ba0: 79000128     	strh	w8, [x9]
  852ba4: 14000074     	b	0x852d74 <.text+0x842d74>
  852ba8: 91000529     	add	x9, x9, #0x1
  852bac: 5280004c     	mov	w12, #0x2               // =2
  852bb0: aa1f03ea     	mov	x10, xzr
  852bb4: f240012b     	ands	x11, x9, #0x1
  852bb8: 9a8b018b     	csel	x11, x12, x11, eq
  852bbc: cb0b0129     	sub	x9, x9, x11
  852bc0: 91007acb     	add	x11, x22, #0x1e
  852bc4: 3200014c     	orr	w12, w10, #0x1
  852bc8: 1100094d     	add	w13, w10, #0x2
  852bcc: 9100094a     	add	x10, x10, #0x2
  852bd0: eb0a013f     	cmp	x9, x10
  852bd4: 781f016c     	sturh	w12, [x11, #-0x10]
  852bd8: 7802056d     	strh	w13, [x11], #0x20
  852bdc: 54ffff41     	b.ne	0x852bc4 <.text+0x842bc4>
  852be0: 528001ca     	mov	w10, #0xe               // =14
  852be4: aa09114a     	orr	x10, x10, x9, lsl #4
  852be8: eb0a02bf     	cmp	x21, x10
  852bec: 54000e43     	b.lo	0x852db4 <.text+0x842db4>
  852bf0: 54000e23     	b.lo	0x852db4 <.text+0x842db4>
  852bf4: 91000529     	add	x9, x9, #0x1
  852bf8: 782a6ac9     	strh	w9, [x22, x10]
  852bfc: 9100414a     	add	x10, x10, #0x10
  852c00: eb09011f     	cmp	x8, x9
  852c04: 54ffff21     	b.ne	0x852be8 <.text+0x842be8>
  852c08: aa1303e0     	mov	x0, x19
  852c0c: a9035bf4     	stp	x20, x22, [sp, #0x30]
  852c10: 9400020b     	bl	0x85343c <.text+0x84343c>
  852c14: f9400a69     	ldr	x9, [x19, #0x10]
  852c18: 52800028     	mov	w8, #0x1                // =1
  852c1c: 5280100a     	mov	w10, #0x80              // =128
  852c20: 3900a3e8     	strb	w8, [sp, #0x28]
  852c24: 79005fff     	strh	wzr, [sp, #0x2e]
  852c28: b802a3ea     	stur	w10, [sp, #0x2a]
  852c2c: b5000089     	cbnz	x9, 0x852c3c <.text+0x842c3c>
  852c30: f9400fe9     	ldr	x9, [sp, #0x18]
  852c34: 79005fe8     	strh	w8, [sp, #0x2e]
  852c38: 79000528     	strh	w8, [x9, #0x2]
  852c3c: a944abe9     	ldp	x9, x10, [sp, #0x48]
  852c40: 39410268     	ldrb	w8, [x19, #0x40]
  852c44: b9002e79     	str	w25, [x19, #0x2c]
  852c48: 7100011f     	cmp	w8, #0x0
  852c4c: 39014a7f     	strb	wzr, [x19, #0x52]
  852c50: a9042b09     	stp	x9, x10, [x24, #0x40]
  852c54: a945abe8     	ldp	x8, x10, [sp, #0x58]
  852c58: 1a9f07e9     	cset	w9, ne
  852c5c: 53114129     	lsl	w9, w9, #15
  852c60: a9052b08     	stp	x8, x10, [x24, #0x50]
  852c64: a942abe8     	ldp	x8, x10, [sp, #0x28]
