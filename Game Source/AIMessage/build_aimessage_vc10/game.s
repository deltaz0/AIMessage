	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 2
	.file	"game.cpp"
	.section	.text._Z10createRectPcbi,"ax",%progbits
	.align	2
	.global	_Z10createRectPcbi
	.hidden	_Z10createRectPcbi
	.type	_Z10createRectPcbi, %function
_Z10createRectPcbi:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #32
	mov	r5, r1
	mov	r6, r3
	ldr	r8, .L18+40
	mov	r0, r1
	beq	.L3
	bl	strlen
	ldr	r2, [r8, #0]
	flds	s1, .L18+32
	ldrh	r7, [r2, #18]
	fmsr	s8, r7	@ int
	ldr	r7, .L18+44
	ldr	r1, [r7, #0]
	fsitod	d4, s8
	flds	s15, [r1, #512]	@ int
	flds	s12, [r1, #516]	@ int
	strh	r6, [r4, #2]	@ movhi
	ldr	r6, .L18+48
	fuitod	d3, s15
	fuitos	s3, s15
	fldd	d7, .L18
	fuitod	d6, s12
	fdivd	d7, d4, d7
	fldd	d4, .L18+8
	fmuld	d4, d3, d4
	fmuls	s1, s3, s1
	ftosizd	s2, d4
	fmsr	s9, r0	@ int
	ftosizs	s11, s1
	ldr	r0, .L18+52
	fuitod	d0, s9
	fmrs	r3, s2	@ int
	fmrs	ip, s11	@ int
	strh	r3, [r4, #4]	@ movhi
	strh	ip, [r4, #0]	@ movhi
	faddd	d5, d0, d7
	fdivd	d7, d5, d7
	fmuld	d6, d7, d6
	fldd	d7, .L18+16
	fmuld	d7, d6, d7
	ftosizd	s10, d7
	fmrs	r2, s10	@ int
	strh	r2, [r4, #6]	@ movhi
	bl	_Z13Iw2DSetColourj
	ldrh	r1, [r4, #2]
	ldrh	r0, [r4, #6]
	strh	r0, [sp, #26]	@ movhi
	strh	r1, [sp, #30]	@ movhi
	ldrh	r3, [r4, #0]
	strh	r3, [sp, #28]	@ movhi
	ldrh	ip, [r4, #4]
	strh	ip, [sp, #24]	@ movhi
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L18+56
	bl	_Z13Iw2DSetColourj
	ldrh	r1, [r4, #6]
	ldrh	r2, [r4, #2]
	strh	r2, [sp, #22]	@ movhi
	strh	r1, [sp, #18]	@ movhi
	ldrh	r0, [r4, #0]
	strh	r0, [sp, #20]	@ movhi
	ldrh	r3, [r4, #4]
	strh	r3, [sp, #16]	@ movhi
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
.L16:
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	ldr	r1, [r6, #0]
	ldr	ip, [r8, #0]
	str	ip, [r1, #16]
	ldr	r0, [r6, #0]
	ldr	r3, [ip, #24]
	str	r3, [r0, #52]
	ldr	r1, [r6, #0]
	ldrsb	r2, [ip, #17]
	str	r2, [r1, #48]
	ldr	r3, [r7, #0]
	mov	r1, r4
	ldr	r0, [r3, #0]
	mov	r2, #8
	orr	ip, r0, #2048
	str	ip, [r3, #0]
	ldr	r3, [r7, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #4096
	str	ip, [r3, #0]
	ldr	r3, [r7, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #8192
	str	ip, [r3, #0]
	ldr	r3, [r7, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #16384
	str	ip, [r3, #0]
	ldr	r3, [r7, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #2048
	str	ip, [r3, #0]
	ldr	r0, [r6, #0]
	add	r0, r0, #20
	bl	memcpy
	flds	s12, [r8, #4]	@ int
	fldd	d7, .L18+24
	ldr	r2, [r6, #0]
	mov	r0, r5
	fsitod	d6, s12
	mvn	r1, #0
	fmuld	d7, d6, d7
	ftosizd	s6, d7
	fsts	s6, [r2, #32]	@ int
	ldr	ip, [r6, #0]
	fsts	s6, [ip, #36]	@ int
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	mov	r0, r4
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L3:
	bl	strlen
	ldr	r1, [r8, #0]
	fldd	d7, .L18
	ldrh	r7, [r1, #18]
	flds	s11, .L18+36
	fmsr	s8, r7	@ int
	ldr	r7, .L18+44
	ldr	r3, [r7, #0]
	fsitod	d4, s8
	flds	s3, [r3, #512]	@ int
	flds	s12, [r3, #516]	@ int
	strh	r6, [r4, #2]	@ movhi
	ldr	r6, .L18+48
	fuitos	s2, s3
	fuitod	d6, s12
	fuitod	d3, s3
	fdivd	d7, d4, d7
	fldd	d4, .L18+8
	fmuls	s11, s2, s11
	fmuld	d4, d3, d4
	ftosizs	s0, s11
	fmsr	s5, r0	@ int
	ftosizd	s1, d4
	ldr	r0, .L18+60
	fuitod	d5, s5
	fmrs	ip, s0	@ int
	fmrs	r2, s1	@ int
	strh	ip, [r4, #0]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	faddd	d5, d5, d7
	fdivd	d7, d5, d7
	fmuld	d6, d7, d6
	fldd	d7, .L18+16
	fmuld	d7, d6, d7
	ftosizd	s4, d7
	fmrs	r1, s4	@ int
	strh	r1, [r4, #6]	@ movhi
	bl	_Z13Iw2DSetColourj
	ldrh	r3, [r4, #2]
	ldrh	ip, [r4, #6]
	strh	ip, [sp, #10]	@ movhi
	strh	r3, [sp, #14]	@ movhi
	ldrh	r0, [r4, #0]
	strh	r0, [sp, #12]	@ movhi
	ldrh	r2, [r4, #4]
	strh	r2, [sp, #8]	@ movhi
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L18+56
	bl	_Z13Iw2DSetColourj
	ldrh	r1, [r4, #2]
	ldrh	r3, [r4, #6]
	strh	r3, [sp, #2]	@ movhi
	strh	r1, [sp, #6]	@ movhi
	ldrh	ip, [r4, #0]
	strh	ip, [sp, #4]	@ movhi
	ldrh	r0, [r4, #4]
	strh	r0, [sp, #0]	@ movhi
	ldr	r1, [sp, #0]
	ldr	r0, [sp, #4]
	b	.L16
.L19:
	.align	3
.L18:
	.word	-858993459
	.word	1073794252
	.word	-858993459
	.word	1071434956
	.word	536870912
	.word	1068859654
	.word	0
	.word	1071120384
	.word	0
	.word	1057803469
	.word	.LANCHOR0
	.word	g_IwGxState
	.word	g_IwGxFontState
	.word	-16751053
	.word	-12303292
	.word	-13426142
	.size	_Z10createRectPcbi, .-_Z10createRectPcbi
	.section	.text._Z10createRectPcb7CIwRect,"ax",%progbits
	.align	2
	.global	_Z10createRectPcb7CIwRect
	.hidden	_Z10createRectPcb7CIwRect
	.type	_Z10createRectPcb7CIwRect, %function
_Z10createRectPcb7CIwRect:
	@ args = 12, pretend = 8, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	fstmfdd	sp!, {d8}
	ldr	r6, .L36+44
	cmp	r2, #0
	sub	sp, sp, #36
	str	r3, [sp, #76]
	ldr	r3, [r6, #0]
	mov	r4, r0
	mov	r7, r1
	ldrh	sl, [sp, #82]
	ldrh	r5, [sp, #78]
	ldr	r8, .L36+48
	mov	r0, r1
	flds	s16, [r3, #516]	@ int
	flds	s17, [r3, #512]	@ int
	beq	.L22
	bl	strlen
	ldr	ip, [r8, #0]
	fldd	d6, .L36
	ldrh	r3, [ip, #18]
	fuitod	d3, s17
	fmsr	s8, r3	@ int
	fuitos	s17, s17
	mov	r1, sl, asl #16
	mov	sl, r1, asr #16
	fsitod	d4, s8
	mov	r5, r5, asl #16
	add	sl, sl, r5, asr #16
	fmsr	s5, sl	@ int
	flds	s2, .L36+32
	fuitod	d5, s16
	fuitos	s16, s16
	fsitos	s3, s5
	fdivd	d6, d4, d6
	fmuls	s2, s17, s2
	fldd	d4, .L36+8
	flds	s4, .L36+36
	fmuld	d4, d3, d4
	ldr	r5, .L36+52
	fmacs	s3, s16, s4
	ftosizs	s1, s2
	ftosizd	s7, d4
	fmsr	s9, r0	@ int
	ftosizs	s15, s3
	fmrs	r3, s1	@ int
	ldr	r0, .L36+56
	fuitod	d0, s9
	fmrs	r2, s7	@ int
	strh	r3, [r4, #0]	@ movhi
	fmrs	ip, s15	@ int
	strh	r2, [r4, #4]	@ movhi
	strh	ip, [r4, #2]	@ movhi
	faddd	d7, d0, d6
	fdivd	d7, d7, d6
	fmuld	d6, d7, d5
	fldd	d7, .L36+16
	fmuld	d7, d6, d7
	ftosizd	s13, d7
	fmrs	r1, s13	@ int
	strh	r1, [r4, #6]	@ movhi
	bl	_Z13Iw2DSetColourj
	ldrh	ip, [r4, #0]
	ldrh	r2, [r4, #6]
	ldrh	r0, [r4, #2]
	strh	r0, [sp, #30]	@ movhi
	strh	r2, [sp, #26]	@ movhi
	strh	ip, [sp, #28]	@ movhi
	ldrh	r3, [r4, #4]
	strh	r3, [sp, #24]	@ movhi
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L36+60
	bl	_Z13Iw2DSetColourj
	ldrh	r1, [r4, #6]
	ldrh	r2, [r4, #0]
	ldrh	ip, [r4, #2]
	strh	ip, [sp, #22]	@ movhi
	strh	r1, [sp, #18]	@ movhi
	strh	r2, [sp, #20]	@ movhi
	ldrh	r0, [r4, #4]
	strh	r0, [sp, #16]	@ movhi
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
.L35:
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	ldr	r1, [r5, #0]
	ldr	ip, [r8, #0]
	str	ip, [r1, #16]
	ldr	r0, [r5, #0]
	ldr	r3, [ip, #24]
	str	r3, [r0, #52]
	ldr	r1, [r5, #0]
	ldrsb	r2, [ip, #17]
	str	r2, [r1, #48]
	ldr	r3, [r6, #0]
	mov	r1, r4
	ldr	r0, [r3, #0]
	mov	r2, #8
	orr	ip, r0, #2048
	str	ip, [r3, #0]
	ldr	r3, [r6, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #4096
	str	ip, [r3, #0]
	ldr	r3, [r6, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #8192
	str	ip, [r3, #0]
	ldr	r3, [r6, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #16384
	str	ip, [r3, #0]
	ldr	r3, [r6, #0]
	ldr	r0, [r3, #0]
	orr	ip, r0, #2048
	str	ip, [r3, #0]
	ldr	r0, [r5, #0]
	add	r0, r0, #20
	bl	memcpy
	flds	s12, [r8, #4]	@ int
	fldd	d7, .L36+24
	ldr	r3, [r5, #0]
	mov	r0, r7
	fsitod	d6, s12
	mvn	r1, #0
	fmuld	d7, d6, d7
	ftosizd	s6, d7
	fsts	s6, [r3, #32]	@ int
	ldr	r2, [r5, #0]
	fsts	s6, [r2, #36]	@ int
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	mov	r0, r4
	add	sp, sp, #36
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	add	sp, sp, #8
	bx	lr
.L22:
	bl	strlen
	ldr	r3, [r8, #0]
	mov	r1, sl, asl #16
	ldrh	ip, [r3, #18]
	mov	sl, r1, asr #16
	fmsr	s8, ip	@ int
	mov	r5, r5, asl #16
	add	sl, sl, r5, asr #16
	fmsr	s12, sl	@ int
	fsitod	d4, s8
	fuitod	d3, s17
	fuitos	s17, s17
	fsitos	s3, s12
	fldd	d6, .L36
	flds	s2, .L36+40
	fuitod	d5, s16
	fuitos	s16, s16
	fdivd	d6, d4, d6
	fldd	d4, .L36+8
	fmuls	s2, s17, s2
	fmuld	d4, d3, d4
	flds	s4, .L36+36
	ldr	r5, .L36+52
	fmacs	s3, s16, s4
	ftosizs	s1, s2
	ftosizd	s7, d4
	fmsr	s9, r0	@ int
	ftosizs	s15, s3
	ldr	r0, .L36+64
	fmrs	ip, s1	@ int
	fuitod	d0, s9
	fmrs	r2, s7	@ int
	strh	ip, [r4, #0]	@ movhi
	fmrs	r3, s15	@ int
	strh	r2, [r4, #4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	faddd	d7, d0, d6
	fdivd	d7, d7, d6
	fmuld	d6, d7, d5
	fldd	d7, .L36+16
	fmuld	d7, d6, d7
	ftosizd	s13, d7
	fmrs	r1, s13	@ int
	strh	r1, [r4, #6]	@ movhi
	bl	_Z13Iw2DSetColourj
	ldrh	r3, [r4, #0]
	ldrh	r2, [r4, #6]
	ldrh	r0, [r4, #2]
	strh	r0, [sp, #14]	@ movhi
	strh	r2, [sp, #10]	@ movhi
	strh	r3, [sp, #12]	@ movhi
	ldrh	ip, [r4, #4]
	strh	ip, [sp, #8]	@ movhi
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L36+60
	bl	_Z13Iw2DSetColourj
	ldrh	r1, [r4, #6]
	ldrh	r2, [r4, #0]
	ldrh	r3, [r4, #2]
	strh	r3, [sp, #6]	@ movhi
	strh	r1, [sp, #2]	@ movhi
	strh	r2, [sp, #4]	@ movhi
	ldrh	r0, [r4, #4]
	strh	r0, [sp, #0]	@ movhi
	ldr	r1, [sp, #0]
	ldr	r0, [sp, #4]
	b	.L35
.L37:
	.align	3
.L36:
	.word	-858993459
	.word	1073794252
	.word	-858993459
	.word	1071434956
	.word	536870912
	.word	1068859654
	.word	0
	.word	1071120384
	.word	0
	.word	1028443341
	.word	1057803469
	.word	g_IwGxState
	.word	.LANCHOR0
	.word	g_IwGxFontState
	.word	-16751053
	.word	-12303292
	.word	-13426142
	.size	_Z10createRectPcb7CIwRect, .-_Z10createRectPcb7CIwRect
	.section	.text._ZN5CGame8waitTimeEi,"ax",%progbits
	.align	2
	.global	_ZN5CGame8waitTimeEi
	.hidden	_ZN5CGame8waitTimeEi
	.type	_ZN5CGame8waitTimeEi, %function
_ZN5CGame8waitTimeEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r1
	bl	s3eTimerGetMs
	ldr	r3, .L40
	mov	r2, #1
	str	r4, [r3, #16]
	strb	r2, [r3, #12]
	str	r0, [r3, #8]
	ldmfd	sp!, {r4, pc}
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.size	_ZN5CGame8waitTimeEi, .-_ZN5CGame8waitTimeEi
	.section	.text._ZN5CGame6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN5CGame6RenderEv
	.hidden	_ZN5CGame6RenderEv
	.type	_ZN5CGame6RenderEv, %function
_ZN5CGame6RenderEv:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	fstmfdd	sp!, {d8, d9, d10}
	ldr	r7, .L86+8
	ldr	r4, .L86+12
	ldr	r6, [r7, #28]
	sub	sp, sp, #228
	mov	r5, r0
	mov	r0, #3
	blx	r6
	ldr	r1, [r4, #0]
	ldr	r0, .L86+16
	str	r0, [r1, #32]
	ldr	r7, .L86+20
	ldr	r2, [r4, #0]
	str	r0, [r2, #36]
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #20]
	sub	ip, r3, #1
	cmp	ip, #3
	bls	.L83
	cmp	r3, #5
	beq	.L84
.L43:
	ldr	r5, [r7, #32]
	ldr	r6, .L86+20
	cmp	r5, #1
	beq	.L47
	cmp	r5, #2
	beq	.L48
	cmp	r5, #0
	bne	.L75
	mov	r0, #-16777216
	bl	_Z16Iw2DSurfaceClearj
	mov	r1, r5
	mov	r2, r5
	mov	r3, r5
	mov	r0, r5
	bl	_Z15IwGxSetColClearhhhh
	mov	r0, r5
	bl	time
	add	ip, sp, #224
	add	r8, sp, #20
	ldr	r7, .L86+60
	str	r0, [ip, #-4]!
	mov	r0, ip
	bl	localtime
	ldr	r2, .L86+24
	mov	r1, #100
	mov	r3, r0
	mov	r0, r8
	bl	strftime
	ldr	r2, [r4, #0]
	ldr	r0, [r6, #0]
	str	r0, [r2, #16]
	ldr	r3, [r4, #0]
	ldr	r1, [r0, #24]
	str	r1, [r3, #52]
	ldr	r2, [r4, #0]
	ldrsb	ip, [r0, #17]
	str	ip, [r2, #48]
	ldr	r0, [r7, #0]
	ldr	lr, .L86+28
	ldr	r3, [r0, #0]
	orr	r1, r3, #2048
	str	r1, [r0, #0]
	ldr	ip, [r7, #0]
	mov	r0, r8
	ldr	r8, [ip, #0]
	mvn	r1, #0
	orr	r2, r8, #4096
	str	r2, [ip, #0]
	ldr	r8, [r7, #0]
	ldr	r3, [r8, #0]
	orr	ip, r3, #8192
	str	ip, [r8, #0]
	ldr	r3, [r7, #0]
	ldr	r2, [r3, #0]
	orr	r8, r2, #16384
	str	r8, [r3, #0]
	ldr	r3, [r7, #0]
	ldr	ip, [r3, #0]
	orr	r2, ip, #2048
	str	r2, [r3, #0]
	ldr	r8, [r7, #0]
	ldr	r3, [r4, #0]
	ldr	r2, [r8, #512]
	ldr	ip, [r8, #516]
	fmsr	s15, r2	@ int
	umull	r8, lr, ip, lr
	fuitod	d6, s15
	fldd	d7, .L86
	sub	ip, ip, #50
	strh	ip, [r3, #26]	@ movhi
	mov	lr, lr, lsr #2
	sub	r2, r2, #10
	strh	r2, [r3, #24]	@ movhi
	strh	lr, [r3, #22]	@ movhi
	fdivd	d7, d6, d7
	ftosizd	s13, d7
	fmrs	ip, s13	@ int
	strh	ip, [r3, #20]	@ movhi
	ldr	r2, [r7, #0]
	ldr	lr, [r2, #516]
	ldr	r3, [r2, #512]
	add	ip, r3, lr
	add	r3, ip, ip, asl #2
	str	r3, [r6, #4]
	ldr	r2, [r4, #0]
	str	r3, [r2, #32]
	ldr	lr, [r4, #0]
	str	r3, [lr, #36]
	bl	_Z16IwGxFontDrawTextPKci
	ldr	r0, [r7, #0]
	ldr	ip, .L86+32
	ldr	r1, [r0, #512]
	ldr	r3, [r0, #516]
	umull	r0, ip, r1, ip
	ldr	r0, [r6, #36]
	mov	r2, ip, lsr #2
	mov	ip, r3, lsr #1
	strh	r2, [sp, #216]	@ movhi
	strh	ip, [sp, #218]	@ movhi
	ldr	r1, [sp, #216]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2
	bl	_Z9IwGxFlushv
	bl	_Z15Iw2DSurfaceShowv
	bl	_Z15IwGxSwapBuffersv
	mov	r0, r5
	bl	s3eDeviceYield
.L75:
	add	sp, sp, #228
	fldmfdd	sp!, {d8, d9, d10}
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L48:
	ldr	r0, [r6, #40]
	bl	_ZN4CNpc13getPlayerTurnEv
	cmp	r0, #0
	beq	.L57
	ldr	r1, [r6, #20]
	cmp	r1, #3
	ble	.L85
.L58:
	ldr	r0, [r7, #40]
	bl	_ZN4CNpc9getReplyAEv
	mov	r1, r0
	ldr	r0, .L86+80
	bl	strcpy
	ldr	r0, [r7, #40]
	bl	_ZN4CNpc9getReplyBEv
	mov	r1, r0
	ldr	r0, .L86+36
	bl	strcpy
	ldr	r0, [r7, #40]
	bl	_ZN4CNpc9getReplyCEv
	mov	r1, r0
	ldr	r0, .L86+40
	bl	strcpy
	ldr	r0, [r7, #40]
	bl	_ZN4CNpc9getReplyDEv
	mov	r1, r0
	ldr	r0, .L86+44
	bl	strcpy
.L57:
	ldr	r0, [r7, #40]
	bl	_ZN4CNpc13getPlayerTurnEv
	ldr	r5, .L86+20
	cmp	r0, #0
	bne	.L80
	ldr	sl, [r5, #296]
	ldr	r0, [r5, #40]
	add	lr, sl, #1
	cmp	lr, #1
	str	lr, [r5, #296]
	ble	.L61
	bl	_ZN4CNpc7getTextEv
	mov	r1, r0
	add	r0, r5, #508
	bl	strcpy
	ldr	r3, [r5, #296]
	cmp	r3, #3
	ble	.L60
	ldr	r3, [r5, #20]
	cmp	r3, #4
	beq	.L62
	mov	r8, #4
	mov	ip, #1
	str	r8, [r5, #20]
	str	ip, [r5, #296]
.L63:
	ldr	sl, [r7, #40]
	ldr	r6, .L86+20
	mov	r0, sl
	bl	_ZN4CNpc11getHistSizeEv
	sub	r1, r0, #1
	mov	r0, sl
	bl	_ZN4CNpc7getHistEi
	mov	r1, r0
	add	r0, r6, #760
	bl	strcpy
	ldr	r1, [r7, #296]
	cmp	r1, #1
	bgt	.L82
	ldr	r5, .L86+60
	flds	s17, .L86+96
	ldr	r2, [r5, #0]
	add	r0, sp, #8
	flds	s10, [r2, #516]	@ int
	add	r1, r6, #760
	mov	r2, #1
	fuitos	s18, s10
	fmuls	s17, s18, s17
	ftosizs	s16, s17
	fmrs	r3, s16	@ int
	bl	_Z10createRectPcbi
	ldr	r0, [r6, #296]
	cmp	r0, #1
	ble	.L65
	b	.L64
.L87:
	.align	3
.L86:
	.word	0
	.word	1075707904
	.word	g_IwGxFuncTable
	.word	g_IwGxFontState
	.word	2457
	.word	.LANCHOR0
	.word	.LC0
	.word	-858993459
	.word	-1431655765
	.word	.LANCHOR0+352
	.word	.LANCHOR0+404
	.word	.LANCHOR0+456
	.word	.LC1
	.word	-13426142
	.word	.LC2
	.word	g_IwGxState
	.word	.LANCHOR0+44
	.word	.LANCHOR0+508
	.word	-14540254
	.word	-12303292
	.word	.LANCHOR0+300
	.word	1050253722
	.word	1040187392
	.word	1036831949
	.word	1008981770
	.word	0
	.word	1062836634
	.word	1033476506
	.word	1056796836
	.word	-1127428915
	.word	1020054733
.L47:
	mov	r0, #20
	mov	r2, r0
	mov	r1, r0
	mov	r3, #0
	bl	_Z15IwGxSetColClearhhhh
	ldr	r1, [r4, #0]
	ldr	r8, [r6, #0]
	str	r8, [r1, #16]
	ldr	r6, [r4, #0]
	ldr	r5, [r8, #24]
	str	r5, [r6, #52]
	ldr	r5, .L86+60
	ldr	sl, [r4, #0]
	ldrsb	ip, [r8, #17]
	str	ip, [sl, #48]
	ldr	r3, [r5, #0]
	flds	s16, .L86+100
	ldr	r7, [r3, #0]
	flds	s17, .L86+108
	orr	r0, r7, #2048
	str	r0, [r3, #0]
	ldr	r1, [r5, #0]
	ldr	r0, .L86+72
	ldr	r2, [r1, #0]
	orr	r8, r2, #4096
	str	r8, [r1, #0]
	ldr	ip, [r5, #0]
	ldr	r6, [ip, #0]
	orr	sl, r6, #8192
	str	sl, [ip, #0]
	ldr	r3, [r5, #0]
	ldr	r7, [r3, #0]
	orr	r2, r7, #16384
	str	r2, [r3, #0]
	ldr	r8, [r5, #0]
	ldr	r1, [r8, #0]
	orr	r6, r1, #2048
	str	r6, [r8, #0]
	ldr	ip, [r5, #0]
	flds	s11, [ip, #516]	@ int
	flds	s12, [ip, #512]	@ int
	fuitos	s8, s11
	fuitos	s9, s12
	fmuls	s12, s8, s17
	fmuls	s13, s9, s16
	fmuls	s8, s8, s16
	ftosizs	s7, s9
	ftosizs	s6, s12
	ftosizs	s5, s13
	ftosizs	s4, s8
	fmrs	sl, s7	@ int
	mov	r7, sl, asl #16
	fmrs	r3, s6	@ int
	fmrs	r2, s5	@ int
	fmrs	r1, s4	@ int
	mov	r7, r7, lsr #16
	mov	ip, r3, asl #16
	mov	r8, r2, asl #16
	mov	r6, r1, asl #16
	mov	sl, r8, lsr #16
	mov	r6, r6, lsr #16
	mov	r8, ip, lsr #16
	bl	_Z13Iw2DSetColourj
	strh	r7, [sp, #208]	@ movhi
	strh	r8, [sp, #210]	@ movhi
	strh	sl, [sp, #212]	@ movhi
	strh	r6, [sp, #214]	@ movhi
	ldr	r1, [sp, #208]
	ldr	r0, [sp, #212]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L86+76
	bl	_Z13Iw2DSetColourj
	strh	r7, [sp, #200]	@ movhi
	strh	r8, [sp, #202]	@ movhi
	strh	sl, [sp, #204]	@ movhi
	strh	r6, [sp, #206]	@ movhi
	ldr	r1, [sp, #200]
	ldr	r0, [sp, #204]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	ldr	r3, [r5, #0]
	mov	r2, sl, asl #16
	mov	r1, r2, asr #16
	flds	s14, [r3, #512]	@ int
	fmsr	s3, r1	@ int
	flds	s2, .L86+84
	ldr	ip, [r4, #0]
	fuitos	s1, s14
	fsitos	s0, s3
	strh	r8, [ip, #26]	@ movhi
	strh	r7, [ip, #24]	@ movhi
	strh	r6, [ip, #22]	@ movhi
	mvn	r1, #0
	ldr	r0, .L86+48
	fmacs	s0, s1, s2
	ftosizs	s15, s0
	fmrs	r8, s15	@ int
	strh	r8, [ip, #20]	@ movhi
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	ldr	r0, [r5, #0]
	flds	s11, .L86+88
	flds	s10, [r0, #512]	@ int
	flds	s13, [r0, #516]	@ int
	ldr	r0, .L86+52
	fuitos	s9, s10
	fuitos	s8, s13
	fmuls	s13, s9, s16
	fmuls	s12, s8, s17
	fmuls	s8, s8, s11
	ftosizs	s7, s9
	ftosizs	s6, s13
	ftosizs	s12, s12
	ftosizs	s5, s8
	fmrs	sl, s7	@ int
	mov	r7, sl, asl #16
	fmrs	r2, s6	@ int
	fmrs	r3, s12	@ int
	fmrs	ip, s5	@ int
	mov	r7, r7, lsr #16
	mov	r1, r2, asl #16
	mov	r8, r3, asl #16
	mov	r6, ip, asl #16
	mov	sl, r1, lsr #16
	mov	r6, r6, lsr #16
	mov	r8, r8, lsr #16
	bl	_Z13Iw2DSetColourj
	strh	sl, [sp, #196]	@ movhi
	strh	r7, [sp, #192]	@ movhi
	strh	r8, [sp, #194]	@ movhi
	strh	r6, [sp, #198]	@ movhi
	ldr	r1, [sp, #192]
	ldr	r0, [sp, #196]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L86+76
	bl	_Z13Iw2DSetColourj
	strh	sl, [sp, #188]	@ movhi
	strh	r7, [sp, #184]	@ movhi
	strh	r8, [sp, #186]	@ movhi
	strh	r6, [sp, #190]	@ movhi
	ldr	r1, [sp, #184]
	ldr	r0, [sp, #188]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	mov	sl, sl, asl #16
	ldr	r0, [r5, #0]
	mov	sl, sl, asr #16
	flds	s3, [r0, #512]	@ int
	fmsr	s4, sl	@ int
	flds	s14, .L86+92
	ldr	r3, [r4, #0]
	fuitos	s2, s3
	fsitos	s1, s4
	ldr	r0, .L86+56
	strh	r8, [r3, #26]	@ movhi
	strh	r7, [r3, #24]	@ movhi
	strh	r6, [r3, #22]	@ movhi
	mvn	r1, #0
	fmacs	s1, s2, s14
	ftosizs	s0, s1
	fmrs	r2, s0	@ int
	strh	r2, [r3, #20]	@ movhi
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	bl	_Z15IwGxSwapBuffersv
	mov	r0, #0
	bl	s3eDeviceYield
	b	.L75
.L83:
	bl	s3eTimerGetMs
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #16]
	add	r2, r2, r3
	mov	r3, r2, asr #31
	cmp	r1, r3
	cmpeq	r0, r2
	bls	.L43
	ldr	r6, [r7, #20]
	mov	r0, r5
	mov	lr, #5
	mov	r5, #0
	mov	r1, #4000
	str	r6, [r7, #24]
	str	lr, [r7, #20]
	strb	r5, [r7, #12]
	str	r5, [r7, #8]
	str	r5, [r7, #16]
	bl	_ZN5CGame8waitTimeEi
	b	.L43
.L61:
	bl	_ZN4CNpc7getTextEv
	mov	r1, r0
	add	r0, r5, #760
	bl	strcpy
.L80:
	ldr	r3, [r5, #296]
.L60:
	mov	r5, #4
	cmp	r3, #1
	str	r5, [r7, #20]
	ble	.L63
.L82:
	ldr	r5, .L86+60
.L64:
	ldr	r3, [r5, #0]
	flds	s15, .L86+96
	flds	s1, [r3, #516]	@ int
	add	r0, sp, #20
	ldr	r1, .L86+64
	mov	r2, #0
	fuitos	s0, s1
	fmuls	s15, s0, s15
	ftosizs	s13, s15
	fmrs	r3, s13	@ int
	bl	_Z10createRectPcbi
	ldr	r6, [r7, #296]
	cmp	r6, #1
	ble	.L65
	ldr	r7, [sp, #24]
	ldr	r3, [sp, #20]
	add	r0, sp, #8
	ldr	r1, .L86+68
	mov	r2, #1
	str	r7, [sp, #0]
	bl	_Z10createRectPcb7CIwRect
.L65:
	ldr	r0, [r5, #0]
	flds	s5, .L86+100
	flds	s17, [r0, #516]	@ int
	flds	s16, [r0, #512]	@ int
	flds	s6, .L86+104
	flds	s18, .L86+108
	fuitos	s2, s17
	fuitos	s3, s16
	flds	s4, .L86+112
	ldr	r0, .L86+72
	flds	s16, .L86+116
	flds	s17, .L86+120
	fmuls	s12, s2, s6
	fmuls	s4, s3, s4
	fmuls	s2, s2, s18
	fmuls	s3, s3, s5
	ftosizs	s12, s12
	ftosizs	s13, s4
	ftosizs	s0, s2
	ftosizs	s1, s3
	fmrs	r2, s12	@ int
	fmrs	r8, s13	@ int
	fmrs	r3, s0	@ int
	fmrs	ip, s1	@ int
	mov	r7, r2, asl #16
	mov	lr, r8, asl #16
	mov	r6, r3, asl #16
	mov	r1, ip, asl #16
	mov	r8, lr, lsr #16
	mov	r6, r6, lsr #16
	mov	r7, r7, lsr #16
	mov	sl, r1, lsr #16
	bl	_Z13Iw2DSetColourj
	strh	r8, [sp, #176]	@ movhi
	strh	sl, [sp, #180]	@ movhi
	strh	r7, [sp, #182]	@ movhi
	strh	r6, [sp, #178]	@ movhi
	ldr	r1, [sp, #176]
	ldr	r0, [sp, #180]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L86+76
	bl	_Z13Iw2DSetColourj
	strh	r8, [sp, #168]	@ movhi
	strh	sl, [sp, #172]	@ movhi
	strh	r7, [sp, #174]	@ movhi
	strh	r6, [sp, #170]	@ movhi
	ldr	r1, [sp, #168]
	ldr	r0, [sp, #172]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	ldr	r2, [r5, #0]
	mov	ip, sl, asl #16
	mov	r1, r8, asl #16
	mov	r3, ip, asr #16
	mov	r0, r1, asr #16
	flds	s11, [r2, #512]	@ int
	fmsr	s10, r3	@ int
	fmsr	s9, r0	@ int
	ldr	r3, [r4, #0]
	fuitos	s8, s11
	fsitos	s7, s10
	fsitos	s15, s9
	strh	r6, [r3, #26]	@ movhi
	strh	r7, [r3, #22]	@ movhi
	mvn	r1, #0
	ldr	r0, .L86+80
	fmacs	s7, s8, s17
	fmacs	s15, s8, s16
	ftosizs	s14, s7
	ftosizs	s6, s15
	fmrs	sl, s14	@ int
	fmrs	r2, s6	@ int
	mov	ip, sl, asl #16
	mov	r8, r2, asl #16
	mov	sl, ip, lsr #16
	mov	r8, r8, lsr #16
	strh	sl, [r3, #20]	@ movhi
	strh	r8, [r3, #24]	@ movhi
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	ldr	r1, [r5, #0]
	mov	r2, sl, asl #16
	mov	ip, r2, asr #16
	flds	s5, [r1, #512]	@ int
	fmsr	s4, ip	@ int
	mov	r3, r8, asl #16
	mov	r0, r3, asr #16
	fuitos	s11, s5
	fsitos	s2, s4
	fmsr	s3, r0	@ int
	flds	s10, .L88
	ldr	r0, .L88+20
	fsitos	s1, s3
	fmacs	s2, s11, s16
	fmacs	s1, s11, s17
	ftosizs	s12, s2
	ftosizs	s0, s1
	fmrs	r1, s12	@ int
	mov	sl, r1, asl #16
	mov	r2, sl, asr #16
	fmsr	s13, r2	@ int
	fmrs	r8, s0	@ int
	fsitos	s9, s13
	mov	ip, r8, asl #16
	mov	r8, ip, lsr #16
	fmacs	s9, s11, s10
	ftosizs	s8, s9
	fmrs	r3, s8	@ int
	mov	r1, r3, asl #16
	mov	sl, r1, lsr #16
	bl	_Z13Iw2DSetColourj
	strh	r8, [sp, #160]	@ movhi
	strh	sl, [sp, #164]	@ movhi
	strh	r7, [sp, #166]	@ movhi
	strh	r6, [sp, #162]	@ movhi
	ldr	r1, [sp, #160]
	ldr	r0, [sp, #164]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L88+24
	bl	_Z13Iw2DSetColourj
	strh	r8, [sp, #152]	@ movhi
	strh	sl, [sp, #156]	@ movhi
	strh	r7, [sp, #158]	@ movhi
	strh	r6, [sp, #154]	@ movhi
	ldr	r1, [sp, #152]
	ldr	r0, [sp, #156]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	ldr	r2, [r5, #0]
	mov	ip, sl, asl #16
	mov	r1, r8, asl #16
	mov	r3, ip, asr #16
	mov	r0, r1, asr #16
	flds	s7, [r2, #512]	@ int
	fmsr	s14, r3	@ int
	fmsr	s15, r0	@ int
	ldr	r3, [r4, #0]
	fuitos	s6, s7
	fsitos	s5, s14
	fsitos	s4, s15
	strh	r6, [r3, #26]	@ movhi
	strh	r7, [r3, #22]	@ movhi
	mvn	r1, #0
	ldr	r0, .L88+28
	mov	r7, r7, asl #16
	fmacs	s5, s6, s17
	fmacs	s4, s6, s16
	ftosizs	s3, s5
	ftosizs	s2, s4
	fmrs	r2, s3	@ int
	fmrs	r8, s2	@ int
	mov	sl, r2, asl #16
	mov	ip, r8, asl #16
	mov	r8, ip, lsr #16
	mov	sl, sl, lsr #16
	strh	sl, [r3, #20]	@ movhi
	strh	r8, [r3, #24]	@ movhi
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	ldr	r2, [r5, #0]
	mov	r1, sl, asl #16
	mov	sl, r1, asr #16
	fmsr	s12, sl	@ int
	flds	s1, [r2, #512]	@ int
	mov	r8, r8, asl #16
	mov	ip, r8, asr #16
	fsitos	s9, s12
	fuitos	s4, s1
	mov	r0, r7, asr #16
	flds	s11, [r2, #516]	@ int
	fmsr	s0, r0	@ int
	fmsr	s13, ip	@ int
	flds	s3, .L88+4
	fuitos	s8, s11
	fsitos	s14, s0
	fmacs	s9, s4, s16
	fsitos	s7, s13
	flds	s10, .L88+8
	ldr	r0, .L88+20
	fmacs	s14, s8, s18
	ftosizs	s6, s9
	fmacs	s7, s4, s10
	ftosizs	s2, s14
	fmrs	r3, s6	@ int
	ftosizs	s5, s7
	mov	r1, r3, asl #16
	mov	sl, r1, asr #16
	fmsr	s15, sl	@ int
	fmrs	ip, s2	@ int
	fmrs	r2, s5	@ int
	fsitos	s1, s15
	mov	r7, ip, asl #16
	mov	r7, r7, lsr #16
	mov	r8, r2, asl #16
	mov	r8, r8, lsr #16
	fmacs	s1, s4, s3
	ftosizs	s13, s1
	fmrs	r3, s13	@ int
	mov	r1, r3, asl #16
	mov	sl, r1, lsr #16
	bl	_Z13Iw2DSetColourj
	strh	r8, [sp, #144]	@ movhi
	strh	sl, [sp, #148]	@ movhi
	strh	r6, [sp, #146]	@ movhi
	strh	r7, [sp, #150]	@ movhi
	ldr	r1, [sp, #144]
	ldr	r0, [sp, #148]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L88+24
	bl	_Z13Iw2DSetColourj
	strh	r8, [sp, #136]	@ movhi
	strh	sl, [sp, #140]	@ movhi
	strh	r6, [sp, #138]	@ movhi
	strh	r7, [sp, #142]	@ movhi
	ldr	r1, [sp, #136]
	ldr	r0, [sp, #140]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	ldr	r2, [r5, #0]
	mov	ip, sl, asl #16
	mov	r1, r8, asl #16
	mov	r3, ip, asr #16
	mov	r0, r1, asr #16
	flds	s0, [r2, #512]	@ int
	fmsr	s10, r3	@ int
	fmsr	s12, r0	@ int
	ldr	r3, [r4, #0]
	fuitos	s11, s0
	fsitos	s9, s10
	fsitos	s8, s12
	strh	r6, [r3, #26]	@ movhi
	strh	r7, [r3, #22]	@ movhi
	mvn	r1, #0
	ldr	r0, .L88+32
	fmacs	s9, s11, s17
	fmacs	s8, s11, s16
	ftosizs	s7, s9
	ftosizs	s6, s8
	fmrs	sl, s7	@ int
	fmrs	r2, s6	@ int
	mov	ip, sl, asl #16
	mov	r8, r2, asl #16
	mov	sl, ip, lsr #16
	mov	r8, r8, lsr #16
	strh	sl, [r3, #20]	@ movhi
	strh	r8, [r3, #24]	@ movhi
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	ldr	r2, [r5, #0]
	mov	r1, sl, asl #16
	mov	ip, r1, asr #16
	flds	s14, [r2, #512]	@ int
	fmsr	s5, ip	@ int
	mov	r3, r8, asl #16
	mov	r0, r3, asr #16
	fuitos	s10, s14
	fsitos	s2, s5
	fmsr	s4, r0	@ int
	flds	s12, .L88+12
	flds	s3, .L88+16
	ldr	r0, .L88+20
	fsitos	s15, s4
	fmacs	s2, s10, s16
	fmacs	s15, s10, s3
	ftosizs	s1, s2
	ftosizs	s0, s15
	fmrs	r2, s1	@ int
	mov	sl, r2, asl #16
	mov	r8, sl, asr #16
	fmsr	s13, r8	@ int
	fmrs	r1, s0	@ int
	fsitos	s11, s13
	mov	ip, r1, asl #16
	mov	sl, ip, lsr #16
	fmacs	s11, s10, s12
	ftosizs	s9, s11
	fmrs	r3, s9	@ int
	mov	r2, r3, asl #16
	mov	r8, r2, lsr #16
	bl	_Z13Iw2DSetColourj
	strh	sl, [sp, #128]	@ movhi
	strh	r8, [sp, #132]	@ movhi
	strh	r6, [sp, #130]	@ movhi
	strh	r7, [sp, #134]	@ movhi
	ldr	r1, [sp, #128]
	ldr	r0, [sp, #132]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	ldr	r0, .L88+24
	bl	_Z13Iw2DSetColourj
	strh	sl, [sp, #120]	@ movhi
	strh	r8, [sp, #124]	@ movhi
	strh	r6, [sp, #122]	@ movhi
	strh	r7, [sp, #126]	@ movhi
	ldr	r1, [sp, #120]
	ldr	r0, [sp, #124]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	bl	_Z9IwGxFlushv
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj
	mov	r8, r8, asl #16
	ldr	r0, [r5, #0]
	mov	r1, sl, asl #16
	mov	sl, r1, asr #16
	mov	r8, r8, asr #16
	flds	s8, [r0, #512]	@ int
	fmsr	s7, sl	@ int
	fmsr	s6, r8	@ int
	ldr	r3, [r4, #0]
	fuitos	s5, s8
	fsitos	s4, s7
	fsitos	s3, s6
	ldr	r0, .L88+36
	strh	r6, [r3, #26]	@ movhi
	strh	r7, [r3, #22]	@ movhi
	mvn	r1, #0
	fmacs	s4, s5, s16
	fmacs	s3, s5, s17
	ftosizs	s14, s4
	ftosizs	s2, s3
	fmrs	ip, s14	@ int
	fmrs	r2, s2	@ int
	strh	ip, [r3, #24]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	bl	_Z16IwGxFontDrawTextPKci
	bl	_Z9IwGxFlushv
	bl	_Z9IwGxFlushv
	bl	_Z15Iw2DSurfaceShowv
	bl	_Z15IwGxSwapBuffersv
	mov	r0, #0
	bl	s3eDeviceYield
	b	.L75
.L89:
	.align	2
.L88:
	.word	1056964608
	.word	-1090519040
	.word	1024416809
	.word	1057048494
	.word	1018712556
	.word	-14540254
	.word	-12303292
	.word	.LANCHOR0+352
	.word	.LANCHOR0+404
	.word	.LANCHOR0+456
.L84:
	bl	s3eTimerGetMs
	ldr	r3, [r7, #8]
	ldr	ip, [r7, #16]
	add	r2, ip, r3
	mov	r3, r2, asr #31
	cmp	r1, r3
	cmpeq	r0, r2
	bls	.L43
	mov	r0, #0
	mov	r1, #1
	strb	r1, [r7, #28]
	strb	r0, [r7, #12]
	str	r0, [r7, #20]
	str	r0, [r7, #8]
	str	r0, [r7, #16]
	b	.L43
.L85:
	ldr	r0, [r6, #40]
	bl	_ZN4CNpc11chooseReplyEi
	ldr	r0, [r6, #40]
	bl	_ZN4CNpc8sendTextEv
	mov	r1, r0
	add	r0, r6, #44
	bl	strcpy
	ldr	r3, [r6, #296]
	mov	r2, #4
	add	r0, r3, #1
	str	r2, [r6, #20]
	str	r0, [r6, #296]
	b	.L58
.L62:
	str	r3, [r5, #20]
	b	.L82
	.size	_ZN5CGame6RenderEv, .-_ZN5CGame6RenderEv
	.section	.text._ZN5CGame6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN5CGame6UpdateEv
	.hidden	_ZN5CGame6UpdateEv
	.type	_ZN5CGame6UpdateEv, %function
_ZN5CGame6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	fstmfdd	sp!, {d8}
	mov	r0, #0
	bl	s3ePointerGetState
	ldr	r4, .L162+16
	cmp	r0, #0
	beq	.L91
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L157
.L91:
	mov	r0, #0
	bl	s3ePointerGetState
	cmp	r0, #1
	beq	.L123
.L93:
	mov	r0, #0
	bl	s3ePointerGetState
	cmp	r0, #1
	mov	r5, r0
	beq	.L158
.L102:
	ldr	r5, [r4, #24]
	ldr	r6, .L162+16
	cmp	r5, #0
	bne	.L130
	ldr	lr, [r6, #20]
	cmp	lr, #4
	beq	.L159
.L130:
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L157:
	bl	s3ePointerGetX
	ldr	r5, .L162+20
	ldr	r6, .L162+24
	ldr	r1, [r5, #0]
	ldr	r2, [r1, #512]
	umull	r1, r2, r6, r2
	cmp	r0, r2, lsr #2
	bls	.L130
	bl	s3ePointerGetX
	ldr	r1, [r5, #0]
	ldr	r2, [r1, #512]
	umull	r1, r6, r2, r6
	mov	r6, r6, lsr #2
	mov	r7, r0
	ldr	r0, [r4, #36]
	ldr	r3, [r0, #0]
	ldr	ip, [r3, #0]
	blx	ip
	mov	r0, r0, asl #16
	add	r6, r6, r0, asr #16
	cmp	r7, r6
	bcs	.L130
	bl	s3ePointerGetY
	ldr	r3, [r5, #0]
	ldr	ip, [r3, #516]
	cmp	r0, ip, lsr #1
	bls	.L130
	bl	s3ePointerGetY
	ldr	r3, [r5, #0]
	ldr	r1, [r3, #516]
	mov	r5, r1, lsr #1
	mov	r6, r0
	ldr	r0, [r4, #36]
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
	mov	r0, r0, asl #16
	add	r5, r5, r0, asr #16
	cmp	r6, r5
	movcc	r3, #1
	strcc	r3, [r4, #32]
	b	.L130
.L158:
	ldr	r3, [r4, #32]
	ldr	r6, .L162+16
	cmp	r3, #2
	bne	.L102
	bl	s3ePointerGetX
	ldr	r4, .L162+20
	flds	s16, .L162
	ldr	r2, [r4, #0]
	flds	s15, [r2, #512]	@ int
	fuitos	s14, s15
	fmuls	s14, s14, s16
	fmsr	s0, r0	@ int
	fsitos	s12, s0
	fcmpes	s12, s14
	fmstat
	ble	.L130
	bl	s3ePointerGetX
	ldr	r1, [r4, #0]
	flds	s3, [r1, #512]	@ int
	fuitos	s2, s3
	fmsr	s13, r0	@ int
	fsitos	s1, s13
	fcmpes	s1, s2
	fmstat
	bpl	.L130
	bl	s3ePointerGetY
	ldr	ip, [r4, #0]
	flds	s7, [ip, #516]	@ int
	fuitos	s5, s7
	fmuls	s5, s5, s16
	fmsr	s6, r0	@ int
	fsitos	s4, s6
	fcmpes	s4, s5
	fmstat
	ble	.L130
	bl	s3ePointerGetY
	ldr	r3, [r4, #0]
	flds	s9, .L162+4
	flds	s12, [r3, #516]	@ int
	fuitos	s11, s12
	fmuls	s9, s11, s9
	fmsr	s10, r0	@ int
	fsitos	s8, s10
	fcmpes	s8, s9
	fmstat
	bpl	.L130
	mov	r0, #0
	str	r0, [r6, #16]
	str	r5, [r6, #32]
	str	r0, [r6, #24]
	str	r0, [r6, #20]
	strb	r0, [r6, #28]
	str	r0, [r6, #8]
	strb	r0, [r6, #12]
	b	.L130
.L123:
	ldr	lr, [r4, #32]
	cmp	lr, #1
	bne	.L93
	bl	s3ePointerGetX
	ldr	r5, .L162+20
	flds	s16, .L162
	ldr	r2, [r5, #0]
	flds	s0, [r2, #512]	@ int
	fuitos	s15, s0
	fmuls	s15, s15, s16
	fmsr	s13, r0	@ int
	fsitos	s14, s13
	fcmpes	s14, s15
	fmstat
	bgt	.L160
.L94:
	bl	s3ePointerGetX
	ldr	ip, [r5, #0]
	flds	s11, .L162
	flds	s14, [ip, #512]	@ int
	ldr	r5, .L162+20
	fuitos	s0, s14
	fmuls	s11, s0, s11
	fmsr	s12, r0	@ int
	fsitos	s10, s12
	fcmpes	s10, s11
	fmstat
	ble	.L130
	bl	s3ePointerGetX
	ldr	r2, [r5, #0]
	flds	s1, [r2, #512]	@ int
	fuitos	s15, s1
	fmsr	s13, r0	@ int
	fsitos	s0, s13
	fcmpes	s0, s15
	fmstat
	bpl	.L130
	bl	s3ePointerGetY
	ldr	r1, [r5, #0]
	flds	s3, .L162+8
	flds	s6, [r1, #516]	@ int
	fuitos	s5, s6
	fmuls	s3, s5, s3
	fmsr	s4, r0	@ int
	fsitos	s2, s4
	fcmpes	s2, s3
	fmstat
	ble	.L130
	bl	s3ePointerGetY
	ldr	ip, [r5, #0]
	flds	s8, .L162+12
	flds	s11, [ip, #516]	@ int
	fuitos	s10, s11
	fmuls	s8, s10, s8
	fmsr	s9, r0	@ int
	fsitos	s7, s9
	fcmpes	s7, s8
	fmstat
	movmi	ip, #2
	strmi	ip, [r4, #32]
	b	.L130
.L159:
	mov	r0, r5
	bl	s3ePointerGetState
	cmp	r0, #4
	bne	.L130
	ldr	r2, [r6, #32]
	cmp	r2, #2
	bne	.L130
	bl	s3ePointerGetX
	ldr	r7, .L162+20
	flds	s0, .L162
	ldr	r1, [r7, #0]
	flds	s2, [r1, #512]	@ int
	fuitos	s1, s2
	fmuls	s0, s1, s0
	fmsr	s15, r0	@ int
	fsitos	s14, s15
	fcmpes	s14, s0
	fmstat
	bgt	.L161
.L107:
	bl	s3ePointerGetX
	ldr	r5, [r7, #0]
	flds	s15, .L162+32
	flds	s4, [r5, #512]	@ int
	ldr	r5, .L162+20
	fuitos	s3, s4
	fmuls	s15, s3, s15
	fmsr	s2, r0	@ int
	fsitos	s1, s2
	fcmpes	s1, s15
	fmstat
	bgt	.L127
.L112:
	bl	s3ePointerGetX
	ldr	r3, [r7, #0]
	flds	s6, .L162
	flds	s13, [r3, #512]	@ int
	ldr	r5, .L162+20
	fuitos	s8, s13
	fmuls	s6, s8, s6
	fmsr	s7, r0	@ int
	fsitos	s5, s7
	fcmpes	s5, s6
	fmstat
	bgt	.L128
.L116:
	bl	s3ePointerGetX
	ldr	r2, [r7, #0]
	flds	s10, .L162+32
	flds	s0, [r2, #512]	@ int
	ldr	r5, .L162+20
	fuitos	s12, s0
	fmuls	s10, s12, s10
	fmsr	s11, r0	@ int
	fsitos	s9, s11
	fcmpes	s9, s10
	fmstat
	ble	.L130
	bl	s3ePointerGetX
	ldr	r3, [r5, #0]
	flds	s15, [r3, #512]	@ int
	fuitos	s14, s15
	fmsr	s1, r0	@ int
	fsitos	s0, s1
	fcmpes	s0, s14
	fmstat
	bpl	.L130
	bl	s3ePointerGetY
	ldr	r2, [r5, #0]
	flds	s3, .L162+36
	flds	s6, [r2, #516]	@ int
	fuitos	s5, s6
	fmuls	s3, s5, s3
	fmsr	s4, r0	@ int
	fsitos	s2, s4
	fcmpes	s2, s3
	fmstat
	ble	.L130
	bl	s3ePointerGetY
	ldr	r1, [r5, #0]
	flds	s9, [r1, #516]	@ int
	fuitos	s8, s9
	fmsr	s13, r0	@ int
	fsitos	s7, s13
	fcmpes	s7, s8
	fmstat
	movmi	r1, #3
	strmi	r1, [r4, #20]
	b	.L130
.L160:
	bl	s3ePointerGetX
	ldr	r1, [r5, #0]
	flds	s4, [r1, #512]	@ int
	fuitos	s2, s4
	fmsr	s3, r0	@ int
	fsitos	s1, s3
	fcmpes	s1, s2
	fmstat
	bpl	.L94
	bl	s3ePointerGetY
	ldr	ip, [r5, #0]
	flds	s8, [ip, #516]	@ int
	fuitos	s6, s8
	fmuls	s6, s6, s16
	fmsr	s7, r0	@ int
	fsitos	s5, s7
	fcmpes	s5, s6
	fmstat
	ble	.L94
	bl	s3ePointerGetY
	ldr	r3, [r5, #0]
	flds	s10, .L162+4
	flds	s14, [r3, #516]	@ int
	fuitos	s12, s14
	fmuls	s10, s12, s10
	fmsr	s11, r0	@ int
	fsitos	s9, s11
	fcmpes	s9, s10
	fmstat
	bpl	.L94
	ldr	lr, .L162+16
	mov	r0, #0
	str	r0, [lr, #32]
	b	.L130
.L163:
	.align	2
.L162:
	.word	0
	.word	1033476506
	.word	1040187392
	.word	1045220557
	.word	.LANCHOR0
	.word	g_IwGxState
	.word	-1431655765
	.word	1062836634
	.word	1056964608
	.word	1064094925
.L161:
	bl	s3ePointerGetX
	ldr	ip, [r7, #0]
	flds	s4, .L162+32
	flds	s6, [ip, #512]	@ int
	fuitos	s5, s6
	fmuls	s4, s5, s4
	fmsr	s13, r0	@ int
	fsitos	s3, s13
	fcmpes	s3, s4
	fmstat
	bpl	.L107
	bl	s3ePointerGetY
	ldr	r3, [r7, #0]
	flds	s8, .L162+28
	flds	s11, [r3, #516]	@ int
	fuitos	s10, s11
	fmuls	s8, s10, s8
	fmsr	s9, r0	@ int
	fsitos	s7, s9
	fcmpes	s7, s8
	fmstat
	ble	.L107
	bl	s3ePointerGetY
	ldr	r2, [r7, #0]
	flds	s0, .L162+36
	flds	s1, [r2, #516]	@ int
	fuitos	s15, s1
	fmuls	s0, s15, s0
	fmsr	s14, r0	@ int
	fsitos	s12, s14
	fcmpes	s12, s0
	fmstat
	strmi	r5, [r6, #20]
	bmi	.L130
	b	.L107
.L127:
	bl	s3ePointerGetX
	ldr	r1, [r5, #0]
	flds	s13, [r1, #512]	@ int
	fuitos	s3, s13
	fmsr	s4, r0	@ int
	fsitos	s2, s4
	fcmpes	s2, s3
	fmstat
	bpl	.L112
	bl	s3ePointerGetY
	ldr	ip, [r5, #0]
	flds	s6, .L162+28
	flds	s9, [ip, #516]	@ int
	fuitos	s8, s9
	fmuls	s6, s8, s6
	fmsr	s7, r0	@ int
	fsitos	s5, s7
	fcmpes	s5, s6
	fmstat
	ble	.L112
	bl	s3ePointerGetY
	ldr	r3, [r5, #0]
	flds	s11, .L162+36
	flds	s14, [r3, #516]	@ int
	fuitos	s0, s14
	fmuls	s11, s0, s11
	fmsr	s12, r0	@ int
	fsitos	s10, s12
	fcmpes	s10, s11
	fmstat
	movmi	r3, #1
	strmi	r3, [r4, #20]
	bmi	.L130
	b	.L112
.L128:
	bl	s3ePointerGetX
	ldr	r2, [r5, #0]
	flds	s15, .L162+32
	flds	s4, [r2, #512]	@ int
	fuitos	s3, s4
	fmuls	s15, s3, s15
	fmsr	s2, r0	@ int
	fsitos	s1, s2
	fcmpes	s1, s15
	fmstat
	bpl	.L116
	bl	s3ePointerGetY
	ldr	r1, [r5, #0]
	flds	s6, .L162+36
	flds	s8, [r1, #516]	@ int
	fuitos	s7, s8
	fmuls	s6, s7, s6
	fmsr	s13, r0	@ int
	fsitos	s5, s13
	fcmpes	s5, s6
	fmstat
	ble	.L116
	bl	s3ePointerGetY
	ldr	ip, [r5, #0]
	flds	s12, [ip, #516]	@ int
	fuitos	s10, s12
	fmsr	s11, r0	@ int
	fsitos	s9, s11
	fcmpes	s9, s10
	fmstat
	movmi	ip, #2
	strmi	ip, [r4, #20]
	bmi	.L130
	b	.L116
	.size	_ZN5CGame6UpdateEv, .-_ZN5CGame6UpdateEv
	.section	.text._ZN5CGameD1Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameD1Ev
	.hidden	_ZN5CGameD1Ev
	.type	_ZN5CGameD1Ev, %function
_ZN5CGameD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L169
	mov	r5, r0
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L165
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L165:
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L166
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
.L166:
	bl	_Z21IwResManagerTerminatev
	bl	_Z17IwGxFontTerminatev
	bl	_Z13Iw2DTerminatev
	bl	_Z13IwGxTerminatev
	ldr	r4, [r4, #40]
	cmp	r4, #0
	beq	.L167
	mov	r0, r4
	bl	_ZN4CNpcD1Ev
	mov	r0, r4
	bl	_ZdlPv
.L167:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
.L170:
	.align	2
.L169:
	.word	.LANCHOR0
	.size	_ZN5CGameD1Ev, .-_ZN5CGameD1Ev
	.section	.text._ZN5CGameD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameD2Ev
	.hidden	_ZN5CGameD2Ev
	.type	_ZN5CGameD2Ev, %function
_ZN5CGameD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L176
	mov	r5, r0
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L172
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L172:
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L173
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
.L173:
	bl	_Z21IwResManagerTerminatev
	bl	_Z17IwGxFontTerminatev
	bl	_Z13Iw2DTerminatev
	bl	_Z13IwGxTerminatev
	ldr	r4, [r4, #40]
	cmp	r4, #0
	beq	.L174
	mov	r0, r4
	bl	_ZN4CNpcD1Ev
	mov	r0, r4
	bl	_ZdlPv
.L174:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
.L177:
	.align	2
.L176:
	.word	.LANCHOR0
	.size	_ZN5CGameD2Ev, .-_ZN5CGameD2Ev
	.section	.text._ZN5CGameC1Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameC1Ev
	.hidden	_ZN5CGameC1Ev
	.type	_ZN5CGameC1Ev, %function
_ZN5CGameC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r8, r0
	mov	r0, #20
	bl	_Znwj
	ldr	r4, .L182
	ldr	r6, .L182+4
	ldr	r1, .L182+8
	mov	r5, #0
	ldr	r7, .L182+12
	mov	sl, r0
	bl	_ZN4CNpcC1EPc
	mov	r3, #4
	mov	r0, #1
	str	r3, [r4, #20]
	str	r0, [r4, #4]
	str	sl, [r4, #40]
	str	r5, [r4, #32]
	str	r5, [r4, #24]
	str	r5, [r4, #296]
	strb	r5, [r4, #28]
	str	r5, [r4, #8]
	strb	r5, [r4, #12]
	str	r5, [r4, #16]
	strb	r5, [r4, #1010]
	bl	_Z8IwGxInitv
	bl	_Z8Iw2DInitv
	mov	r2, r5
	ldr	r1, .L182+16
	ldr	r0, [r6, #0]
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	mov	r2, r7
	mov	r3, r5
	ldr	r1, .L182+20
	ldr	r0, [r6, #0]
	bl	_ZNK13CIwResManager11GetResNamedEPKcS1_j
	mov	r0, #85
	mov	r2, #255
	mov	r3, r2
	mov	r1, r0
	bl	_Z15IwGxSetColClearhhhh
	bl	_Z16IwResManagerInitv
	bl	_Z12IwGxFontInitv
	mov	r2, r5
	ldr	r1, .L182+24
	ldr	r0, [r6, #0]
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	ldr	r0, .L182+28
	bl	_Z15Iw2DCreateImagePKc
	mov	r2, r7
	mov	r3, r5
	ldr	r1, .L182+32
	str	r0, [r4, #36]
	ldr	r0, [r6, #0]
	bl	_ZNK13CIwResManager11GetResNamedEPKcS1_j
	mov	r2, #255
	mov	r3, r2
	str	r0, [r4, #0]
	mov	r0, #85
	mov	r1, r0
	bl	_Z15IwGxSetColClearhhhh
	mov	r0, r8
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
.L183:
	.align	2
.L182:
	.word	.LANCHOR0
	.word	g_IwResManager
	.word	.LC3
	.word	.LC6
	.word	.LC4
	.word	.LC5
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.size	_ZN5CGameC1Ev, .-_ZN5CGameC1Ev
	.section	.text._ZN5CGameC2Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameC2Ev
	.hidden	_ZN5CGameC2Ev
	.type	_ZN5CGameC2Ev, %function
_ZN5CGameC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r8, r0
	mov	r0, #20
	bl	_Znwj
	ldr	r4, .L188
	ldr	r6, .L188+4
	ldr	r1, .L188+8
	mov	r5, #0
	ldr	r7, .L188+12
	mov	sl, r0
	bl	_ZN4CNpcC1EPc
	mov	r3, #4
	mov	r0, #1
	str	r3, [r4, #20]
	str	r0, [r4, #4]
	str	sl, [r4, #40]
	str	r5, [r4, #32]
	str	r5, [r4, #24]
	str	r5, [r4, #296]
	strb	r5, [r4, #28]
	str	r5, [r4, #8]
	strb	r5, [r4, #12]
	str	r5, [r4, #16]
	strb	r5, [r4, #1010]
	bl	_Z8IwGxInitv
	bl	_Z8Iw2DInitv
	mov	r2, r5
	ldr	r1, .L188+16
	ldr	r0, [r6, #0]
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	mov	r2, r7
	mov	r3, r5
	ldr	r1, .L188+20
	ldr	r0, [r6, #0]
	bl	_ZNK13CIwResManager11GetResNamedEPKcS1_j
	mov	r0, #85
	mov	r2, #255
	mov	r3, r2
	mov	r1, r0
	bl	_Z15IwGxSetColClearhhhh
	bl	_Z16IwResManagerInitv
	bl	_Z12IwGxFontInitv
	mov	r2, r5
	ldr	r1, .L188+24
	ldr	r0, [r6, #0]
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	ldr	r0, .L188+28
	bl	_Z15Iw2DCreateImagePKc
	mov	r2, r7
	mov	r3, r5
	ldr	r1, .L188+32
	str	r0, [r4, #36]
	ldr	r0, [r6, #0]
	bl	_ZNK13CIwResManager11GetResNamedEPKcS1_j
	mov	r2, #255
	mov	r3, r2
	str	r0, [r4, #0]
	mov	r0, #85
	mov	r1, r0
	bl	_Z15IwGxSetColClearhhhh
	mov	r0, r8
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
.L189:
	.align	2
.L188:
	.word	.LANCHOR0
	.word	g_IwResManager
	.word	.LC3
	.word	.LC6
	.word	.LC4
	.word	.LC5
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.size	_ZN5CGameC2Ev, .-_ZN5CGameC2Ev
	.hidden	checkBox
	.global	checkBox
	.hidden	flag
	.global	flag
	.hidden	flag2
	.global	flag2
	.hidden	Font
	.global	Font
	.hidden	txtButt
	.global	txtButt
	.hidden	g_cXml
	.global	g_cXml
	.hidden	whereAt
	.global	whereAt
	.hidden	txtState
	.global	txtState
	.hidden	textsPrinted
	.global	textsPrinted
	.hidden	scaleFactor
	.global	scaleFactor
	.hidden	selectionMade
	.global	selectionMade
	.hidden	timeStart
	.global	timeStart
	.hidden	timeMS
	.global	timeMS
	.hidden	timeFlag
	.global	timeFlag
	.hidden	reply
	.global	reply
	.hidden	playerTop
	.global	playerTop
	.hidden	tempP
	.global	tempP
	.hidden	tempR
	.global	tempR
	.hidden	tempR2
	.global	tempR2
	.hidden	tempOp1
	.global	tempOp1
	.hidden	tempOp2
	.global	tempOp2
	.hidden	tempOp3
	.global	tempOp3
	.hidden	tempOp4
	.global	tempOp4
	.hidden	rick
	.global	rick
	.data
	.type	flag, %object
	.size	flag, 1
flag:
	.byte	1
	.type	flag2, %object
	.size	flag2, 1
flag2:
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%I:%M%p\000"
.LC1:
	.ascii	"GO BACK\000"
.LC2:
	.ascii	"NEW TEXT - RYAN\000"
.LC3:
	.ascii	"rick\000"
	.space	3
.LC4:
	.ascii	"IwUIBasicLabelCode.group\000"
	.space	3
.LC5:
	.ascii	"times\000"
	.space	2
.LC6:
	.ascii	"CIwGxFont\000"
	.space	2
.LC7:
	.ascii	"fonts.group\000"
.LC8:
	.ascii	"txtButton_small.png\000"
.LC9:
	.ascii	"font\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	Font, %object
	.size	Font, 4
Font:
	.space	4
	.type	scaleFactor, %object
	.size	scaleFactor, 4
scaleFactor:
	.space	4
	.type	timeStart, %object
	.size	timeStart, 4
timeStart:
	.space	4
	.type	timeFlag, %object
	.size	timeFlag, 1
timeFlag:
	.space	1
	.space	3
	.type	timeMS, %object
	.size	timeMS, 4
timeMS:
	.space	4
	.type	selectionMade, %object
	.size	selectionMade, 4
selectionMade:
	.space	4
	.type	txtState, %object
	.size	txtState, 4
txtState:
	.space	4
	.type	reply, %object
	.size	reply, 1
reply:
	.space	1
	.space	3
	.type	whereAt, %object
	.size	whereAt, 4
whereAt:
	.space	4
	.type	txtButt, %object
	.size	txtButt, 4
txtButt:
	.space	4
	.type	rick, %object
	.size	rick, 4
rick:
	.space	4
	.type	tempP, %object
	.size	tempP, 250
tempP:
	.space	250
	.space	2
	.type	textsPrinted, %object
	.size	textsPrinted, 4
textsPrinted:
	.space	4
	.type	tempOp1, %object
	.size	tempOp1, 50
tempOp1:
	.space	50
	.space	2
	.type	tempOp2, %object
	.size	tempOp2, 50
tempOp2:
	.space	50
	.space	2
	.type	tempOp3, %object
	.size	tempOp3, 50
tempOp3:
	.space	50
	.space	2
	.type	tempOp4, %object
	.size	tempOp4, 50
tempOp4:
	.space	50
	.space	2
	.type	tempR2, %object
	.size	tempR2, 250
tempR2:
	.space	250
	.space	2
	.type	tempR, %object
	.size	tempR, 250
tempR:
	.space	250
	.type	playerTop, %object
	.size	playerTop, 1
playerTop:
	.space	1
	.space	1
	.type	checkBox, %object
	.size	checkBox, 4
checkBox:
	.space	4
	.type	g_cXml, %object
	.size	g_cXml, 4
g_cXml:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
