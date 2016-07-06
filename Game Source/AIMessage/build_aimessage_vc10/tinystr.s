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
	.file	"tinystr.cpp"
	.section	.text._ZN11TiXmlString7reserveEj,"ax",%progbits
	.align	2
	.global	_ZN11TiXmlString7reserveEj
	.hidden	_ZN11TiXmlString7reserveEj
	.type	_ZN11TiXmlString7reserveEj, %function
_ZN11TiXmlString7reserveEj:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0, #0]
	sub	sp, sp, #12
	ldr	r2, [r3, #4]
	mov	r4, r0
	cmp	r1, r2
	bls	.L6
	cmp	r1, #0
	ldr	r7, [r3, #0]
	bne	.L4
	ldr	r6, .L8
	mov	r5, r6
.L5:
	add	r1, r3, #8
	mov	r2, r7
	add	r0, r5, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	r5, [r4, #0]
	cmp	r0, r6
	beq	.L6
	cmp	r0, #0
	beq	.L6
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	_ZdaPv
.L6:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L4:
	add	r5, r1, #15
	bic	r0, r5, #3
	str	r1, [sp, #4]
	bl	_Znaj
	ldr	r6, .L8
	mov	r3, r0
	mov	r5, r0
	mov	r0, #0
	str	r7, [r3], r7
	strb	r0, [r3, #8]
	ldr	r1, [sp, #4]
	str	r1, [r5, #4]
	ldr	r3, [r4, #0]
	ldr	r7, [r3, #0]
	b	.L5
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	_ZN11TiXmlString7reserveEj, .-_ZN11TiXmlString7reserveEj
	.section	.text._ZN11TiXmlString6assignEPKcj,"ax",%progbits
	.align	2
	.global	_ZN11TiXmlString6assignEPKcj
	.hidden	_ZN11TiXmlString6assignEPKcj
	.type	_ZN11TiXmlString6assignEPKcj, %function
_ZN11TiXmlString6assignEPKcj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r0, [r0, #0]
	mov	r4, r2
	ldr	r3, [r0, #4]
	mov	r8, r1
	cmp	r2, r3
	bhi	.L11
	add	lr, r2, r2, asl #1
	add	ip, lr, #24
	cmp	ip, r3
	bcs	.L12
.L11:
	cmp	r4, #0
	bne	.L13
	ldr	r7, .L17
	mov	r6, r7
.L14:
	mov	r1, r8
	mov	r2, r4
	add	r0, r6, #8
	bl	memcpy
	ldr	r0, [r5, #0]
	str	r6, [r5, #0]
	cmp	r0, r7
	beq	.L15
	cmp	r0, #0
	beq	.L15
	bl	_ZdaPv
.L15:
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L12:
	add	r0, r0, #8
	bl	memmove
	ldr	ip, [r5, #0]
	mov	r1, #0
	str	r4, [ip], r4
	mov	r0, r5
	strb	r1, [ip, #8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L13:
	add	r0, r4, #15
	bic	r0, r0, #3
	bl	_Znaj
	mov	r2, #0
	ldr	r7, .L17
	mov	r3, r0
	str	r4, [r3], r4
	mov	r6, r0
	strb	r2, [r3, #8]
	str	r4, [r0, #4]
	b	.L14
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.size	_ZN11TiXmlString6assignEPKcj, .-_ZN11TiXmlString6assignEPKcj
	.section	.text._ZN11TiXmlString6appendEPKcj,"ax",%progbits
	.align	2
	.global	_ZN11TiXmlString6appendEPKcj
	.hidden	_ZN11TiXmlString6appendEPKcj
	.type	_ZN11TiXmlString6appendEPKcj, %function
_ZN11TiXmlString6appendEPKcj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, #0]
	mov	r6, r2
	ldr	r9, [r3, #0]
	ldr	r2, [r3, #4]
	add	r5, r6, r9
	cmp	r5, r2
	mov	r4, r0
	mov	r8, r1
	bhi	.L30
.L20:
	mov	r7, r3
.L25:
	add	lr, r9, #8
	mov	r1, r8
	add	r0, r7, lr
	mov	r2, r6
	bl	memmove
	ldr	ip, [r4, #0]
	mov	r1, #0
	str	r5, [ip], r5
	mov	r0, r4
	strb	r1, [ip, #8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L30:
	add	sl, r5, r2
	cmp	sl, r2
	bls	.L20
	cmp	sl, #0
	bne	.L22
	ldr	sl, .L31
	mov	r7, sl
.L23:
	add	r1, r3, #8
	mov	r2, r9
	add	r0, r7, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	r7, [r4, #0]
	cmp	r0, sl
	beq	.L29
	cmp	r0, #0
	beq	.L29
	bl	_ZdaPv
	ldr	r7, [r4, #0]
.L29:
	ldr	r9, [r7, #0]
	b	.L25
.L22:
	add	r0, sl, #15
	bic	r0, r0, #3
	bl	_Znaj
	mov	r2, #0
	mov	r3, r0
	str	r9, [r3], r9
	str	sl, [r0, #4]
	strb	r2, [r3, #8]
	ldr	r3, [r4, #0]
	mov	r7, r0
	ldr	sl, .L31
	ldr	r9, [r3, #0]
	b	.L23
.L32:
	.align	2
.L31:
	.word	.LANCHOR0
	.size	_ZN11TiXmlString6appendEPKcj, .-_ZN11TiXmlString6appendEPKcj
	.section	.text._ZplPKcRK11TiXmlString,"ax",%progbits
	.align	2
	.global	_ZplPKcRK11TiXmlString
	.hidden	_ZplPKcRK11TiXmlString
	.type	_ZplPKcRK11TiXmlString, %function
_ZplPKcRK11TiXmlString:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L61
	str	r6, [r0, #0]
	sub	sp, sp, #12
	mov	r4, r0
	mov	r0, r1
	mov	sl, r2
	mov	r9, r1
	bl	strlen
	ldr	r2, [sl, #0]
	ldr	r3, [r6, #4]
	ldr	r8, [r2, #0]
	add	r8, r0, r8
	cmp	r8, r3
	mov	r7, r0
	movls	r5, r6
	bls	.L36
	cmp	r8, #0
	ldr	fp, [r6, #0]
	moveq	r1, r6
	moveq	r5, r6
	bne	.L56
.L38:
	ldr	r2, [r1, #0]
	add	r0, r5, #8
	add	r1, r1, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	r5, [r4, #0]
	cmp	r0, r6
	beq	.L36
	cmp	r0, #0
	beq	.L36
	bl	_ZdaPv
	ldr	r5, [r4, #0]
.L36:
	ldr	fp, [r5, #0]
	ldr	r3, [r5, #4]
	add	r8, r7, fp
	cmp	r8, r3
	bhi	.L57
.L39:
	add	r3, fp, #8
	mov	r1, r9
	mov	r2, r7
	add	r0, r5, r3
	bl	memmove
	ldr	r9, [r4, #0]
	mov	fp, #0
	str	r8, [r9], r8
	strb	fp, [r9, #8]
	ldr	r1, [r4, #0]
	ldr	r8, [sl, #0]
	ldr	r9, [r1, #0]
	ldr	r7, [r8, #0]
	ldr	r2, [r1, #4]
	add	r5, r9, r7
	cmp	r5, r2
	bhi	.L58
.L45:
	mov	sl, r1
.L50:
	add	lr, r9, #8
	mov	r2, r7
	add	r0, sl, lr
	add	r1, r8, #8
	bl	memmove
	ldr	r2, [r4, #0]
	mov	ip, #0
	str	r5, [r2], r5
	mov	r0, r4
	strb	ip, [r2, #8]
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L58:
	add	r3, r5, r2
	cmp	r2, r3
	bcs	.L45
	cmp	r3, fp
	ldreq	sl, .L61
	bne	.L59
.L48:
	add	r1, r1, #8
	mov	r2, r9
	add	r0, sl, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	sl, [r4, #0]
	cmp	r0, r6
	beq	.L55
	cmp	r0, #0
	beq	.L55
	bl	_ZdaPv
	ldr	sl, [r4, #0]
.L55:
	ldr	r9, [sl, #0]
	b	.L50
.L57:
	add	r2, r8, r3
	cmp	r3, r2
	bcs	.L39
	cmp	r2, #0
	ldreq	r3, .L61
	bne	.L60
.L42:
	add	r0, r3, #8
	add	r1, r5, #8
	mov	r2, fp
	str	r3, [sp, #4]
	bl	memcpy
	ldr	r0, [r4, #0]
	ldr	r3, [sp, #4]
	cmp	r0, r6
	str	r3, [r4, #0]
	beq	.L53
	cmp	r0, #0
	beq	.L53
	bl	_ZdaPv
	ldr	r5, [r4, #0]
	ldr	fp, [r5, #0]
	b	.L39
.L56:
	add	r5, r8, #15
	bic	r0, r5, #3
	bl	_Znaj
	mov	r1, r0
	mov	r5, r0
	mov	r0, #0
	str	fp, [r1], fp
	str	r8, [r5, #4]
	strb	r0, [r1, #8]
	ldr	r1, [r4, #0]
	b	.L38
.L53:
	mov	r5, r3
	ldr	fp, [r3, #0]
	b	.L39
.L60:
	add	lr, r2, #15
	bic	r0, lr, #3
	str	r2, [sp, #4]
	bl	_Znaj
	mov	ip, #0
	mov	r2, r0
	str	fp, [r2], fp
	strb	ip, [r2, #8]
	ldr	fp, [sp, #4]
	str	fp, [r0, #4]
	ldr	r5, [r4, #0]
	mov	r3, r0
	ldr	fp, [r5, #0]
	b	.L42
.L59:
	add	sl, r3, #15
	bic	r0, sl, #3
	str	r3, [sp, #4]
	bl	_Znaj
	mov	r1, r0
	str	r9, [r1], r9
	strb	fp, [r1, #8]
	mov	sl, r0
	ldr	r0, [sp, #4]
	str	r0, [sl, #4]
	ldr	r1, [r4, #0]
	ldr	r9, [r1, #0]
	b	.L48
.L62:
	.align	2
.L61:
	.word	.LANCHOR0
	.size	_ZplPKcRK11TiXmlString, .-_ZplPKcRK11TiXmlString
	.section	.text._ZplRK11TiXmlStringS1_,"ax",%progbits
	.align	2
	.global	_ZplRK11TiXmlStringS1_
	.hidden	_ZplRK11TiXmlStringS1_
	.type	_ZplRK11TiXmlStringS1_, %function
_ZplRK11TiXmlStringS1_:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L94
	str	r6, [r0, #0]
	mov	r4, r0
	ldr	r8, [r1, #0]
	ldr	r0, [r2, #0]
	ldr	r7, [r8, #0]
	ldr	fp, [r0, #0]
	ldr	r3, [r6, #4]
	add	fp, r7, fp
	cmp	fp, r3
	sub	sp, sp, #12
	mov	sl, r1
	mov	r9, r2
	movls	r5, r6
	bls	.L66
	cmp	fp, #0
	ldr	r7, [r6, #0]
	moveq	r1, r6
	moveq	r5, r6
	bne	.L89
.L68:
	ldr	r2, [r1, #0]
	add	r0, r5, #8
	add	r1, r1, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	r5, [r4, #0]
	cmp	r0, r6
	beq	.L85
	cmp	r0, #0
	beq	.L85
	bl	_ZdaPv
	ldr	r8, [sl, #0]
	ldr	r5, [r4, #0]
	ldr	r7, [r8, #0]
.L66:
	ldr	fp, [r5, #0]
	ldr	r3, [r5, #4]
	add	sl, r7, fp
	cmp	sl, r3
	bhi	.L90
.L71:
	add	r3, fp, #8
	add	r1, r8, #8
	mov	r2, r7
	add	r0, r5, r3
	bl	memmove
	ldr	r8, [r4, #0]
	mov	fp, #0
	str	sl, [r8], sl
	strb	fp, [r8, #8]
	ldr	r8, [r9, #0]
	ldr	r1, [r4, #0]
	ldr	r7, [r8, #0]
	ldr	r9, [r1, #0]
	ldr	r2, [r1, #4]
	add	r5, r9, r7
	cmp	r5, r2
	bhi	.L91
.L77:
	mov	sl, r1
.L82:
	add	r0, r9, #8
	add	r1, r8, #8
	add	r0, sl, r0
	mov	r2, r7
	bl	memmove
	ldr	ip, [r4, #0]
	mov	r1, #0
	str	r5, [ip], r5
	mov	r0, r4
	strb	r1, [ip, #8]
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L91:
	add	r3, r5, r2
	cmp	r2, r3
	bcs	.L77
	cmp	r3, fp
	ldreq	sl, .L94
	bne	.L92
.L80:
	add	r1, r1, #8
	mov	r2, r9
	add	r0, sl, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	sl, [r4, #0]
	cmp	r0, r6
	beq	.L88
	cmp	r0, #0
	beq	.L88
	bl	_ZdaPv
	ldr	sl, [r4, #0]
.L88:
	ldr	r9, [sl, #0]
	b	.L82
.L90:
	add	r2, sl, r3
	cmp	r3, r2
	bcs	.L71
	cmp	r2, #0
	ldreq	r3, .L94
	bne	.L93
.L74:
	add	r0, r3, #8
	add	r1, r5, #8
	mov	r2, fp
	str	r3, [sp, #4]
	bl	memcpy
	ldr	r0, [r4, #0]
	ldr	r3, [sp, #4]
	cmp	r0, r6
	str	r3, [r4, #0]
	beq	.L86
	cmp	r0, #0
	beq	.L86
	bl	_ZdaPv
	ldr	r5, [r4, #0]
	ldr	fp, [r5, #0]
	b	.L71
.L89:
	add	r5, fp, #15
	bic	r0, r5, #3
	bl	_Znaj
	mov	r2, #0
	mov	r1, r0
	str	r7, [r1], r7
	str	fp, [r0, #4]
	strb	r2, [r1, #8]
	mov	r5, r0
	ldr	r1, [r4, #0]
	b	.L68
.L85:
	ldr	r8, [sl, #0]
	ldr	r7, [r8, #0]
	b	.L66
.L86:
	mov	r5, r3
	ldr	fp, [r3, #0]
	b	.L71
.L92:
	add	sl, r3, #15
	bic	r0, sl, #3
	str	r3, [sp, #4]
	bl	_Znaj
	mov	r2, r0
	str	r9, [r2], r9
	strb	fp, [r2, #8]
	ldr	r9, [sp, #4]
	str	r9, [r0, #4]
	ldr	r1, [r4, #0]
	mov	sl, r0
	ldr	r9, [r1, #0]
	b	.L80
.L93:
	add	lr, r2, #15
	bic	r0, lr, #3
	str	r2, [sp, #4]
	bl	_Znaj
	mov	r3, r0
	str	fp, [r0], fp
	mov	fp, #0
	strb	fp, [r0, #8]
	ldr	ip, [sp, #4]
	str	ip, [r3, #4]
	ldr	r5, [r4, #0]
	ldr	fp, [r5, #0]
	b	.L74
.L95:
	.align	2
.L94:
	.word	.LANCHOR0
	.size	_ZplRK11TiXmlStringS1_, .-_ZplRK11TiXmlStringS1_
	.section	.text._ZplRK11TiXmlStringPKc,"ax",%progbits
	.align	2
	.global	_ZplRK11TiXmlStringPKc
	.hidden	_ZplRK11TiXmlStringPKc
	.type	_ZplRK11TiXmlStringPKc, %function
_ZplRK11TiXmlStringPKc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L127
	sub	sp, sp, #12
	str	r2, [sp, #4]
	str	r6, [r0, #0]
	mov	r4, r0
	ldr	r0, [sp, #4]
	mov	sl, r1
	bl	strlen
	ldr	r8, [sl, #0]
	ldr	r3, [r6, #4]
	ldr	r7, [r8, #0]
	add	fp, r0, r7
	cmp	fp, r3
	mov	r9, r0
	movls	r5, r6
	bls	.L99
	cmp	fp, #0
	ldr	r7, [r6, #0]
	moveq	r1, r6
	moveq	r5, r6
	bne	.L122
.L101:
	ldr	r2, [r1, #0]
	add	r0, r5, #8
	add	r1, r1, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	r5, [r4, #0]
	cmp	r0, r6
	beq	.L118
	cmp	r0, #0
	beq	.L118
	bl	_ZdaPv
	ldr	r8, [sl, #0]
	ldr	r5, [r4, #0]
	ldr	r7, [r8, #0]
.L99:
	ldr	fp, [r5, #0]
	ldr	r2, [r5, #4]
	add	sl, r7, fp
	cmp	sl, r2
	bhi	.L123
.L104:
	add	lr, fp, #8
	add	r1, r8, #8
	add	r0, r5, lr
	mov	r2, r7
	bl	memmove
	ldr	r2, [r4, #0]
	mov	fp, #0
	str	sl, [r2], sl
	strb	fp, [r2, #8]
	ldr	r1, [r4, #0]
	ldr	r8, [r1, #0]
	ldr	r3, [r1, #4]
	add	r5, r9, r8
	cmp	r5, r3
	bhi	.L124
.L110:
	mov	r7, r1
.L115:
	add	ip, r8, #8
	ldr	r1, [sp, #4]
	add	r0, r7, ip
	mov	r2, r9
	bl	memmove
	ldr	r3, [r4, #0]
	mov	r1, #0
	str	r5, [r3], r5
	mov	r0, r4
	strb	r1, [r3, #8]
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L124:
	add	sl, r5, r3
	cmp	r3, sl
	bcs	.L110
	cmp	sl, fp
	ldreq	r7, .L127
	bne	.L125
.L113:
	add	r1, r1, #8
	mov	r2, r8
	add	r0, r7, #8
	bl	memcpy
	ldr	r0, [r4, #0]
	str	r7, [r4, #0]
	cmp	r0, r6
	beq	.L121
	cmp	r0, #0
	beq	.L121
	bl	_ZdaPv
	ldr	r7, [r4, #0]
.L121:
	ldr	r8, [r7, #0]
	b	.L115
.L123:
	add	r3, sl, r2
	cmp	r2, r3
	bcs	.L104
	cmp	r3, #0
	ldreq	ip, .L127
	bne	.L126
.L107:
	add	r0, ip, #8
	add	r1, r5, #8
	mov	r2, fp
	str	ip, [sp, #0]
	bl	memcpy
	ldr	r0, [r4, #0]
	ldr	ip, [sp, #0]
	cmp	r0, r6
	str	ip, [r4, #0]
	beq	.L119
	cmp	r0, #0
	beq	.L119
	bl	_ZdaPv
	ldr	r5, [r4, #0]
	ldr	fp, [r5, #0]
	b	.L104
.L122:
	add	r1, fp, #15
	bic	r0, r1, #3
	bl	_Znaj
	mov	r2, #0
	mov	r5, r0
	str	fp, [r5, #4]
	str	r7, [r0], r7
	strb	r2, [r0, #8]
	ldr	r1, [r4, #0]
	b	.L101
.L118:
	ldr	r8, [sl, #0]
	ldr	r7, [r8, #0]
	b	.L99
.L119:
	mov	r5, ip
	ldr	fp, [ip, #0]
	b	.L104
.L125:
	add	r7, sl, #15
	bic	r0, r7, #3
	bl	_Znaj
	mov	r7, r0
	str	sl, [r7, #4]
	str	r8, [r0], r8
	strb	fp, [r0, #8]
	ldr	r1, [r4, #0]
	ldr	r8, [r1, #0]
	b	.L113
.L126:
	add	ip, r3, #15
	bic	r0, ip, #3
	str	r3, [sp, #0]
	bl	_Znaj
	mov	r3, r0
	str	fp, [r3], fp
	mov	fp, #0
	strb	fp, [r3, #8]
	ldr	r5, [sp, #0]
	str	r5, [r0, #4]
	ldr	r5, [r4, #0]
	mov	ip, r0
	ldr	fp, [r5, #0]
	b	.L107
.L128:
	.align	2
.L127:
	.word	.LANCHOR0
	.size	_ZplRK11TiXmlStringPKc, .-_ZplRK11TiXmlStringPKc
	.hidden	_ZN11TiXmlString4nposE
	.global	_ZN11TiXmlString4nposE
	.hidden	_ZN11TiXmlString8nullrep_E
	.global	_ZN11TiXmlString8nullrep_E
	.section	.rodata
	.align	2
	.type	_ZN11TiXmlString4nposE, %object
	.size	_ZN11TiXmlString4nposE, 4
_ZN11TiXmlString4nposE:
	.word	-1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN11TiXmlString8nullrep_E, %object
	.size	_ZN11TiXmlString8nullrep_E, 12
_ZN11TiXmlString8nullrep_E:
	.space	12
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
