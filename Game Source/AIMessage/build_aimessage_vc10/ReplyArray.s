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
	.file	"ReplyArray.cpp"
	.section	.text._ZN11CReplyArray14getReplyByCharEc,"ax",%progbits
	.align	2
	.global	_ZN11CReplyArray14getReplyByCharEc
	.hidden	_ZN11CReplyArray14getReplyByCharEc
	.type	_ZN11CReplyArray14getReplyByCharEc, %function
_ZN11CReplyArray14getReplyByCharEc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L3
	sub	r0, r0, #97
	ldr	r3, [r1, #0]
	ldr	r0, [r3, r0, asl #2]
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	_ZN11CReplyArray14getReplyByCharEc, .-_ZN11CReplyArray14getReplyByCharEc
	.section	.text._GLOBAL__I__ZN11CReplyArray8replyDocE,"ax",%progbits
	.align	2
	.type	_GLOBAL__I__ZN11CReplyArray8replyDocE, %function
_GLOBAL__I__ZN11CReplyArray8replyDocE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L7
	add	r5, r4, #4
	mov	r0, r5
	bl	_ZN13TiXmlDocumentC1Ev
	ldr	r1, .L7+4
	ldr	r2, .L7+8
	mov	r0, r5
	bl	__aeabi_atexit
	mov	r0, #104
	bl	_Znaj
	str	r0, [r4, #0]
	ldmfd	sp!, {r3, r4, r5, pc}
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	_ZN13TiXmlDocumentD1Ev
	.word	__dso_handle
	.size	_GLOBAL__I__ZN11CReplyArray8replyDocE, .-_GLOBAL__I__ZN11CReplyArray8replyDocE
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I__ZN11CReplyArray8replyDocE(target1)
	.section	.text._ZN13TiXmlDocumentD1Ev,"axG",%progbits,_ZN13TiXmlDocumentD1Ev,comdat
	.align	2
	.weak	_ZN13TiXmlDocumentD1Ev
	.hidden	_ZN13TiXmlDocumentD1Ev
	.type	_ZN13TiXmlDocumentD1Ev, %function
_ZN13TiXmlDocumentD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r1, .L13
	mov	r4, r0
	ldr	r0, [r0, #52]
	ldr	r3, .L13+4
	cmp	r0, r1
	str	r3, [r4, #0]
	beq	.L10
	cmp	r0, #0
	beq	.L10
	bl	_ZdaPv
.L10:
	mov	r0, r4
	bl	_ZN9TiXmlNodeD2Ev
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L14:
	.align	2
.L13:
	.word	_ZN11TiXmlString8nullrep_E
	.word	_ZTV13TiXmlDocument+8
	.size	_ZN13TiXmlDocumentD1Ev, .-_ZN13TiXmlDocumentD1Ev
	.section	.text._ZN11CReplyArray12clearRepliesEv,"ax",%progbits
	.align	2
	.global	_ZN11CReplyArray12clearRepliesEv
	.hidden	_ZN11CReplyArray12clearRepliesEv
	.type	_ZN11CReplyArray12clearRepliesEv, %function
_ZN11CReplyArray12clearRepliesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, .L34
	ldr	r5, .L34+4
	ldr	r3, [r6, #0]
	ldr	r0, [r3, #0]
	cmp	r0, r5
	beq	.L21
	cmp	r0, #0
	beq	.L21
	bl	_ZdaPv
	ldr	r3, [r6, #0]
.L21:
	mov	r4, #4
.L17:
	ldr	r0, [r3, r4]
	cmp	r0, r5
	beq	.L16
	cmp	r0, #0
	beq	.L16
	bl	_ZdaPv
	ldr	r3, [r6, #0]
.L16:
	add	r4, r4, #4
	ldr	r0, [r3, r4]
	cmp	r0, r5
	beq	.L23
	cmp	r0, #0
	beq	.L23
	bl	_ZdaPv
	ldr	r3, [r6, #0]
.L23:
	add	r2, r4, #4
	ldr	r0, [r3, r2]
	cmp	r0, r5
	beq	.L25
	cmp	r0, #0
	beq	.L25
	bl	_ZdaPv
	ldr	r3, [r6, #0]
.L25:
	add	r1, r4, #8
	ldr	r0, [r3, r1]
	cmp	r0, r5
	beq	.L27
	cmp	r0, #0
	beq	.L27
	bl	_ZdaPv
	ldr	r3, [r6, #0]
.L27:
	add	ip, r4, #12
	ldr	r0, [r3, ip]
	cmp	r0, r5
	beq	.L29
	cmp	r0, #0
	beq	.L29
	bl	_ZdaPv
	ldr	r3, [r6, #0]
.L29:
	add	r4, r4, #16
	cmp	r4, #104
	bne	.L17
	cmp	r3, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	mov	r0, r3
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_ZdaPv
.L35:
	.align	2
.L34:
	.word	.LANCHOR0
	.word	.LC0
	.size	_ZN11CReplyArray12clearRepliesEv, .-_ZN11CReplyArray12clearRepliesEv
	.section	.text._ZN11CReplyArray11initRepliesEv,"ax",%progbits
	.align	2
	.global	_ZN11CReplyArray11initRepliesEv
	.hidden	_ZN11CReplyArray11initRepliesEv
	.type	_ZN11CReplyArray11initRepliesEv, %function
_ZN11CReplyArray11initRepliesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r4, .L80
	ldrb	r2, [r4, #76]	@ zero_extendqisi2
	cmp	r2, #0
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	ldr	r1, .L80+4
	add	r0, r4, #4
	bl	_ZN13TiXmlDocument8LoadFileEPKc13TiXmlEncoding
	add	r0, r4, #4
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	ldr	r5, [r4, #0]
	mov	r6, #1
	ldr	r7, .L80+8
	mov	sl, r4
	str	r0, [r4, #80]
	mov	r0, #48
	bl	_Znaj
	str	r0, [r5, #0]
	ldr	r0, [r4, #80]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #0]
	mov	r1, r0
	ldr	r0, [r3, #0]
	bl	strcpy
	ldr	r0, [r4, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	beq	.L74
	ldr	r0, [r4, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #80]
.L61:
	mov	r5, #4
	b	.L41
.L38:
	ldr	r0, [r4, #0]
	str	r7, [r0, r5]
.L40:
	cmp	r6, #0
	add	r5, r5, #4
	bne	.L75
.L47:
	ldr	ip, [r4, #0]
	str	r7, [ip, r5]
.L62:
	cmp	r6, #0
	add	r8, r5, #4
	bne	.L64
.L77:
	ldr	lr, [r4, #0]
	str	r7, [lr, r8]
.L65:
	cmp	r6, #0
	add	r8, r5, #8
	bne	.L67
.L78:
	ldr	r0, [r4, #0]
	str	r7, [r0, r8]
.L68:
	cmp	r6, #0
	add	r8, r5, #12
	bne	.L70
.L79:
	ldr	r1, [r4, #0]
	str	r7, [r1, r8]
.L71:
	add	r5, r5, #16
	cmp	r5, #104
	beq	.L76
.L41:
	cmp	r6, #0
	beq	.L38
	mov	r0, #48
	ldr	r8, [r4, #0]
	bl	_Znaj
	str	r0, [r5, r8]
	ldr	r0, [r4, #80]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r2, [r4, #0]
	mov	r1, r0
	ldr	r0, [r2, r5]
	bl	strcpy
	ldr	r0, [r4, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	moveq	r6, r0
	beq	.L40
	ldr	r0, [sl, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r6, #0
	add	r5, r5, #4
	str	r0, [sl, #80]
	beq	.L47
.L75:
	mov	r0, #48
	ldr	r8, [r4, #0]
	bl	_Znaj
	str	r0, [r5, r8]
	ldr	r0, [r4, #80]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #0]
	mov	r1, r0
	ldr	r0, [r3, r5]
	bl	strcpy
	ldr	r0, [r4, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	moveq	r6, r0
	beq	.L62
	ldr	r0, [sl, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r6, #0
	add	r8, r5, #4
	str	r0, [sl, #80]
	beq	.L77
.L64:
	mov	r0, #48
	ldr	r9, [r4, #0]
	bl	_Znaj
	str	r0, [r8, r9]
	ldr	r0, [r4, #80]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r2, [r4, #0]
	mov	r1, r0
	ldr	r0, [r2, r8]
	bl	strcpy
	ldr	r0, [r4, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	moveq	r6, r0
	beq	.L65
	ldr	r0, [sl, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r6, #0
	add	r8, r5, #8
	str	r0, [sl, #80]
	beq	.L78
.L67:
	mov	r0, #48
	ldr	r9, [r4, #0]
	bl	_Znaj
	str	r0, [r8, r9]
	ldr	r0, [r4, #80]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	ip, [r4, #0]
	mov	r1, r0
	ldr	r0, [ip, r8]
	bl	strcpy
	ldr	r0, [r4, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	moveq	r6, r0
	beq	.L68
	ldr	r0, [sl, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r6, #0
	add	r8, r5, #12
	str	r0, [sl, #80]
	beq	.L79
.L70:
	mov	r0, #48
	ldr	r9, [r4, #0]
	bl	_Znaj
	str	r0, [r8, r9]
	ldr	r0, [r4, #80]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #0]
	mov	r1, r0
	ldr	r0, [r3, r8]
	bl	strcpy
	ldr	r0, [r4, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	moveq	r6, r0
	beq	.L71
	ldr	r0, [sl, #80]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [sl, #80]
	b	.L71
.L76:
	mov	r1, #1
	strb	r1, [r4, #76]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L74:
	mov	r6, r0
	b	.L61
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	.LC1
	.word	.LC0
	.size	_ZN11CReplyArray11initRepliesEv, .-_ZN11CReplyArray11initRepliesEv
	.hidden	_ZN11CReplyArray8replyDocE
	.global	_ZN11CReplyArray8replyDocE
	.hidden	_ZN11CReplyArray5elem1E
	.global	_ZN11CReplyArray5elem1E
	.hidden	_ZN11CReplyArray7repliesE
	.global	_ZN11CReplyArray7repliesE
	.hidden	_ZN11CReplyArray6loadedE
	.global	_ZN11CReplyArray6loadedE
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"No Entry\000"
	.space	3
.LC1:
	.ascii	"ReplyOptions.xml\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN11CReplyArray7repliesE, %object
	.size	_ZN11CReplyArray7repliesE, 4
_ZN11CReplyArray7repliesE:
	.space	4
	.type	_ZN11CReplyArray8replyDocE, %object
	.size	_ZN11CReplyArray8replyDocE, 72
_ZN11CReplyArray8replyDocE:
	.space	72
	.type	_ZN11CReplyArray6loadedE, %object
	.size	_ZN11CReplyArray6loadedE, 1
_ZN11CReplyArray6loadedE:
	.space	1
	.space	3
	.type	_ZN11CReplyArray5elem1E, %object
	.size	_ZN11CReplyArray5elem1E, 4
_ZN11CReplyArray5elem1E:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
