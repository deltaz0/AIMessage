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
	.file	"xmlloader.cpp"
	.section	.text._GLOBAL__I_elem,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_elem, %function
_GLOBAL__I_elem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L3
	mov	r0, r4
	bl	_ZN13TiXmlDocumentC1Ev
	mov	r0, r4
	ldr	r1, .L3+4
	ldr	r2, .L3+8
	ldmfd	sp!, {r4, lr}
	b	__aeabi_atexit
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	_ZN13TiXmlDocumentD1Ev
	.word	__dso_handle
	.size	_GLOBAL__I_elem, .-_GLOBAL__I_elem
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_elem(target1)
	.section	.text._ZN13TiXmlDocumentD1Ev,"axG",%progbits,_ZN13TiXmlDocumentD1Ev,comdat
	.align	2
	.weak	_ZN13TiXmlDocumentD1Ev
	.hidden	_ZN13TiXmlDocumentD1Ev
	.type	_ZN13TiXmlDocumentD1Ev, %function
_ZN13TiXmlDocumentD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r1, .L9
	mov	r4, r0
	ldr	r0, [r0, #52]
	ldr	r3, .L9+4
	cmp	r0, r1
	str	r3, [r4, #0]
	beq	.L6
	cmp	r0, #0
	beq	.L6
	bl	_ZdaPv
.L6:
	mov	r0, r4
	bl	_ZN9TiXmlNodeD2Ev
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L10:
	.align	2
.L9:
	.word	_ZN11TiXmlString8nullrep_E
	.word	_ZTV13TiXmlDocument+8
	.size	_ZN13TiXmlDocumentD1Ev, .-_ZN13TiXmlDocumentD1Ev
	.section	.text._ZN10CXmlLoaderD1Ev,"ax",%progbits
	.align	2
	.global	_ZN10CXmlLoaderD1Ev
	.hidden	_ZN10CXmlLoaderD1Ev
	.type	_ZN10CXmlLoaderD1Ev, %function
_ZN10CXmlLoaderD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #4]
	mov	r4, r0
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L12
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L12:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L13
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L13:
	ldr	r0, [r3, #8]
	cmp	r0, #0
	beq	.L14
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L14:
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L15
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L15:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L16
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L16:
	ldr	r0, [r3, #20]
	cmp	r0, #0
	beq	.L17
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L17:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	beq	.L18
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L18:
	ldr	r0, [r3, #28]
	cmp	r0, #0
	beq	.L19
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L19:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	beq	.L20
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L20:
	ldr	r0, [r3, #36]
	cmp	r0, #0
	beq	.L21
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L21:
	ldr	r0, [r3, #40]
	cmp	r0, #0
	beq	.L22
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L22:
	ldr	r0, [r3, #44]
	cmp	r0, #0
	beq	.L23
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L23:
	ldr	r0, [r3, #48]
	cmp	r0, #0
	beq	.L24
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L24:
	ldr	r0, [r3, #52]
	cmp	r0, #0
	beq	.L25
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L25:
	cmp	r3, #0
	beq	.L26
	mov	r0, r3
	bl	_ZdaPv
.L26:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN10CXmlLoaderD1Ev, .-_ZN10CXmlLoaderD1Ev
	.section	.text._ZN10CXmlLoaderD2Ev,"ax",%progbits
	.align	2
	.global	_ZN10CXmlLoaderD2Ev
	.hidden	_ZN10CXmlLoaderD2Ev
	.type	_ZN10CXmlLoaderD2Ev, %function
_ZN10CXmlLoaderD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #4]
	mov	r4, r0
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L29
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L29:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L30
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L30:
	ldr	r0, [r3, #8]
	cmp	r0, #0
	beq	.L31
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L31:
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L32
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L32:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L33
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L33:
	ldr	r0, [r3, #20]
	cmp	r0, #0
	beq	.L34
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L34:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	beq	.L35
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L35:
	ldr	r0, [r3, #28]
	cmp	r0, #0
	beq	.L36
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L36:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	beq	.L37
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L37:
	ldr	r0, [r3, #36]
	cmp	r0, #0
	beq	.L38
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L38:
	ldr	r0, [r3, #40]
	cmp	r0, #0
	beq	.L39
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L39:
	ldr	r0, [r3, #44]
	cmp	r0, #0
	beq	.L40
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L40:
	ldr	r0, [r3, #48]
	cmp	r0, #0
	beq	.L41
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L41:
	ldr	r0, [r3, #52]
	cmp	r0, #0
	beq	.L42
	bl	_ZdaPv
	ldr	r3, [r4, #4]
.L42:
	cmp	r3, #0
	beq	.L43
	mov	r0, r3
	bl	_ZdaPv
.L43:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN10CXmlLoaderD2Ev, .-_ZN10CXmlLoaderD2Ev
	.section	.text._ZN10CXmlLoader15getNextRowArrayEv,"ax",%progbits
	.align	2
	.global	_ZN10CXmlLoader15getNextRowArrayEv
	.hidden	_ZN10CXmlLoader15getNextRowArrayEv
	.type	_ZN10CXmlLoader15getNextRowArrayEv, %function
_ZN10CXmlLoader15getNextRowArrayEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	ip, [r4, #4]
	mov	r1, r0
	ldr	r0, [ip, #0]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r2, [r4, #4]
	mov	r1, r0
	ldr	r0, [r2, #4]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #4]
	mov	r1, r0
	ldr	r0, [r3, #8]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	ip, [r4, #4]
	mov	r1, r0
	ldr	r0, [ip, #12]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r2, [r4, #4]
	mov	r1, r0
	ldr	r0, [r2, #16]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #4]
	mov	r1, r0
	ldr	r0, [r3, #20]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	ip, [r4, #4]
	mov	r1, r0
	ldr	r0, [ip, #24]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r2, [r4, #4]
	mov	r1, r0
	ldr	r0, [r2, #28]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #4]
	mov	r1, r0
	ldr	r0, [r3, #32]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	ip, [r4, #4]
	mov	r1, r0
	ldr	r0, [ip, #36]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r2, [r4, #4]
	mov	r1, r0
	ldr	r0, [r2, #40]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r3, [r4, #4]
	mov	r1, r0
	ldr	r0, [r3, #44]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	ip, [r4, #4]
	mov	r1, r0
	ldr	r0, [ip, #48]
	bl	strcpy
	ldr	r0, [r4, #0]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	str	r0, [r4, #0]
	bl	_ZNK12TiXmlElement7GetTextEv
	ldr	r2, [r4, #4]
	mov	r1, r0
	ldr	r0, [r2, #52]
	bl	strcpy
	ldr	r3, [r4, #0]
	ldr	r0, [r3, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	cmp	r0, #0
	beq	.L49
	ldr	lr, [r4, #0]
	ldr	r0, [lr, #16]
	bl	_ZNK9TiXmlNode18NextSiblingElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	ldr	r3, [r4, #4]
	str	r0, [r4, #0]
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.L49:
	ldr	r1, [r4, #4]
	ldr	r0, .L50
	str	r0, [r1, #0]
	ldr	r3, [r4, #4]
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.L51:
	.align	2
.L50:
	.word	.LC0
	.size	_ZN10CXmlLoader15getNextRowArrayEv, .-_ZN10CXmlLoader15getNextRowArrayEv
	.section	.text._ZN10CXmlLoaderC1EPKc,"ax",%progbits
	.align	2
	.global	_ZN10CXmlLoaderC1EPKc
	.hidden	_ZN10CXmlLoaderC1EPKc
	.type	_ZN10CXmlLoaderC1EPKc, %function
_ZN10CXmlLoaderC1EPKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L55
	mov	r2, #0
	mov	r4, r0
	mov	r0, r5
	bl	_ZN13TiXmlDocument8LoadFileEPKc13TiXmlEncoding
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	str	r0, [r4, #0]
	mov	r0, #56
	bl	_Znaj
	mov	r5, r0
	str	r0, [r4, #4]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r5, #0]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #4]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #8]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #12]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #16]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #20]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #24]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #28]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #32]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #36]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #40]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #44]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #48]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #52]
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.size	_ZN10CXmlLoaderC1EPKc, .-_ZN10CXmlLoaderC1EPKc
	.section	.text._ZN10CXmlLoaderC2EPKc,"ax",%progbits
	.align	2
	.global	_ZN10CXmlLoaderC2EPKc
	.hidden	_ZN10CXmlLoaderC2EPKc
	.type	_ZN10CXmlLoaderC2EPKc, %function
_ZN10CXmlLoaderC2EPKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L60
	mov	r2, #0
	mov	r4, r0
	mov	r0, r5
	bl	_ZN13TiXmlDocument8LoadFileEPKc13TiXmlEncoding
	mov	r0, r5
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	bl	_ZNK9TiXmlNode17FirstChildElementEv
	str	r0, [r4, #0]
	mov	r0, #56
	bl	_Znaj
	mov	r5, r0
	str	r0, [r4, #4]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r5, #0]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #4]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #8]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #12]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #16]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #20]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #24]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #28]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #32]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #36]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #40]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #44]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #48]
	mov	r0, #250
	ldr	r5, [r4, #4]
	bl	_Znaj
	str	r0, [r5, #52]
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.size	_ZN10CXmlLoaderC2EPKc, .-_ZN10CXmlLoaderC2EPKc
	.hidden	elem
	.global	elem
	.hidden	rowCurr
	.global	rowCurr
	.hidden	doc
	.global	doc
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-1\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	doc, %object
	.size	doc, 72
doc:
	.space	72
	.type	elem, %object
	.size	elem, 4
elem:
	.space	4
	.type	rowCurr, %object
	.size	rowCurr, 4
rowCurr:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
