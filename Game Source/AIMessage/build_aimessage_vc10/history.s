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
	.file	"history.cpp"
	.section	.text._ZN13TiXmlDocumentD1Ev,"axG",%progbits,_ZN13TiXmlDocumentD1Ev,comdat
	.align	2
	.weak	_ZN13TiXmlDocumentD1Ev
	.hidden	_ZN13TiXmlDocumentD1Ev
	.type	_ZN13TiXmlDocumentD1Ev, %function
_ZN13TiXmlDocumentD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r1, .L5
	mov	r4, r0
	ldr	r0, [r0, #52]
	ldr	r3, .L5+4
	cmp	r0, r1
	str	r3, [r4, #0]
	beq	.L2
	cmp	r0, #0
	beq	.L2
	bl	_ZdaPv
.L2:
	mov	r0, r4
	bl	_ZN9TiXmlNodeD2Ev
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L6:
	.align	2
.L5:
	.word	_ZN11TiXmlString8nullrep_E
	.word	_ZTV13TiXmlDocument+8
	.size	_ZN13TiXmlDocumentD1Ev, .-_ZN13TiXmlDocumentD1Ev
	.section	.text._ZN8CHistory18clearAndCreateHistEv,"ax",%progbits
	.align	2
	.global	_ZN8CHistory18clearAndCreateHistEv
	.hidden	_ZN8CHistory18clearAndCreateHistEv
	.type	_ZN8CHistory18clearAndCreateHistEv, %function
_ZN8CHistory18clearAndCreateHistEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r0, #56
	bl	_Znwj
	ldr	r2, .L13
	add	r5, r4, #12
	mov	r3, r2
	ldr	r1, .L13+4
	mov	r6, r0
	bl	_ZN16TiXmlDeclarationC1EPKcS1_S1_
	mov	r0, r5
	bl	_ZN9TiXmlNode5ClearEv
	mov	r1, r6
	mov	r0, r5
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	mov	r0, r5
	ldr	r1, [r4, #92]
	bl	_ZNK13TiXmlDocument8SaveFileEPKc
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ble	.L8
	mov	r6, #0
.L10:
	ldr	r0, [r4, #0]
	ldr	r3, [r0, r6, asl #2]
	add	r6, r6, #1
	subs	r0, r3, #0
	beq	.L9
	bl	_ZdaPv
	ldr	r2, [r4, #4]
.L9:
	cmp	r6, r2
	blt	.L10
.L8:
	mov	r2, #0
	mov	r0, r5
	str	r2, [r4, #4]
	strb	r2, [r4, #88]
	str	r2, [r4, #8]
	ldr	r1, [r4, #92]
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_ZN13TiXmlDocument8LoadFileEPKc13TiXmlEncoding
.L14:
	.align	2
.L13:
	.word	.LC1
	.word	.LC0
	.size	_ZN8CHistory18clearAndCreateHistEv, .-_ZN8CHistory18clearAndCreateHistEv
	.section	.text._ZN8CHistoryC1EPc,"ax",%progbits
	.align	2
	.global	_ZN8CHistoryC1EPc
	.hidden	_ZN8CHistoryC1EPc
	.type	_ZN8CHistoryC1EPc, %function
_ZN8CHistoryC1EPc:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #12
	sub	sp, sp, #48
	mov	r4, r0
	mov	r7, #0
	mov	r0, r5
	mov	r8, r1
	bl	_ZN13TiXmlDocumentC1Ev
	str	r7, [r4, #8]
	mov	r0, #1600
	bl	_Znaj
	mov	r1, r8
	strb	r7, [r4, #88]
	mov	r6, sp
	str	r0, [r4, #0]
	mov	r0, sp
	bl	strcpy
	mov	r0, sp
	bl	strlen
	mov	r2, #12
	ldr	r1, .L34
	add	r0, sp, r0
	bl	memcpy
	mov	r0, #48
	bl	_Znaj
	mov	r1, sp
	str	r0, [r4, #92]
	bl	strcpy
	mov	r0, r5
	mov	r2, r7
	ldr	r1, [r4, #92]
	bl	_ZN13TiXmlDocument8LoadFileEPKc13TiXmlEncoding
	cmp	r0, r7
	beq	.L32
.L16:
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	cmp	r0, #0
	streq	r0, [r4, #4]
	beq	.L18
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	mov	r3, #2
	str	r3, [r4, #4]
	str	r0, [r4, #84]
	b	.L19
.L20:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #84]
	add	r2, r0, #2
	str	r2, [r4, #4]
	ldr	r0, [r1, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	str	r0, [r4, #84]
.L19:
	ldr	r0, [r0, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	bne	.L20
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	ldr	ip, [r4, #4]
	cmp	r0, #0
	subeq	ip, ip, #1
	streq	ip, [r4, #4]
	cmp	ip, #0
	ble	.L23
	mov	r6, #0
.L24:
	mov	r0, #250
	ldr	r7, [r4, #0]
	bl	_Znaj
	str	r0, [r7, r6, asl #2]
	ldr	r3, [r4, #4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L24
.L23:
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	ldr	r3, [r4, #4]
	cmp	r3, #0
	str	r0, [r4, #84]
	ble	.L25
	mov	r6, #4
	mov	r5, #0
	b	.L29
.L26:
	add	r5, r5, #2
	cmp	r5, r3
	add	r6, r6, #8
	bge	.L25
.L33:
	ldr	r0, [r4, #84]
.L29:
	bl	_ZNK12TiXmlElement7GetTextEv
	bl	atoi
	str	r0, [r4, #8]
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	ldr	r2, [r4, #0]
	str	r0, [r4, #84]
	ldr	r7, [r2, r5, asl #2]
	bl	_ZNK12TiXmlElement7GetTextEv
	mov	r1, r0
	mov	r0, r7
	bl	strcpy
	ldr	r3, [r4, #4]
	sub	r1, r3, #1
	cmp	r1, r5
	ble	.L26
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #84]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #0]
	cmp	r0, #0
	beq	.L27
	ldr	r0, [r4, #84]
	ldr	r7, [r3, r6]
	bl	_ZNK12TiXmlElement7GetTextEv
	mov	r1, r0
	mov	r0, r7
	bl	strcpy
.L28:
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #84]
	bl	_ZNK12TiXmlElement7GetTextEv
	bl	atoi
	ldr	r3, [r4, #4]
	sub	ip, r3, #2
	cmp	r5, ip
	str	r0, [r4, #8]
	bge	.L26
	ldr	lr, [r4, #84]
	add	r5, r5, #2
	ldr	r0, [lr, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	ldr	r3, [r4, #4]
	add	r6, r6, #8
	cmp	r5, r3
	str	r0, [r4, #84]
	blt	.L33
.L25:
	mov	r1, r3, lsr #31
	add	r2, r3, r1
	and	r3, r2, #1
	rsb	r0, r1, r3
	cmp	r0, #1
	streqb	r0, [r4, #88]
.L18:
	mov	r0, r4
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L27:
	ldr	r1, .L34+4
	ldr	r0, [r3, r6]
	mov	r2, #2
	bl	memcpy
	b	.L28
.L32:
	mov	r0, r4
	bl	_ZN8CHistory18clearAndCreateHistEv
	b	.L16
.L35:
	.align	2
.L34:
	.word	.LC2
	.word	.LANCHOR0
	.size	_ZN8CHistoryC1EPc, .-_ZN8CHistoryC1EPc
	.section	.text._ZN8CHistoryC2EPc,"ax",%progbits
	.align	2
	.global	_ZN8CHistoryC2EPc
	.hidden	_ZN8CHistoryC2EPc
	.type	_ZN8CHistoryC2EPc, %function
_ZN8CHistoryC2EPc:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #12
	sub	sp, sp, #48
	mov	r4, r0
	mov	r7, #0
	mov	r0, r5
	mov	r8, r1
	bl	_ZN13TiXmlDocumentC1Ev
	str	r7, [r4, #8]
	mov	r0, #1600
	bl	_Znaj
	mov	r1, r8
	strb	r7, [r4, #88]
	mov	r6, sp
	str	r0, [r4, #0]
	mov	r0, sp
	bl	strcpy
	mov	r0, sp
	bl	strlen
	mov	r2, #12
	ldr	r1, .L55
	add	r0, sp, r0
	bl	memcpy
	mov	r0, #48
	bl	_Znaj
	mov	r1, sp
	str	r0, [r4, #92]
	bl	strcpy
	mov	r0, r5
	mov	r2, r7
	ldr	r1, [r4, #92]
	bl	_ZN13TiXmlDocument8LoadFileEPKc13TiXmlEncoding
	cmp	r0, r7
	beq	.L53
.L37:
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	cmp	r0, #0
	streq	r0, [r4, #4]
	beq	.L39
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	mov	r3, #2
	str	r3, [r4, #4]
	str	r0, [r4, #84]
	b	.L40
.L41:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #84]
	add	r2, r0, #2
	str	r2, [r4, #4]
	ldr	r0, [r1, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	str	r0, [r4, #84]
.L40:
	ldr	r0, [r0, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	bne	.L41
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	ldr	ip, [r4, #4]
	cmp	r0, #0
	subeq	ip, ip, #1
	streq	ip, [r4, #4]
	cmp	ip, #0
	ble	.L44
	mov	r6, #0
.L45:
	mov	r0, #250
	ldr	r7, [r4, #0]
	bl	_Znaj
	str	r0, [r7, r6, asl #2]
	ldr	r3, [r4, #4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L45
.L44:
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	ldr	r3, [r4, #4]
	cmp	r3, #0
	str	r0, [r4, #84]
	ble	.L46
	mov	r6, #4
	mov	r5, #0
	b	.L50
.L47:
	add	r5, r5, #2
	cmp	r5, r3
	add	r6, r6, #8
	bge	.L46
.L54:
	ldr	r0, [r4, #84]
.L50:
	bl	_ZNK12TiXmlElement7GetTextEv
	bl	atoi
	str	r0, [r4, #8]
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	ldr	r2, [r4, #0]
	str	r0, [r4, #84]
	ldr	r7, [r2, r5, asl #2]
	bl	_ZNK12TiXmlElement7GetTextEv
	mov	r1, r0
	mov	r0, r7
	bl	strcpy
	ldr	r3, [r4, #4]
	sub	r1, r3, #1
	cmp	r1, r5
	ble	.L47
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #84]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #0]
	cmp	r0, #0
	beq	.L48
	ldr	r0, [r4, #84]
	ldr	r7, [r3, r6]
	bl	_ZNK12TiXmlElement7GetTextEv
	mov	r1, r0
	mov	r0, r7
	bl	strcpy
.L49:
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #84]
	bl	_ZNK12TiXmlElement7GetTextEv
	bl	atoi
	ldr	r3, [r4, #4]
	sub	ip, r3, #2
	cmp	r5, ip
	str	r0, [r4, #8]
	bge	.L47
	ldr	lr, [r4, #84]
	add	r5, r5, #2
	ldr	r0, [lr, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	ldr	r3, [r4, #4]
	add	r6, r6, #8
	cmp	r5, r3
	str	r0, [r4, #84]
	blt	.L54
.L46:
	mov	r1, r3, lsr #31
	add	r2, r3, r1
	and	r3, r2, #1
	rsb	r0, r1, r3
	cmp	r0, #1
	streqb	r0, [r4, #88]
.L39:
	mov	r0, r4
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L48:
	ldr	r1, .L55+4
	ldr	r0, [r3, r6]
	mov	r2, #2
	bl	memcpy
	b	.L49
.L53:
	mov	r0, r4
	bl	_ZN8CHistory18clearAndCreateHistEv
	b	.L37
.L56:
	.align	2
.L55:
	.word	.LC2
	.word	.LANCHOR0
	.size	_ZN8CHistoryC2EPc, .-_ZN8CHistoryC2EPc
	.section	.text._GLOBAL__I_histArray,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_histArray, %function
_GLOBAL__I_histArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L59
	ldr	r5, .L59+4
	mov	r0, r4
	bl	_ZN4_STL8ios_base9_Loc_initC1Ev
	add	r6, r4, #4
	mov	r2, r5
	ldr	r1, .L59+8
	mov	r0, r4
	bl	__aeabi_atexit
	mov	r0, r6
	bl	_ZN4_STL8ios_base4InitC1Ev
	add	r4, r4, #8
	mov	r2, r5
	ldr	r1, .L59+12
	mov	r0, r6
	bl	__aeabi_atexit
	mov	r0, r4
	bl	_ZN13TiXmlDocumentC1Ev
	mov	r0, r4
	mov	r2, r5
	ldr	r1, .L59+16
	ldmfd	sp!, {r4, r5, r6, lr}
	b	__aeabi_atexit
.L60:
	.align	2
.L59:
	.word	.LANCHOR1
	.word	__dso_handle
	.word	_ZN4_STL8ios_base9_Loc_initD1Ev
	.word	_ZN4_STL8ios_base4InitD1Ev
	.word	_ZN13TiXmlDocumentD1Ev
	.size	_GLOBAL__I_histArray, .-_GLOBAL__I_histArray
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_histArray(target1)
	.section	.text._ZN8CHistoryD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8CHistoryD2Ev
	.hidden	_ZN8CHistoryD2Ev
	.type	_ZN8CHistoryD2Ev, %function
_ZN8CHistoryD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r1, [r0, #4]
	mov	r5, r0
	cmp	r1, #0
	ldr	r2, [r0, #0]
	movgt	r4, #0
	ble	.L63
.L65:
	ldr	r3, [r2, r4, asl #2]
	add	r4, r4, #1
	subs	r0, r3, #0
	beq	.L64
	bl	_ZdaPv
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #0]
.L64:
	cmp	r4, r1
	blt	.L65
.L63:
	cmp	r2, #0
	beq	.L66
	mov	r0, r2
	bl	_ZdaPv
.L66:
	ldr	r0, [r5, #64]
	ldr	r2, .L71
	ldr	r1, .L71+4
	cmp	r0, r2
	str	r1, [r5, #12]
	beq	.L67
	cmp	r0, #0
	beq	.L67
	bl	_ZdaPv
.L67:
	add	r0, r5, #12
	bl	_ZN9TiXmlNodeD2Ev
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
.L72:
	.align	2
.L71:
	.word	_ZN11TiXmlString8nullrep_E
	.word	_ZTV13TiXmlDocument+8
	.size	_ZN8CHistoryD2Ev, .-_ZN8CHistoryD2Ev
	.section	.text._ZN8CHistoryD1Ev,"ax",%progbits
	.align	2
	.global	_ZN8CHistoryD1Ev
	.hidden	_ZN8CHistoryD1Ev
	.type	_ZN8CHistoryD1Ev, %function
_ZN8CHistoryD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r1, [r0, #4]
	mov	r5, r0
	cmp	r1, #0
	ldr	r2, [r0, #0]
	movgt	r4, #0
	ble	.L75
.L77:
	ldr	r3, [r2, r4, asl #2]
	add	r4, r4, #1
	subs	r0, r3, #0
	beq	.L76
	bl	_ZdaPv
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #0]
.L76:
	cmp	r4, r1
	blt	.L77
.L75:
	cmp	r2, #0
	beq	.L78
	mov	r0, r2
	bl	_ZdaPv
.L78:
	ldr	r0, [r5, #64]
	ldr	r2, .L83
	ldr	r1, .L83+4
	cmp	r0, r2
	str	r1, [r5, #12]
	beq	.L79
	cmp	r0, #0
	beq	.L79
	bl	_ZdaPv
.L79:
	add	r0, r5, #12
	bl	_ZN9TiXmlNodeD2Ev
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
.L84:
	.align	2
.L83:
	.word	_ZN11TiXmlString8nullrep_E
	.word	_ZTV13TiXmlDocument+8
	.size	_ZN8CHistoryD1Ev, .-_ZN8CHistoryD1Ev
	.section	.text._ZN8CHistory16addNpcTextToHistEiPc,"ax",%progbits
	.align	2
	.global	_ZN8CHistory16addNpcTextToHistEiPc
	.hidden	_ZN8CHistory16addNpcTextToHistEiPc
	.type	_ZN8CHistory16addNpcTextToHistEiPc, %function
_ZN8CHistory16addNpcTextToHistEiPc:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r5, [r0, #88]	@ zero_extendqisi2
	mov	r4, r0
	cmp	r5, #0
	sub	sp, sp, #60
	mov	r7, r1
	mov	r6, r2
	movne	r0, #0
	beq	.L93
.L87:
	add	sp, sp, #60
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L93:
	mov	r0, #80
	bl	_Znwj
	add	r8, sp, #8
	ldr	r1, .L95
	str	r0, [sp, #4]
	bl	_ZN12TiXmlElementC1EPKc
	mov	r2, r7
	ldr	r1, .L95+4
	mov	r0, r8
	bl	sprintf
	mov	r0, #48
	bl	_Znwj
	mov	r1, #4
	mov	r9, r0
	mov	sl, r0
	bl	_ZN9TiXmlNodeC2ENS_8NodeTypeE
	ldr	r1, .L95+8
	str	r1, [r9], #32
	mov	r0, r8
	bl	strlen
	mov	r1, r8
	mov	r2, r0
	mov	r0, r9
	bl	_ZN11TiXmlString6assignEPKcj
	strb	r5, [sl, #44]
	mov	r0, #80
	bl	_Znwj
	ldr	r1, .L95+12
	mov	r9, r0
	bl	_ZN12TiXmlElementC1EPKc
	mov	r0, #48
	bl	_Znwj
	mov	r1, #4
	mov	fp, r0
	mov	r8, r0
	bl	_ZN9TiXmlNodeC2ENS_8NodeTypeE
	ldr	r0, .L95+8
	str	r0, [fp], #32
	mov	r0, r6
	bl	strlen
	mov	r1, r6
	mov	r2, r0
	mov	r0, fp
	bl	_ZN11TiXmlString6assignEPKcj
	strb	r5, [r8, #44]
	mov	r0, #80
	bl	_Znwj
	add	fp, r4, #12
	ldr	r1, .L95+16
	mov	r5, r0
	bl	_ZN12TiXmlElementC1EPKc
	mov	r1, r5
	mov	r0, fp
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	ldr	r1, [sp, #4]
	mov	r0, r5
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	mov	r1, sl
	ldr	r0, [sp, #4]
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	mov	r1, r9
	mov	r0, r5
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	mov	r1, r8
	mov	r0, r9
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	mov	r0, fp
	bl	_ZNK13TiXmlDocument8SaveFileEv
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L94
	ldr	r2, [r4, #84]
	ldr	r0, [r2, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #84]
.L91:
	mov	r0, #250
	ldmia	r4, {r5, r8}	@ phole ldm
	bl	_Znaj
	mov	r1, r6
	str	r0, [r5, r8, asl #2]
	ldr	ip, [r4, #0]
	ldr	r2, [r4, #4]
	ldr	r0, [ip, r2, asl #2]
	bl	strcpy
	ldr	r0, [r4, #4]
	mov	ip, #1
	add	r3, r0, ip
	str	r3, [r4, #4]
	mov	r0, ip
	str	r7, [r4, #8]
	strb	ip, [r4, #88]
	b	.L87
.L94:
	mov	r0, fp
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #84]
	b	.L91
.L96:
	.align	2
.L95:
	.word	.LC4
	.word	.LC5
	.word	_ZTV9TiXmlText+8
	.word	.LC6
	.word	.LC7
	.size	_ZN8CHistory16addNpcTextToHistEiPc, .-_ZN8CHistory16addNpcTextToHistEiPc
	.section	.text._ZN8CHistory19addPlayerTextToHistEiPc,"ax",%progbits
	.align	2
	.global	_ZN8CHistory19addPlayerTextToHistEiPc
	.hidden	_ZN8CHistory19addPlayerTextToHistEiPc
	.type	_ZN8CHistory19addPlayerTextToHistEiPc, %function
_ZN8CHistory19addPlayerTextToHistEiPc:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0
	ldrb	r0, [r0, #88]	@ zero_extendqisi2
	sub	sp, sp, #60
	cmp	r0, #0
	mov	r6, r1
	mov	r5, r2
	beq	.L99
	mov	r0, #80
	bl	_Znwj
	add	fp, sp, #8
	ldr	r1, .L103
	ldr	r7, .L103+4
	str	r0, [sp, #4]
	bl	_ZN12TiXmlElementC1EPKc
	mov	r2, r6
	ldr	r1, .L103+8
	mov	r0, fp
	bl	sprintf
	mov	r0, #48
	bl	_Znwj
	mov	r1, #4
	mov	r9, r0
	mov	r8, r0
	bl	_ZN9TiXmlNodeC2ENS_8NodeTypeE
	str	r7, [r9], #32
	mov	r0, fp
	bl	strlen
	mov	r7, #0
	mov	r1, fp
	mov	r2, r0
	mov	r0, r9
	bl	_ZN11TiXmlString6assignEPKcj
	strb	r7, [r8, #44]
	mov	r0, #80
	bl	_Znwj
	ldr	r1, .L103+12
	mov	r9, r0
	bl	_ZN12TiXmlElementC1EPKc
	mov	r0, #48
	bl	_Znwj
	mov	r1, #4
	mov	sl, r0
	mov	fp, r0
	bl	_ZN9TiXmlNodeC2ENS_8NodeTypeE
	ldr	r0, .L103+4
	str	r0, [fp], #32
	mov	r0, r5
	bl	strlen
	mov	r1, r5
	mov	r2, r0
	mov	r0, fp
	bl	_ZN11TiXmlString6assignEPKcj
	strb	r7, [sl, #44]
	ldr	r3, [r4, #84]
	mov	r1, r9
	ldr	r0, [r3, #16]
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	mov	r1, sl
	mov	r0, r9
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	ldr	sl, [r4, #84]
	ldr	r1, [sp, #4]
	ldr	r0, [sl, #16]
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	mov	r1, r8
	ldr	r0, [sp, #4]
	bl	_ZN9TiXmlNode12LinkEndChildEPS_
	add	r0, r4, #12
	bl	_ZNK13TiXmlDocument8SaveFileEv
	ldr	r0, [r4, #84]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	ldmia	r4, {r8, sl}	@ phole ldm
	str	r0, [r4, #84]
	mov	r0, #250
	bl	_Znaj
	mov	r1, r5
	str	r0, [r8, sl, asl #2]
	ldr	r2, [r4, #4]
	ldr	ip, [r4, #0]
	ldr	r0, [ip, r2, asl #2]
	bl	strcpy
	ldr	r1, [r4, #4]
	mov	r0, #1
	add	r3, r1, r0
	strb	r7, [r4, #88]
	stmib	r4, {r3, r6}	@ phole stm
.L99:
	add	sp, sp, #60
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L104:
	.align	2
.L103:
	.word	.LC4
	.word	_ZTV9TiXmlText+8
	.word	.LC5
	.word	.LC8
	.size	_ZN8CHistory19addPlayerTextToHistEiPc, .-_ZN8CHistory19addPlayerTextToHistEiPc
	.hidden	histArray
	.global	histArray
	.hidden	size
	.global	size
	.hidden	location
	.global	location
	.hidden	histDoc
	.global	histDoc
	.hidden	histElem
	.global	histElem
	.hidden	playerTurn
	.global	playerTurn
	.hidden	histFilename
	.global	histFilename
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC3:
	.ascii	" \000\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"1.0\000"
.LC1:
	.ascii	"\000"
	.space	3
.LC2:
	.ascii	"history.xml\000"
.LC4:
	.ascii	"id\000"
	.space	1
.LC5:
	.ascii	"%d\000"
	.space	1
.LC6:
	.ascii	"npcText\000"
.LC7:
	.ascii	"entry\000"
	.space	2
.LC8:
	.ascii	"playerText\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZN4_STLL8_LocInitE, %object
	.size	_ZN4_STLL8_LocInitE, 1
_ZN4_STLL8_LocInitE:
	.space	1
	.space	3
	.type	_ZN4_STLL8_IosInitE, %object
	.size	_ZN4_STLL8_IosInitE, 1
_ZN4_STLL8_IosInitE:
	.space	1
	.space	3
	.type	histDoc, %object
	.size	histDoc, 72
histDoc:
	.space	72
	.type	histArray, %object
	.size	histArray, 4
histArray:
	.space	4
	.type	size, %object
	.size	size, 4
size:
	.space	4
	.type	location, %object
	.size	location, 4
location:
	.space	4
	.type	histElem, %object
	.size	histElem, 4
histElem:
	.space	4
	.type	playerTurn, %object
	.size	playerTurn, 1
playerTurn:
	.space	1
	.space	3
	.type	histFilename, %object
	.size	histFilename, 4
histFilename:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
