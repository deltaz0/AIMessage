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
	.file	"npc.cpp"
	.section	.text._ZN4CNpc11chooseReplyEi,"ax",%progbits
	.align	2
	.global	_ZN4CNpc11chooseReplyEi
	.hidden	_ZN4CNpc11chooseReplyEi
	.type	_ZN4CNpc11chooseReplyEi, %function
_ZN4CNpc11chooseReplyEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #3
	ldrls	r3, .L5
	movhi	r0, #0
	movls	r0, #1
	strls	r1, [r3, #0]
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.size	_ZN4CNpc11chooseReplyEi, .-_ZN4CNpc11chooseReplyEi
	.section	.text._ZN4CNpc7getHistEi,"ax",%progbits
	.align	2
	.global	_ZN4CNpc7getHistEi
	.hidden	_ZN4CNpc7getHistEi
	.type	_ZN4CNpc7getHistEi, %function
_ZN4CNpc7getHistEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #16]
	ldr	r3, [r2, #0]
	ldr	r0, [r3, r1, asl #2]
	bx	lr
	.size	_ZN4CNpc7getHistEi, .-_ZN4CNpc7getHistEi
	.section	.text._ZN4CNpc13getPlayerTurnEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc13getPlayerTurnEv
	.hidden	_ZN4CNpc13getPlayerTurnEv
	.type	_ZN4CNpc13getPlayerTurnEv, %function
_ZN4CNpc13getPlayerTurnEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #12]	@ zero_extendqisi2
	bx	lr
	.size	_ZN4CNpc13getPlayerTurnEv, .-_ZN4CNpc13getPlayerTurnEv
	.section	.text._ZN4CNpc11getHistSizeEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc11getHistSizeEv
	.hidden	_ZN4CNpc11getHistSizeEv
	.type	_ZN4CNpc11getHistSizeEv, %function
_ZN4CNpc11getHistSizeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	ldr	r0, [r3, #4]
	bx	lr
	.size	_ZN4CNpc11getHistSizeEv, .-_ZN4CNpc11getHistSizeEv
	.section	.text._GLOBAL__I__ZN4CNpc10activeNpcsE,"ax",%progbits
	.align	2
	.type	_GLOBAL__I__ZN4CNpc10activeNpcsE, %function
_GLOBAL__I__ZN4CNpc10activeNpcsE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L15
	ldr	r4, .L15+4
	add	r6, r5, #4
	mov	r0, r6
	bl	_ZN4_STL8ios_base9_Loc_initC1Ev
	add	r5, r5, #8
	mov	r2, r4
	ldr	r1, .L15+8
	mov	r0, r6
	bl	__aeabi_atexit
	mov	r0, r5
	bl	_ZN4_STL8ios_base4InitC1Ev
	mov	r0, r5
	mov	r2, r4
	ldr	r1, .L15+12
	ldmfd	sp!, {r4, r5, r6, lr}
	b	__aeabi_atexit
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZN4_STL8ios_base9_Loc_initD1Ev
	.word	_ZN4_STL8ios_base4InitD1Ev
	.size	_GLOBAL__I__ZN4CNpc10activeNpcsE, .-_GLOBAL__I__ZN4CNpc10activeNpcsE
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I__ZN4CNpc10activeNpcsE(target1)
	.section	.text._ZN4CNpc8sendTextEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc8sendTextEv
	.hidden	_ZN4CNpc8sendTextEv
	.type	_ZN4CNpc8sendTextEv, %function
_ZN4CNpc8sendTextEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	strb	r1, [r0, #12]
	ldr	r0, .L28
	ldr	r5, [r4, #8]
	ldr	r3, [r0, #0]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L18
.L23:
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
.L19:
	ldr	lr, [r4, #0]
	add	r5, r5, r5, asl #2
	ldr	r0, [lr, #0]
	mov	r5, r5, asl #3
	add	r3, r0, r5
	ldr	r1, [r3, #24]
	str	r1, [r4, #8]
	ldr	r2, [lr, #0]
	ldr	r0, [r4, #16]
	add	ip, r2, r5
	ldr	r2, [ip, #8]
	bl	_ZN8CHistory19addPlayerTextToHistEiPc
	cmp	r0, #0
	bne	.L27
.L18:
	mov	r2, #1
	ldr	r0, .L28+4
	strb	r2, [r4, #12]
	ldmfd	sp!, {r3, r4, r5, pc}
.L22:
	ldr	ip, [r4, #0]
	add	r5, r5, r5, asl #2
	ldr	r1, [ip, #0]
	mov	r5, r5, asl #3
	add	lr, r1, r5
	ldr	r1, [lr, #36]
	str	r1, [r4, #8]
	ldr	r2, [ip, #0]
	add	r0, r2, r5
	ldr	r2, [r0, #20]
	ldr	r0, [r4, #16]
	bl	_ZN8CHistory19addPlayerTextToHistEiPc
	cmp	r0, #0
	beq	.L18
	ldr	r0, [r4, #0]
	ldr	r3, [r0, #0]
	add	r5, r3, r5
	ldr	r0, [r5, #20]
	ldmfd	sp!, {r3, r4, r5, pc}
.L21:
	ldr	r0, [r4, #0]
	add	r5, r5, r5, asl #2
	ldr	r1, [r0, #0]
	mov	r5, r5, asl #3
	add	ip, r1, r5
	ldr	r1, [ip, #32]
	str	r1, [r4, #8]
	ldr	r2, [r0, #0]
	ldr	r0, [r4, #16]
	add	r3, r2, r5
	ldr	r2, [r3, #16]
	bl	_ZN8CHistory19addPlayerTextToHistEiPc
	cmp	r0, #0
	beq	.L18
	ldr	r3, [r4, #0]
	ldr	lr, [r3, #0]
	add	r5, lr, r5
	ldr	r0, [r5, #16]
	ldmfd	sp!, {r3, r4, r5, pc}
.L20:
	ldr	r3, [r4, #0]
	add	r5, r5, r5, asl #2
	ldr	r1, [r3, #0]
	mov	r5, r5, asl #3
	add	r0, r1, r5
	ldr	r1, [r0, #28]
	str	r1, [r4, #8]
	ldr	r2, [r3, #0]
	ldr	r0, [r4, #16]
	add	lr, r2, r5
	ldr	r2, [lr, #12]
	bl	_ZN8CHistory19addPlayerTextToHistEiPc
	cmp	r0, #0
	beq	.L18
	ldr	lr, [r4, #0]
	ldr	ip, [lr, #0]
	add	r5, ip, r5
	ldr	r0, [r5, #12]
	ldmfd	sp!, {r3, r4, r5, pc}
.L27:
	ldr	ip, [r4, #0]
	ldr	r1, [ip, #0]
	add	r5, r1, r5
	ldr	r0, [r5, #8]
	ldmfd	sp!, {r3, r4, r5, pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.word	.LC0
	.size	_ZN4CNpc8sendTextEv, .-_ZN4CNpc8sendTextEv
	.section	.text._ZN4CNpc9getReplyDEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc9getReplyDEv
	.hidden	_ZN4CNpc9getReplyDEv
	.type	_ZN4CNpc9getReplyDEv, %function
_ZN4CNpc9getReplyDEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]
	ldr	r1, [r0, #8]
	ldr	r2, [ip, #0]
	add	r0, r1, r1, asl #2
	add	r3, r2, r0, asl #3
	ldrb	r0, [r3, #7]	@ zero_extendqisi2
	b	_ZN11CReplyArray14getReplyByCharEc
	.size	_ZN4CNpc9getReplyDEv, .-_ZN4CNpc9getReplyDEv
	.section	.text._ZN4CNpc9getReplyCEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc9getReplyCEv
	.hidden	_ZN4CNpc9getReplyCEv
	.type	_ZN4CNpc9getReplyCEv, %function
_ZN4CNpc9getReplyCEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]
	ldr	r1, [r0, #8]
	ldr	r2, [ip, #0]
	add	r0, r1, r1, asl #2
	add	r3, r2, r0, asl #3
	ldrb	r0, [r3, #6]	@ zero_extendqisi2
	b	_ZN11CReplyArray14getReplyByCharEc
	.size	_ZN4CNpc9getReplyCEv, .-_ZN4CNpc9getReplyCEv
	.section	.text._ZN4CNpc9getReplyBEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc9getReplyBEv
	.hidden	_ZN4CNpc9getReplyBEv
	.type	_ZN4CNpc9getReplyBEv, %function
_ZN4CNpc9getReplyBEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]
	ldr	r1, [r0, #8]
	ldr	r2, [ip, #0]
	add	r0, r1, r1, asl #2
	add	r3, r2, r0, asl #3
	ldrb	r0, [r3, #5]	@ zero_extendqisi2
	b	_ZN11CReplyArray14getReplyByCharEc
	.size	_ZN4CNpc9getReplyBEv, .-_ZN4CNpc9getReplyBEv
	.section	.text._ZN4CNpc9getReplyAEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc9getReplyAEv
	.hidden	_ZN4CNpc9getReplyAEv
	.type	_ZN4CNpc9getReplyAEv, %function
_ZN4CNpc9getReplyAEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]
	ldr	r1, [r0, #8]
	ldr	r2, [ip, #0]
	add	r0, r1, r1, asl #2
	add	r3, r2, r0, asl #3
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	b	_ZN11CReplyArray14getReplyByCharEc
	.size	_ZN4CNpc9getReplyAEv, .-_ZN4CNpc9getReplyAEv
	.section	.text._ZN4CNpc7getTextEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc7getTextEv
	.hidden	_ZN4CNpc7getTextEv
	.type	_ZN4CNpc7getTextEv, %function
_ZN4CNpc7getTextEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0, #0]
	ldr	r1, [r4, #8]
	mov	ip, #1
	strb	ip, [r4, #12]
	ldr	r3, [r0, #0]
	add	r2, r1, r1, asl #2
	ldr	r2, [r3, r2, asl #3]
	ldr	r0, [r4, #16]
	bl	_ZN8CHistory16addNpcTextToHistEiPc
	subs	r3, r0, #0
	beq	.L39
	ldr	r2, [r4, #0]
	ldr	r5, [r4, #8]
	ldr	lr, [r2, #0]
	add	r5, r5, r5, asl #2
	add	r2, lr, r5, asl #3
	ldr	r0, [r2, #4]
	ldr	r1, .L43
	cmp	r0, r1
	ldrne	r0, [lr, r5, asl #3]
	ldmnefd	sp!, {r3, r4, r5, pc}
	ldr	r1, [r2, #24]
	str	r1, [r4, #8]
	ldr	r0, [r4, #16]
	ldr	r2, .L43+4
	bl	_ZN8CHistory19addPlayerTextToHistEiPc
	ldr	r0, [r4, #0]
	mov	ip, #0
	strb	ip, [r4, #12]
	ldr	r3, [r0, #0]
	ldr	r0, [r3, r5, asl #3]
	ldmfd	sp!, {r3, r4, r5, pc}
.L39:
	ldr	r0, .L43+8
	strb	r3, [r4, #12]
	ldmfd	sp!, {r3, r4, r5, pc}
.L44:
	.align	2
.L43:
	.word	2054847098
	.word	.LANCHOR1
	.word	.LC0
	.size	_ZN4CNpc7getTextEv, .-_ZN4CNpc7getTextEv
	.section	.text._ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi,"axG",%progbits,_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi,comdat
	.align	2
	.weak	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	.hidden	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	.type	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi, %function
_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #88]
	ldr	ip, [r0, #8]
	cmp	r2, #0
	orr	r3, r1, ip
	ldr	r2, [r0, #20]
	orreq	r3, r3, #1
	tst	r3, r2
	str	r3, [r0, #8]
	bxeq	lr
	b	_ZN4_STL8ios_base16_M_throw_failureEv
	.size	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi, .-_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	.section	.text._ZN4CNpcD1Ev,"ax",%progbits
	.align	2
	.global	_ZN4CNpcD1Ev
	.hidden	_ZN4CNpcD1Ev
	.type	_ZN4CNpcD1Ev, %function
_ZN4CNpcD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, [r0, #16]
	mov	r4, r0
	cmp	r5, #0
	beq	.L50
	mov	r0, r5
	bl	_ZN8CHistoryD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L50:
	ldr	r5, [r4, #0]
	cmp	r5, #0
	beq	.L51
	mov	r0, r5
	bl	_ZN16CDialogueManagerD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L51:
	ldr	r3, .L54
	ldr	r0, [r3, #12]
	sub	r2, r0, #1
	cmp	r2, #0
	str	r2, [r3, #12]
	bne	.L52
	bl	_ZN11CReplyArray12clearRepliesEv
.L52:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L55:
	.align	2
.L54:
	.word	.LANCHOR0
	.size	_ZN4CNpcD1Ev, .-_ZN4CNpcD1Ev
	.section	.text._ZN4CNpcD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4CNpcD2Ev
	.hidden	_ZN4CNpcD2Ev
	.type	_ZN4CNpcD2Ev, %function
_ZN4CNpcD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, [r0, #16]
	mov	r4, r0
	cmp	r5, #0
	beq	.L57
	mov	r0, r5
	bl	_ZN8CHistoryD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L57:
	ldr	r5, [r4, #0]
	cmp	r5, #0
	beq	.L58
	mov	r0, r5
	bl	_ZN16CDialogueManagerD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L58:
	ldr	r3, .L61
	ldr	r0, [r3, #12]
	sub	r2, r0, #1
	cmp	r2, #0
	str	r2, [r3, #12]
	bne	.L59
	bl	_ZN11CReplyArray12clearRepliesEv
.L59:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L62:
	.align	2
.L61:
	.word	.LANCHOR0
	.size	_ZN4CNpcD2Ev, .-_ZN4CNpcD2Ev
	.section	.text._ZN4CNpcC1EPc,"ax",%progbits
	.align	2
	.global	_ZN4CNpcC1EPc
	.hidden	_ZN4CNpcC1EPc
	.type	_ZN4CNpcC1EPc, %function
_ZN4CNpcC1EPc:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r6, .L69
	sub	sp, sp, #84
	ldr	ip, [r6, #12]
	mov	r2, #0
	add	r7, ip, #1
	str	r7, [r6, #12]
	mov	r4, r0
	str	r2, [r0, #8]
	str	r2, [r6, #0]
	strb	r2, [r0, #12]
	mov	r0, sp
	mov	r6, r1
	bl	strcpy
	mov	r0, sp
	bl	strlen
	mov	r2, #5
	ldr	r1, .L69+4
	add	r0, sp, r0
	bl	memcpy
	mov	r0, #4
	bl	_Znwj
	mov	r1, sp
	mov	r7, r0
	bl	_ZN16CDialogueManagerC1EPKc
	ldr	r0, .L69+8
	str	r7, [r4, #0]
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
.L64:
	mov	r0, #96
	bl	_Znwj
	mov	r1, r6
	mov	r5, r0
	bl	_ZN8CHistoryC1EPc
	str	r5, [r4, #16]
	ldr	r3, [r5, #8]
	str	r3, [r4, #8]
	ldrb	r1, [r5, #88]	@ zero_extendqisi2
	strb	r1, [r4, #12]
	cmp	r1, #0
	beq	.L65
	ldr	ip, [r4, #0]
	add	r3, r3, r3, asl #2
	ldr	r2, [ip, #0]
	ldr	r0, .L69+12
	add	r3, r2, r3, asl #3
	ldr	lr, [r3, #4]
	cmp	lr, r0
	beq	.L68
.L65:
	mov	r0, r4
	add	sp, sp, #84
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L67:
	bl	_ZN11CReplyArray11initRepliesEv
	b	.L64
.L68:
	ldr	r1, [r3, #24]
	str	r1, [r4, #8]
	mov	r0, r5
	ldr	r2, .L69+16
	bl	_ZN8CHistory19addPlayerTextToHistEiPc
	mov	r1, #0
	strb	r1, [r4, #12]
	b	.L65
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	.LC2
	.word	_ZN11CReplyArray6loadedE
	.word	2054847098
	.word	.LANCHOR1
	.size	_ZN4CNpcC1EPc, .-_ZN4CNpcC1EPc
	.section	.text._ZN4CNpcC2EPc,"ax",%progbits
	.align	2
	.global	_ZN4CNpcC2EPc
	.hidden	_ZN4CNpcC2EPc
	.type	_ZN4CNpcC2EPc, %function
_ZN4CNpcC2EPc:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r6, .L77
	sub	sp, sp, #84
	ldr	ip, [r6, #12]
	mov	r2, #0
	add	r7, ip, #1
	str	r7, [r6, #12]
	mov	r4, r0
	str	r2, [r0, #8]
	str	r2, [r6, #0]
	strb	r2, [r0, #12]
	mov	r0, sp
	mov	r6, r1
	bl	strcpy
	mov	r0, sp
	bl	strlen
	mov	r2, #5
	ldr	r1, .L77+4
	add	r0, sp, r0
	bl	memcpy
	mov	r0, #4
	bl	_Znwj
	mov	r1, sp
	mov	r7, r0
	bl	_ZN16CDialogueManagerC1EPKc
	ldr	r0, .L77+8
	str	r7, [r4, #0]
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L75
.L72:
	mov	r0, #96
	bl	_Znwj
	mov	r1, r6
	mov	r5, r0
	bl	_ZN8CHistoryC1EPc
	str	r5, [r4, #16]
	ldr	r3, [r5, #8]
	str	r3, [r4, #8]
	ldrb	r1, [r5, #88]	@ zero_extendqisi2
	strb	r1, [r4, #12]
	cmp	r1, #0
	beq	.L73
	ldr	ip, [r4, #0]
	add	r3, r3, r3, asl #2
	ldr	r2, [ip, #0]
	ldr	r0, .L77+12
	add	r3, r2, r3, asl #3
	ldr	lr, [r3, #4]
	cmp	lr, r0
	beq	.L76
.L73:
	mov	r0, r4
	add	sp, sp, #84
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L75:
	bl	_ZN11CReplyArray11initRepliesEv
	b	.L72
.L76:
	ldr	r1, [r3, #24]
	str	r1, [r4, #8]
	mov	r0, r5
	ldr	r2, .L77+16
	bl	_ZN8CHistory19addPlayerTextToHistEiPc
	mov	r1, #0
	strb	r1, [r4, #12]
	b	.L73
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.word	.LC2
	.word	_ZN11CReplyArray6loadedE
	.word	2054847098
	.word	.LANCHOR1
	.size	_ZN4CNpcC2EPc, .-_ZN4CNpcC2EPc
	.section	.text.T.174,"ax",%progbits
	.align	2
	.type	T.174, %function
T.174:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r4, .L105
	mov	r7, r0
	ldr	r3, [r4, #0]
	mov	r6, r4
	ldr	r9, [r3, #-12]
	add	sl, r4, r9
	ldr	r2, [sl, #8]
	mov	r3, sl
	cmp	r2, #0
	bne	.L87
	ldr	r0, [sl, #88]
	cmp	r0, #0
	beq	.L101
.L82:
	ldr	r5, [sl, #92]
	cmp	r5, #0
	beq	.L83
	ldr	r3, [r5, #0]
	ldr	r2, [r3, #-12]
	add	ip, r5, r2
	ldr	r0, [ip, #88]
	cmp	r0, #0
	beq	.L83
	ldr	sl, [r0, #0]
	ldr	r9, [sl, #20]
	blx	r9
	cmn	r0, #1
	beq	.L84
.L99:
	ldr	r3, [r4, #0]
	ldr	r9, [r3, #-12]
	add	sl, r6, r9
.L83:
	ldr	r1, [sl, #8]
	mov	r3, sl
	cmp	r1, #0
	bne	.L87
	mov	r0, r7
	bl	strlen
	ldr	r8, [sl, #28]
	cmp	r0, r8
	mov	r5, r0
	bge	.L88
	subs	r8, r8, r0
	beq	.L88
	ldr	r2, [sl, #4]
	ldr	r0, [sl, #88]
	and	ip, r2, #7
	cmp	ip, #1
	beq	.L102
	ldr	r2, [r0, #0]
	ldrb	r1, [sl, #84]	@ zero_extendqisi2
	ldr	r9, [r2, #48]
	mov	r2, r8
	blx	r9
	ldr	r3, .L105
	cmp	r8, r0
	beq	.L103
.L92:
	ldr	r1, [r4, #0]
	ldr	r3, .L105
	ldr	lr, [r1, #-12]
	mov	r9, #0
	add	r2, r6, lr
	str	r9, [r2, #28]
.L90:
	ldr	r9, [r4, #0]
	ldr	r0, [r9, #-12]
	add	r0, r3, r0
	ldr	lr, [r0, #88]
	ldr	r2, [r0, #8]
	cmp	lr, #0
	ldr	r1, [r0, #20]
	orr	ip, r2, #4
	orreq	ip, r2, #5
	tst	ip, r1
	str	ip, [r0, #8]
	bne	.L95
.L100:
	ldr	r3, [r4, #0]
	ldr	r9, [r3, #-12]
	add	r3, r6, r9
.L87:
	ldr	r1, [r3, #4]
	tst	r1, #8192
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L104:
	add	r4, r4, r9
	ldr	r0, [r4, #88]
	ldr	r4, .L105
	cmp	r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	ldr	r2, [r0, #0]
	ldr	ip, [r2, #20]
	blx	ip
	cmn	r0, #1
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	ldr	ip, [r4, #0]
	ldr	r0, [ip, #-12]
	add	r0, r4, r0
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #20]
	orr	lr, r3, #1
	tst	lr, r1
	str	lr, [r0, #8]
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	_ZN4_STL8ios_base16_M_throw_failureEv
.L88:
	add	r1, r4, r9
	ldr	r0, [r1, #88]
	mov	r2, r5
	ldr	lr, [r0, #0]
	mov	r1, r7
	ldr	r9, [lr, #44]
	blx	r9
	ldr	r3, [r4, #0]
	mov	r9, #0
	ldr	r2, [r3, #-12]
	ldr	r3, .L105
	add	ip, r6, r2
	str	r9, [ip, #28]
	cmp	r5, r0
	bne	.L90
	ldr	r0, [r3, #0]
	ldr	r9, [r0, #-12]
	add	r3, r6, r9
	ldr	r1, [r3, #4]
	tst	r1, #8192
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	b	.L104
.L95:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L100
.L102:
	ldr	r9, [r0, #0]
	mov	r1, r7
	ldr	r3, [r9, #44]
	mov	r2, r5
	blx	r3
	ldr	r3, .L105
	cmp	r5, r0
	bne	.L92
	ldr	r0, [r3, #0]
	mov	r2, r8
	ldr	r1, [r0, #-12]
	add	r3, r3, r1
	ldr	r0, [r3, #88]
	ldrb	r1, [r3, #84]	@ zero_extendqisi2
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #48]
	blx	ip
	cmp	r8, r0
	bne	.L92
.L93:
	ldr	r2, [r4, #0]
	mov	r0, #0
	ldr	r9, [r2, #-12]
	add	ip, r6, r9
	str	r0, [ip, #28]
	ldr	r3, [r4, #0]
	ldr	r9, [r3, #-12]
	add	r3, r6, r9
	b	.L87
.L84:
	ldr	r2, [r5, #0]
	ldr	r0, [r2, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	r1, [r0, #20]
	orr	lr, ip, #1
	tst	lr, r1
	str	lr, [r0, #8]
	beq	.L99
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L99
.L101:
	mov	r0, sl
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r1, [r4, #0]
	ldr	r9, [r1, #-12]
	add	sl, r4, r9
	b	.L82
.L103:
	ldr	r9, [r3, #0]
	mov	r1, r7
	ldr	r0, [r9, #-12]
	mov	r2, r5
	add	r3, r3, r0
	ldr	r0, [r3, #88]
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #44]
	blx	ip
	cmp	r5, r0
	bne	.L92
	b	.L93
.L106:
	.align	2
.L105:
	.word	_ZN4_STL4coutE
	.size	T.174, .-T.174
	.section	.text._ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_,"axG",%progbits,_ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_,comdat
	.align	2
	.weak	_ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.hidden	_ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.type	_ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_, %function
_ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #0]
	mov	r4, r0
	ldr	lr, [r3, #-12]
	mov	r1, #10
	add	ip, r0, lr
	ldr	r0, [ip, #64]
	ldr	r5, [r0, #0]
	ldr	r2, [r5, #24]
	blx	r2
	mov	r5, r0
	ldr	r0, [r4, #0]
	ldr	r3, [r0, #-12]
	add	r3, r4, r3
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	beq	.L128
.L115:
	ldr	ip, [r2, #8]
	ldr	r1, [r2, #20]
	orr	r3, ip, #1
	tst	r3, r1
	str	r3, [r2, #8]
	bne	.L129
.L117:
	ldr	lr, [r4, #0]
	ldr	r0, [lr, #-12]
	add	r3, r4, r0
	ldr	r2, [r3, #4]
	tst	r2, #8192
	bne	.L130
.L119:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L120
	ldr	lr, [r0, #0]
	ldr	r2, [lr, #20]
	blx	r2
	cmn	r0, #1
	beq	.L131
.L120:
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, pc}
.L128:
	ldr	r1, [r3, #88]
	mov	r2, r3
	cmp	r1, #0
	beq	.L132
.L110:
	ldr	r6, [r3, #92]
	cmp	r6, #0
	beq	.L111
	ldr	r1, [r6, #0]
	ldr	lr, [r1, #-12]
	add	ip, r6, lr
	ldr	r0, [ip, #88]
	cmp	r0, #0
	beq	.L111
	ldr	r3, [r0, #0]
	ldr	r2, [r3, #20]
	blx	r2
	cmn	r0, #1
	beq	.L112
.L126:
	ldr	ip, [r4, #0]
	ldr	r3, [ip, #-12]
	add	r3, r4, r3
	mov	r2, r3
.L111:
	ldr	lr, [r3, #8]
	cmp	lr, #0
	bne	.L115
	ldr	r0, [r3, #88]
	ldr	r1, [r0, #20]
	ldr	r2, [r0, #24]
	cmp	r1, r2
	strccb	r5, [r1], #1
	strcc	r1, [r0, #20]
	bcc	.L117
	ldr	ip, [r0, #0]
	mov	r1, r5
	ldr	r3, [ip, #52]
	blx	r3
	cmn	r0, #1
	bne	.L117
	ldr	lr, [r4, #0]
	ldr	r0, [lr, #-12]
	add	r2, r4, r0
	b	.L115
.L130:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L120
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #20]
	blx	r3
	cmn	r0, #1
	beq	.L121
.L127:
	ldr	ip, [r4, #0]
	ldr	r1, [ip, #-12]
	add	r3, r4, r1
	b	.L119
.L129:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L117
.L131:
	ldr	r2, [r4, #0]
	ldr	r0, [r2, #-12]
	add	r0, r4, r0
	ldr	ip, [r0, #8]
	ldr	r1, [r0, #20]
	orr	r3, ip, #1
	tst	r3, r1
	str	r3, [r0, #8]
	beq	.L120
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L120
.L121:
	ldr	r3, [r4, #0]
	ldr	r0, [r3, #-12]
	add	r0, r4, r0
	ldr	lr, [r0, #8]
	ldr	r2, [r0, #20]
	orr	ip, lr, #1
	tst	ip, r2
	str	ip, [r0, #8]
	beq	.L127
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L127
.L112:
	ldr	r2, [r6, #0]
	ldr	r0, [r2, #-12]
	add	r0, r6, r0
	ldr	r1, [r0, #8]
	ldr	lr, [r0, #20]
	orr	ip, r1, #1
	tst	ip, lr
	str	ip, [r0, #8]
	beq	.L126
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L126
.L132:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r0, [r4, #0]
	ldr	r6, [r0, #-12]
	add	r3, r4, r6
	mov	r2, r3
	b	.L110
	.size	_ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_, .-_ZN4_STL4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.section	.text._ZN4CNpc10printArrayEv,"ax",%progbits
	.align	2
	.global	_ZN4CNpc10printArrayEv
	.hidden	_ZN4CNpc10printArrayEv
	.type	_ZN4CNpc10printArrayEv, %function
_ZN4CNpc10printArrayEv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r5, [r0, #0]
	ldr	r4, .L396+4
	ldr	r1, [r5, #0]
	sub	sp, sp, #40
	mov	r6, r0
	ldr	r0, [r1, #80]
	bl	T.174
	ldr	r3, [r4, #0]
	mov	r1, #10
	ldr	ip, [r3, #-12]
	mov	r5, r4
	add	r8, r4, ip
	ldr	r0, [r8, #64]
	ldr	r7, [r0, #0]
	ldr	r2, [r7, #24]
	blx	r2
	mov	r7, r0
	ldr	r0, [r4, #0]
	ldr	r3, [r0, #-12]
	add	r3, r4, r3
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	beq	.L353
.L141:
	ldr	r1, [r2, #8]
	ldr	ip, [r2, #20]
	orr	r8, r1, #1
	tst	r8, ip
	str	r8, [r2, #8]
	bne	.L354
.L143:
	ldr	lr, [r4, #0]
	ldr	r7, .L396+4
	ldr	r3, [lr, #-12]
	add	r3, r5, r3
	ldr	r2, [r3, #4]
	tst	r2, #8192
	bne	.L355
.L145:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L146
	ldr	r7, [r0, #0]
	ldr	ip, [r7, #20]
	blx	ip
	cmn	r0, #1
	beq	.L150
.L328:
	ldr	ip, [r4, #0]
	ldr	r8, [ip, #-12]
	add	r3, r5, r8
.L146:
	ldr	r0, [r3, #64]
	mov	r1, #10
	ldr	r3, [r0, #0]
	ldr	r7, [r3, #24]
	blx	r7
	ldr	r2, [r4, #0]
	ldr	r1, [r2, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	mov	r7, r0
	beq	.L356
.L160:
	ldr	r1, [r2, #8]
	ldr	r8, [r2, #20]
	orr	r3, r1, #1
	tst	r3, r8
	str	r3, [r2, #8]
	bne	.L357
.L162:
	ldr	r2, [r4, #0]
	ldr	r7, .L396+4
	ldr	ip, [r2, #-12]
	add	r3, r5, ip
	ldr	lr, [r3, #4]
	tst	lr, #8192
	bne	.L358
.L164:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L165
	ldr	r7, [r0, #0]
	ldr	r8, [r7, #20]
	blx	r8
	cmn	r0, #1
	beq	.L359
.L165:
	ldr	lr, [r6, #0]
	ldr	r1, [lr, #0]
	ldr	r0, [r1, #96]
	bl	T.174
	ldr	r3, [r4, #0]
	mov	r1, #10
	ldr	r0, [r3, #-12]
	add	r2, r5, r0
	ldr	r0, [r2, #64]
	ldr	ip, [r0, #0]
	ldr	r7, [ip, #24]
	blx	r7
	ldr	r8, [r4, #0]
	ldr	r3, [r8, #-12]
	add	r3, r5, r3
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	mov	r7, r0
	beq	.L360
.L177:
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #20]
	orr	r8, lr, #1
	tst	r8, r1
	str	r8, [r2, #8]
	bne	.L361
.L179:
	ldr	r3, [r4, #0]
	ldr	r7, .L396+4
	ldr	ip, [r3, #-12]
	add	r3, r5, ip
	ldr	r2, [r3, #4]
	tst	r2, #8192
	bne	.L362
.L181:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L182
	ldr	r7, [r0, #0]
	ldr	r1, [r7, #20]
	blx	r1
	cmn	r0, #1
	beq	.L186
.L333:
	ldr	r1, [r4, #0]
	ldr	r8, [r1, #-12]
	add	r3, r5, r8
.L182:
	ldr	r0, [r3, #64]
	mov	r1, #10
	ldr	lr, [r0, #0]
	ldr	r7, [lr, #24]
	blx	r7
	ldr	ip, [r4, #0]
	ldr	r2, [ip, #-12]
	add	r3, r5, r2
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	mov	r7, r0
	beq	.L363
.L196:
	ldr	r1, [r2, #8]
	ldr	r8, [r2, #20]
	orr	r3, r1, #1
	tst	r3, r8
	str	r3, [r2, #8]
	bne	.L364
.L198:
	ldr	lr, [r4, #0]
	ldr	r7, .L396+4
	ldr	r2, [lr, #-12]
	add	r1, r5, r2
	ldr	ip, [r1, #4]
	tst	ip, #8192
	bne	.L365
.L200:
	ldr	r0, [r1, #88]
	cmp	r0, #0
	beq	.L201
	ldr	r7, [r0, #0]
	ldr	r8, [r7, #20]
	blx	r8
	cmn	r0, #1
	beq	.L206
.L336:
	ldr	r3, [r4, #0]
	ldr	r8, [r3, #-12]
	add	r1, r5, r8
.L201:
	ldr	r2, [r6, #0]
	ldr	ip, [r1, #8]
	ldr	r7, [r2, #0]
	cmp	ip, #0
	ldr	r8, [r7, #108]
	beq	.L366
.L216:
	ldr	r2, [r1, #8]
	ldr	ip, [r1, #20]
	orr	r0, r2, #1
	tst	r0, ip
	str	r0, [r1, #8]
	bne	.L367
.L218:
	ldr	r3, [r4, #0]
	ldr	r7, .L396+4
	ldr	lr, [r3, #-12]
	add	r3, r5, lr
	ldr	r1, [r3, #4]
	tst	r1, #8192
	bne	.L368
.L221:
	ldr	r0, [r3, #64]
	mov	r1, #10
	ldr	lr, [r0, #0]
	ldr	r7, [lr, #24]
	blx	r7
	ldr	r3, [r4, #0]
	ldr	r1, [r3, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	mov	r7, r0
	beq	.L369
.L232:
	ldr	r3, [r2, #8]
	ldr	ip, [r2, #20]
	orr	lr, r3, #1
	tst	lr, ip
	str	lr, [r2, #8]
	bne	.L370
.L234:
	ldr	r0, [r4, #0]
	ldr	r7, .L396+4
	ldr	r1, [r0, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #4]
	tst	r2, #8192
	bne	.L371
.L236:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L237
	ldr	r3, [r0, #0]
	ldr	r7, [r3, #20]
	blx	r7
	cmn	r0, #1
	beq	.L241
.L341:
	ldr	r3, [r4, #0]
	ldr	r7, [r3, #-12]
	add	r3, r5, r7
.L237:
	ldr	r0, [r3, #64]
	mov	r1, #10
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #24]
	blx	ip
	ldr	r2, [r4, #0]
	ldr	r1, [r2, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	mov	r7, r0
	beq	.L372
.L251:
	ldr	r3, [r2, #8]
	ldr	lr, [r2, #20]
	orr	ip, r3, #1
	tst	ip, lr
	str	ip, [r2, #8]
	bne	.L373
.L253:
	ldr	r0, [r4, #0]
	ldr	r7, .L396+4
	ldr	r1, [r0, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #4]
	mov	r1, r3
	tst	r2, #8192
	bne	.L374
.L255:
	ldr	r0, [r3, #88]
	mov	r2, r3
	cmp	r0, #0
	moveq	r1, r3
	beq	.L256
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
	cmn	r0, #1
	beq	.L261
.L344:
	ldr	ip, [r4, #0]
	ldr	r2, [ip, #-12]
	add	r3, r5, r2
	mov	r1, r3
	mov	r2, r3
.L256:
	ldr	r0, [r6, #0]
	ldr	r6, [r1, #8]
	ldr	lr, [r0, #0]
	cmp	r6, #0
	ldrb	r6, [lr, #86]	@ zero_extendqisi2
	bne	.L271
	ldr	r7, [r2, #88]
	cmp	r7, #0
	beq	.L375
.L266:
	ldr	r7, [r2, #92]
	cmp	r7, #0
	beq	.L267
	ldr	lr, [r7, #0]
	ldr	ip, [lr, #-12]
	add	r2, r7, ip
	ldr	r0, [r2, #88]
	cmp	r0, #0
	beq	.L267
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #20]
	blx	r3
	cmn	r0, #1
	beq	.L268
.L345:
	ldr	ip, [r4, #0]
	ldr	r1, [ip, #-12]
	add	r3, r5, r1
.L267:
	ldr	r2, [r3, #8]
	mov	r1, r3
	cmp	r2, #0
	mov	r2, r3
	bne	.L271
	ldr	r7, [r3, #28]
	cmp	r7, #0
	ble	.L272
	subs	r7, r7, #1
	beq	.L272
	ldr	r1, [r3, #4]
	and	r0, r1, #7
	cmp	r0, #1
	ldr	r0, [r3, #88]
	beq	.L376
	ldr	r2, [r0, #0]
	ldrb	r1, [r3, #84]	@ zero_extendqisi2
	ldr	r3, [r2, #48]
	mov	r2, r7
	blx	r3
	cmp	r7, r0
	beq	.L377
.L280:
	ldr	lr, [r4, #0]
	mov	r6, #0
	ldr	ip, [lr, #-12]
	add	r2, r5, ip
	str	r6, [r2, #28]
.L276:
	ldr	r3, [r4, #0]
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	r1, [r0, #8]
	ldr	ip, [r0, #20]
	orr	r6, r1, #1
	tst	r6, ip
	str	r6, [r0, #8]
	bne	.L284
.L346:
	ldr	lr, [r4, #0]
	ldr	r2, [lr, #-12]
	add	r1, r5, r2
	mov	r2, r1
.L271:
	ldr	r6, [r1, #4]
	tst	r6, #8192
	bne	.L378
.L285:
	ldr	r0, [r2, #64]
	mov	r1, #10
	ldr	lr, [r0, #0]
	ldr	r6, [lr, #24]
	blx	r6
	ldr	r2, [r4, #0]
	ldr	r3, [r2, #-12]
	add	r3, r5, r3
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	mov	r6, r0
	beq	.L379
.L296:
	ldr	r3, [r2, #8]
	ldr	ip, [r2, #20]
	orr	lr, r3, #1
	tst	lr, ip
	str	lr, [r2, #8]
	bne	.L380
.L298:
	ldr	r0, [r4, #0]
	ldr	r6, .L396+4
	ldr	r1, [r0, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #4]
	tst	r2, #8192
	bne	.L381
.L300:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L301
	ldr	r3, [r0, #0]
	ldr	r6, [r3, #20]
	blx	r6
	cmn	r0, #1
	beq	.L305
.L350:
	ldr	r3, [r4, #0]
	ldr	r6, [r3, #-12]
	add	r3, r5, r6
.L301:
	ldr	r0, [r3, #64]
	mov	r1, #10
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #24]
	blx	ip
	ldr	r2, [r4, #0]
	ldr	r1, [r2, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r2, r3
	mov	r6, r0
	beq	.L382
.L315:
	ldr	r3, [r2, #8]
	ldr	lr, [r2, #20]
	orr	ip, r3, #1
	tst	ip, lr
	str	ip, [r2, #8]
	bne	.L383
.L317:
	ldr	r0, [r4, #0]
	ldr	r6, .L396+4
	ldr	r1, [r0, #-12]
	add	r3, r5, r1
	ldr	r2, [r3, #4]
	tst	r2, #8192
	bne	.L384
.L319:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L325
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
	cmn	r0, #1
	beq	.L385
.L325:
	add	sp, sp, #40
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L382:
	ldr	r7, [r3, #88]
	mov	r2, r3
	cmp	r7, #0
	beq	.L386
.L310:
	ldr	r7, [r3, #92]
	cmp	r7, #0
	beq	.L311
	ldr	r0, [r7, #0]
	ldr	lr, [r0, #-12]
	add	ip, r7, lr
	ldr	r0, [ip, #88]
	cmp	r0, #0
	beq	.L311
	ldr	r3, [r0, #0]
	ldr	r2, [r3, #20]
	blx	r2
	cmn	r0, #1
	beq	.L312
.L351:
	ldr	r1, [r4, #0]
	ldr	r3, [r1, #-12]
	add	r3, r5, r3
	mov	r2, r3
.L311:
	ldr	ip, [r3, #8]
	cmp	ip, #0
	bne	.L315
	ldr	r0, [r3, #88]
	ldr	lr, [r0, #20]
	ldr	r2, [r0, #24]
	cmp	lr, r2
	strccb	r6, [lr], #1
	strcc	lr, [r0, #20]
	bcc	.L317
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #52]
	mov	r1, r6
	blx	r3
	cmn	r0, #1
	bne	.L317
	ldr	r0, [r4, #0]
	ldr	r6, [r0, #-12]
	add	r2, r5, r6
	b	.L315
.L379:
	ldr	r7, [r3, #88]
	mov	r2, r3
	cmp	r7, #0
	beq	.L387
.L291:
	ldr	r7, [r3, #92]
	cmp	r7, #0
	beq	.L292
	ldr	ip, [r7, #0]
	ldr	r0, [ip, #-12]
	add	lr, r7, r0
	ldr	r0, [lr, #88]
	cmp	r0, #0
	beq	.L292
	ldr	r2, [r0, #0]
	ldr	r3, [r2, #20]
	blx	r3
	cmn	r0, #1
	beq	.L293
.L348:
	ldr	r1, [r4, #0]
	ldr	r2, [r1, #-12]
	add	r3, r5, r2
	mov	r2, r3
.L292:
	ldr	lr, [r3, #8]
	cmp	lr, #0
	bne	.L296
	ldr	r0, [r3, #88]
	ldr	ip, [r0, #20]
	ldr	r3, [r0, #24]
	cmp	ip, r3
	strccb	r6, [ip], #1
	strcc	ip, [r0, #20]
	bcc	.L298
	ldr	r1, [r0, #0]
	ldr	r2, [r1, #52]
	mov	r1, r6
	blx	r2
	cmn	r0, #1
	bne	.L298
	ldr	r0, [r4, #0]
	ldr	r6, [r0, #-12]
	add	r2, r5, r6
	b	.L296
.L372:
	ldr	r8, [r3, #88]
	mov	r2, r3
	cmp	r8, #0
	beq	.L388
.L246:
	ldr	r8, [r3, #92]
	cmp	r8, #0
	beq	.L247
	ldr	r0, [r8, #0]
	ldr	lr, [r0, #-12]
	add	ip, r8, lr
	ldr	r0, [ip, #88]
	cmp	r0, #0
	beq	.L247
	ldr	r3, [r0, #0]
	ldr	r2, [r3, #20]
	blx	r2
	cmn	r0, #1
	beq	.L248
.L342:
	ldr	r1, [r4, #0]
	ldr	r3, [r1, #-12]
	add	r3, r5, r3
	mov	r2, r3
.L247:
	ldr	ip, [r3, #8]
	cmp	ip, #0
	bne	.L251
	ldr	r0, [r3, #88]
	ldr	lr, [r0, #20]
	ldr	r2, [r0, #24]
	cmp	lr, r2
	strccb	r7, [lr], #1
	strcc	lr, [r0, #20]
	bcc	.L253
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #52]
	mov	r1, r7
	blx	r3
	cmn	r0, #1
	bne	.L253
	ldr	r0, [r4, #0]
	ldr	r7, [r0, #-12]
	add	r2, r5, r7
	b	.L251
.L369:
	ldr	r8, [r3, #88]
	mov	r2, r3
	cmp	r8, #0
	beq	.L389
.L227:
	ldr	r8, [r3, #92]
	cmp	r8, #0
	beq	.L228
	ldr	r0, [r8, #0]
	ldr	lr, [r0, #-12]
	add	r1, r8, lr
	ldr	r0, [r1, #88]
	cmp	r0, #0
	beq	.L228
	ldr	ip, [r0, #0]
	ldr	r3, [ip, #20]
	blx	r3
	cmn	r0, #1
	beq	.L229
.L339:
	ldr	r1, [r4, #0]
	ldr	ip, [r1, #-12]
	add	r3, r5, ip
	mov	r2, r3
.L228:
	ldr	lr, [r3, #8]
	cmp	lr, #0
	bne	.L232
	ldr	r0, [r3, #88]
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	cmp	r3, r2
	strccb	r7, [r3], #1
	strcc	r3, [r0, #20]
	bcc	.L234
	ldr	r1, [r0, #0]
	ldr	ip, [r1, #52]
	mov	r1, r7
	blx	ip
	cmn	r0, #1
	bne	.L234
	ldr	r0, [r4, #0]
	ldr	r7, [r0, #-12]
	add	r2, r5, r7
	b	.L232
.L366:
	ldr	r0, [r1, #88]
	cmp	r0, #0
	beq	.L390
.L211:
	ldr	r7, [r1, #92]
	cmp	r7, #0
	beq	.L212
	ldr	r2, [r7, #0]
	ldr	ip, [r2, #-12]
	add	lr, r7, ip
	ldr	r0, [lr, #88]
	cmp	r0, #0
	beq	.L212
	ldr	r3, [r0, #0]
	ldr	r1, [r3, #20]
	blx	r1
	cmn	r0, #1
	beq	.L213
.L337:
	ldr	r3, [r4, #0]
	ldr	r1, [r3, #-12]
	add	r1, r5, r1
.L212:
	ldr	r7, [r1, #8]
	cmp	r7, #0
	bne	.L216
	add	r7, sp, #36
	add	r1, r1, #32
	mov	r0, r7
	bl	_ZN4_STL6localeC1ERKS0_
	mov	r0, r7
	ldr	r1, .L396
	bl	_ZNK4_STL6locale12_M_use_facetERKNS0_2idE
	ldr	r1, [r4, #0]
	add	r3, sp, #28
	ldr	r2, [r1, #-12]
	add	r2, r5, r2
	ldr	ip, [r2, #88]
	str	ip, [sp, #28]
	subs	ip, ip, #0
	movne	ip, #1
	strb	ip, [sp, #32]
	ldrb	ip, [r2, #84]	@ zero_extendqisi2
	mov	r1, r0
	ldr	r0, [r0, #0]
	stmia	sp, {r2, ip}	@ phole stm
	str	r8, [sp, #8]
	ldr	ip, [r0, #12]
	ldmia	r3, {r2, r3}
	add	r0, sp, #20
	blx	ip
	ldrb	ip, [sp, #24]	@ zero_extendqisi2
	mov	r0, r7
	eor	r7, ip, #1
	bl	_ZN4_STL6localeD1Ev
	cmp	r7, #0
	beq	.L218
	ldr	r3, .L396+4
	ldr	r7, [r3, #0]
	ldr	lr, [r7, #-12]
	add	r1, r5, lr
	b	.L216
.L363:
	ldr	r0, [r3, #88]
	mov	r2, r3
	cmp	r0, #0
	beq	.L391
.L191:
	ldr	r8, [r3, #92]
	cmp	r8, #0
	beq	.L192
	ldr	r0, [r8, #0]
	ldr	lr, [r0, #-12]
	add	ip, r8, lr
	ldr	r0, [ip, #88]
	cmp	r0, #0
	beq	.L192
	ldr	r3, [r0, #0]
	ldr	r2, [r3, #20]
	blx	r2
	cmn	r0, #1
	beq	.L193
.L334:
	ldr	r3, [r4, #0]
	ldr	r2, [r3, #-12]
	add	r3, r5, r2
	mov	r2, r3
.L192:
	ldr	r8, [r3, #8]
	cmp	r8, #0
	bne	.L196
	ldr	r0, [r3, #88]
	ldr	r1, [r0, #20]
	ldr	ip, [r0, #24]
	cmp	r1, ip
	strccb	r7, [r1], #1
	strcc	r1, [r0, #20]
	bcc	.L198
	ldr	lr, [r0, #0]
	mov	r1, r7
	ldr	r2, [lr, #52]
	blx	r2
	cmn	r0, #1
	bne	.L198
	ldr	r0, [r4, #0]
	ldr	r7, [r0, #-12]
	add	r2, r5, r7
	b	.L196
.L360:
	ldr	r8, [r3, #88]
	mov	r2, r3
	cmp	r8, #0
	beq	.L392
.L172:
	ldr	r8, [r3, #92]
	cmp	r8, #0
	beq	.L173
	ldr	ip, [r8, #0]
	ldr	lr, [ip, #-12]
	add	r1, r8, lr
	ldr	r0, [r1, #88]
	cmp	r0, #0
	beq	.L173
	ldr	r2, [r0, #0]
	ldr	r3, [r2, #20]
	blx	r3
	cmn	r0, #1
	beq	.L174
.L331:
	ldr	r2, [r4, #0]
	ldr	r3, [r2, #-12]
	add	r3, r5, r3
	mov	r2, r3
.L173:
	ldr	r8, [r3, #8]
	cmp	r8, #0
	bne	.L177
	ldr	r0, [r3, #88]
	ldr	r1, [r0, #20]
	ldr	lr, [r0, #24]
	cmp	r1, lr
	strccb	r7, [r1], #1
	strcc	r1, [r0, #20]
	bcc	.L179
	ldr	r3, [r0, #0]
	mov	r1, r7
	ldr	ip, [r3, #52]
	blx	ip
	cmn	r0, #1
	bne	.L179
	ldr	r0, [r4, #0]
	ldr	r7, [r0, #-12]
	add	r2, r5, r7
	b	.L177
.L356:
	ldr	r0, [r3, #88]
	mov	r2, r3
	cmp	r0, #0
	beq	.L393
.L155:
	ldr	r8, [r3, #92]
	cmp	r8, #0
	beq	.L156
	ldr	ip, [r8, #0]
	ldr	r0, [ip, #-12]
	add	lr, r8, r0
	ldr	r0, [lr, #88]
	cmp	r0, #0
	beq	.L156
	ldr	r3, [r0, #0]
	ldr	r2, [r3, #20]
	blx	r2
	cmn	r0, #1
	beq	.L157
.L329:
	ldr	r3, [r4, #0]
	ldr	r2, [r3, #-12]
	add	r3, r5, r2
	mov	r2, r3
.L156:
	ldr	r8, [r3, #8]
	cmp	r8, #0
	bne	.L160
	ldr	r0, [r3, #88]
	ldr	r1, [r0, #20]
	ldr	lr, [r0, #24]
	cmp	r1, lr
	strccb	r7, [r1], #1
	strcc	r1, [r0, #20]
	bcc	.L162
	ldr	r2, [r0, #0]
	mov	r1, r7
	ldr	ip, [r2, #52]
	blx	ip
	cmn	r0, #1
	bne	.L162
	ldr	r0, [r4, #0]
	ldr	r7, [r0, #-12]
	add	r2, r5, r7
	b	.L160
.L353:
	ldr	lr, [r3, #88]
	mov	r2, r3
	cmp	lr, #0
	beq	.L394
.L136:
	ldr	r8, [r3, #92]
	cmp	r8, #0
	beq	.L137
	ldr	lr, [r8, #0]
	ldr	r1, [lr, #-12]
	add	ip, r8, r1
	ldr	r0, [ip, #88]
	cmp	r0, #0
	beq	.L137
	ldr	r2, [r0, #0]
	ldr	r3, [r2, #20]
	blx	r3
	cmn	r0, #1
	beq	.L138
.L326:
	ldr	r2, [r4, #0]
	ldr	r3, [r2, #-12]
	add	r3, r5, r3
	mov	r2, r3
.L137:
	ldr	r8, [r3, #8]
	cmp	r8, #0
	bne	.L141
	ldr	r0, [r3, #88]
	ldr	ip, [r0, #20]
	ldr	r1, [r0, #24]
	cmp	ip, r1
	strccb	r7, [ip], #1
	strcc	ip, [r0, #20]
	bcc	.L143
	ldr	lr, [r0, #0]
	mov	r1, r7
	ldr	r3, [lr, #52]
	blx	r3
	cmn	r0, #1
	bne	.L143
	ldr	r0, [r4, #0]
	ldr	r7, [r0, #-12]
	add	r2, r5, r7
	b	.L141
.L374:
	ldr	r0, [r3, #88]
	mov	r2, r3
	cmp	r0, #0
	beq	.L256
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #20]
	blx	ip
	ldr	r3, [r7, #0]
	cmn	r0, #1
	beq	.L257
	ldr	r3, [r3, #-12]
	add	r3, r5, r3
	b	.L255
.L368:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L221
	ldr	r2, [r0, #0]
	ldr	ip, [r2, #20]
	blx	ip
	ldr	r3, [r7, #0]
	cmn	r0, #1
	beq	.L222
	ldr	r7, [r3, #-12]
	add	r3, r5, r7
	b	.L221
.L371:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L237
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #20]
	blx	ip
	ldr	r3, [r7, #0]
	cmn	r0, #1
	beq	.L238
	ldr	r7, [r3, #-12]
	add	r3, r5, r7
	b	.L236
.L378:
	ldr	r0, [r2, #88]
	cmp	r0, #0
	beq	.L285
	ldr	r1, [r0, #0]
	ldr	ip, [r1, #20]
	blx	ip
	cmn	r0, #1
	beq	.L286
.L347:
	ldr	r1, [r4, #0]
	ldr	ip, [r1, #-12]
	add	r2, r5, ip
	b	.L285
.L381:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L301
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #20]
	blx	ip
	ldr	r3, [r6, #0]
	cmn	r0, #1
	beq	.L302
	ldr	r6, [r3, #-12]
	add	r3, r5, r6
	b	.L300
.L384:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L325
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #20]
	blx	ip
	ldr	r3, [r6, #0]
	cmn	r0, #1
	beq	.L321
	ldr	r3, [r3, #-12]
	add	r3, r5, r3
	b	.L319
.L365:
	ldr	r0, [r1, #88]
	cmp	r0, #0
	beq	.L201
	ldr	r8, [r0, #0]
	ldr	r3, [r8, #20]
	blx	r3
	ldr	r3, [r7, #0]
	cmn	r0, #1
	beq	.L202
	ldr	r7, [r3, #-12]
	add	r1, r5, r7
	b	.L200
.L362:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L182
	ldr	r1, [r0, #0]
	ldr	r8, [r1, #20]
	blx	r8
	ldr	r3, [r7, #0]
	cmn	r0, #1
	beq	.L183
	ldr	r7, [r3, #-12]
	add	r3, r5, r7
	b	.L181
.L355:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L146
	ldr	ip, [r0, #0]
	ldr	r8, [ip, #20]
	blx	r8
	ldr	r3, [r7, #0]
	cmn	r0, #1
	beq	.L147
	ldr	r7, [r3, #-12]
	add	r3, r5, r7
	b	.L145
.L358:
	ldr	r0, [r3, #88]
	cmp	r0, #0
	beq	.L165
	ldr	r8, [r0, #0]
	ldr	r3, [r8, #20]
	blx	r3
	ldr	r3, [r7, #0]
	cmn	r0, #1
	beq	.L166
	ldr	r7, [r3, #-12]
	add	r3, r5, r7
	b	.L164
.L272:
	ldr	r0, [r3, #88]
	ldr	r3, [r0, #20]
	ldr	lr, [r0, #24]
	cmp	r3, lr
	bcs	.L274
	strb	r6, [r3], #1
	str	r3, [r0, #20]
	ldr	r1, [r4, #0]
	mov	r6, #0
	ldr	r3, [r1, #-12]
	add	r0, r5, r3
	str	r6, [r0, #28]
	ldr	lr, [r4, #0]
	ldr	r2, [lr, #-12]
	add	r1, r5, r2
	mov	r2, r1
	b	.L271
.L370:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L234
.L373:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L253
.L361:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L179
.L364:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L198
.L367:
	mov	r0, r1
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L218
.L357:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L162
.L354:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L143
.L383:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L317
.L380:
	mov	r0, r2
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L298
.L284:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L346
.L261:
	ldr	r1, [r4, #0]
	ldr	r0, [r1, #-12]
	add	r0, r5, r0
	ldr	r3, [r0, #8]
	ldr	lr, [r0, #20]
	orr	ip, r3, #1
	tst	ip, lr
	str	ip, [r0, #8]
	beq	.L344
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L344
.L397:
	.align	2
.L396:
	.word	_ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE
	.word	_ZN4_STL4coutE
.L305:
	ldr	lr, [r4, #0]
	ldr	r0, [lr, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r1, ip, #1
	tst	r1, r2
	str	r1, [r0, #8]
	beq	.L350
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L350
.L385:
	ldr	r1, [r4, #0]
	ldr	r0, [r1, #-12]
	add	r0, r5, r0
	ldr	r3, [r0, #8]
	ldr	lr, [r0, #20]
	orr	ip, r3, #1
	tst	ip, lr
	str	ip, [r0, #8]
	beq	.L325
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L325
.L241:
	ldr	lr, [r4, #0]
	ldr	r0, [lr, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r1, ip, #1
	tst	r1, r2
	str	r1, [r0, #8]
	beq	.L341
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L341
.L186:
	ldr	r3, [r4, #0]
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	r2, [r0, #20]
	orr	lr, ip, #1
	tst	lr, r2
	str	lr, [r0, #8]
	beq	.L333
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L333
.L359:
	ldr	r2, [r4, #0]
	ldr	r0, [r2, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	lr, [r0, #20]
	orr	r1, ip, #1
	tst	r1, lr
	str	r1, [r0, #8]
	beq	.L165
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L165
.L206:
	ldr	lr, [r4, #0]
	ldr	r0, [lr, #-12]
	add	r0, r5, r0
	ldr	r2, [r0, #8]
	ldr	ip, [r0, #20]
	orr	r1, r2, #1
	tst	r1, ip
	str	r1, [r0, #8]
	beq	.L336
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L336
.L150:
	ldr	lr, [r4, #0]
	ldr	r0, [lr, #-12]
	add	r0, r5, r0
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r1, r3, #1
	tst	r1, r2
	str	r1, [r0, #8]
	beq	.L328
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L328
.L376:
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	cmp	r3, r2
	strccb	r6, [r3], #1
	strcc	r3, [r0, #20]
	bcs	.L395
.L279:
	ldr	r1, [r4, #0]
	mov	r2, r7
	ldr	r0, [r1, #-12]
	add	ip, r5, r0
	ldr	r0, [ip, #88]
	ldrb	r1, [ip, #84]	@ zero_extendqisi2
	ldr	r3, [r0, #0]
	ldr	r6, [r3, #48]
	blx	r6
	cmp	r7, r0
	bne	.L280
.L281:
	ldr	ip, [r4, #0]
	mov	r1, #0
	ldr	r2, [ip, #-12]
	add	r6, r5, r2
	str	r1, [r6, #28]
	ldr	r3, [r4, #0]
	ldr	r0, [r3, #-12]
	add	r1, r5, r0
	mov	r2, r1
	b	.L271
.L274:
	ldr	lr, [r0, #0]
	mov	r1, r6
	ldr	ip, [lr, #52]
	blx	ip
	ldr	r3, [r4, #0]
	mov	ip, #0
	ldr	r6, [r3, #-12]
	add	r2, r5, r6
	str	ip, [r2, #28]
	cmn	r0, #1
	bne	.L346
	b	.L276
.L166:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	lr, [r0, #20]
	orr	r1, ip, #1
	tst	r1, lr
	str	r1, [r0, #8]
	bne	.L168
.L330:
	ldr	r3, [r4, #0]
	ldr	r2, [r3, #-12]
	add	r3, r5, r2
	b	.L164
.L147:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r1, r3, #1
	tst	r1, r2
	str	r1, [r0, #8]
	bne	.L149
.L327:
	ldr	r8, [r4, #0]
	ldr	lr, [r8, #-12]
	add	r3, r5, lr
	b	.L145
.L183:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	r2, [r0, #20]
	orr	lr, ip, #1
	tst	lr, r2
	str	lr, [r0, #8]
	bne	.L185
.L332:
	ldr	r8, [r4, #0]
	ldr	r3, [r8, #-12]
	add	r3, r5, r3
	b	.L181
.L202:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	r2, [r0, #8]
	ldr	ip, [r0, #20]
	orr	r1, r2, #1
	tst	r1, ip
	str	r1, [r0, #8]
	bne	.L204
.L335:
	ldr	r3, [r4, #0]
	ldr	lr, [r3, #-12]
	add	r1, r5, lr
	b	.L200
.L321:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r1, ip, #1
	tst	r1, r2
	str	r1, [r0, #8]
	bne	.L323
.L352:
	ldr	r3, [r4, #0]
	ldr	lr, [r3, #-12]
	add	r3, r5, lr
	b	.L319
.L302:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r3, r1, #1
	tst	r3, r2
	str	r3, [r0, #8]
	bne	.L304
.L349:
	ldr	lr, [r4, #0]
	ldr	ip, [lr, #-12]
	add	r3, r5, ip
	b	.L300
.L286:
	ldr	r6, [r4, #0]
	ldr	r0, [r6, #-12]
	add	r0, r5, r0
	ldr	lr, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r3, lr, #1
	tst	r3, r2
	str	r3, [r0, #8]
	beq	.L347
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L347
.L238:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r3, r1, #1
	tst	r3, r2
	str	r3, [r0, #8]
	bne	.L240
.L340:
	ldr	lr, [r4, #0]
	ldr	ip, [lr, #-12]
	add	r3, r5, ip
	b	.L236
.L222:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	r3, [r0, #8]
	ldr	lr, [r0, #20]
	orr	r1, r3, #1
	tst	r1, lr
	str	r1, [r0, #8]
	bne	.L224
.L338:
	ldr	r2, [r4, #0]
	ldr	ip, [r2, #-12]
	add	r3, r5, ip
	b	.L221
.L257:
	ldr	r0, [r3, #-12]
	add	r0, r5, r0
	ldr	ip, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r1, ip, #1
	tst	r1, r2
	str	r1, [r0, #8]
	bne	.L259
.L343:
	ldr	r3, [r4, #0]
	ldr	lr, [r3, #-12]
	add	r3, r5, lr
	b	.L255
.L312:
	ldr	r2, [r7, #0]
	ldr	r0, [r2, #-12]
	add	r0, r7, r0
	ldr	lr, [r0, #8]
	ldr	ip, [r0, #20]
	orr	r1, lr, #1
	tst	r1, ip
	str	r1, [r0, #8]
	beq	.L351
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L351
.L293:
	ldr	r3, [r7, #0]
	ldr	r0, [r3, #-12]
	add	r0, r7, r0
	ldr	ip, [r0, #8]
	ldr	lr, [r0, #20]
	orr	r1, ip, #1
	tst	r1, lr
	str	r1, [r0, #8]
	beq	.L348
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L348
.L248:
	ldr	r2, [r8, #0]
	ldr	r0, [r2, #-12]
	add	r0, r8, r0
	ldr	lr, [r0, #8]
	ldr	ip, [r0, #20]
	orr	r1, lr, #1
	tst	r1, ip
	str	r1, [r0, #8]
	beq	.L342
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L342
.L268:
	ldr	r3, [r7, #0]
	ldr	r0, [r3, #-12]
	add	r0, r7, r0
	ldr	lr, [r0, #8]
	ldr	r2, [r0, #20]
	orr	ip, lr, #1
	tst	ip, r2
	str	ip, [r0, #8]
	beq	.L345
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L345
.L157:
	ldr	ip, [r8, #0]
	ldr	r0, [ip, #-12]
	add	r0, r8, r0
	ldr	lr, [r0, #8]
	ldr	r1, [r0, #20]
	orr	r8, lr, #1
	tst	r8, r1
	str	r8, [r0, #8]
	beq	.L329
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L329
.L138:
	ldr	lr, [r8, #0]
	ldr	r0, [lr, #-12]
	add	r0, r8, r0
	ldr	r1, [r0, #8]
	ldr	ip, [r0, #20]
	orr	r8, r1, #1
	tst	r8, ip
	str	r8, [r0, #8]
	beq	.L326
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L326
.L229:
	ldr	r3, [r8, #0]
	ldr	r0, [r3, #-12]
	add	r0, r8, r0
	ldr	lr, [r0, #8]
	ldr	r2, [r0, #20]
	orr	r1, lr, #1
	tst	r1, r2
	str	r1, [r0, #8]
	beq	.L339
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L339
.L213:
	ldr	r2, [r7, #0]
	ldr	r0, [r2, #-12]
	add	r0, r7, r0
	ldr	ip, [r0, #8]
	ldr	lr, [r0, #20]
	orr	r7, ip, #1
	tst	r7, lr
	str	r7, [r0, #8]
	beq	.L337
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L337
.L193:
	ldr	r0, [r8, #0]
	ldr	lr, [r0, #-12]
	add	r0, r8, lr
	ldr	ip, [r0, #8]
	ldr	r1, [r0, #20]
	orr	r8, ip, #1
	tst	r8, r1
	str	r8, [r0, #8]
	beq	.L334
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L334
.L174:
	ldr	ip, [r8, #0]
	ldr	r0, [ip, #-12]
	add	r0, r8, r0
	ldr	lr, [r0, #8]
	ldr	r1, [r0, #20]
	orr	r8, lr, #1
	tst	r8, r1
	str	r8, [r0, #8]
	beq	.L331
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L331
.L391:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r1, .L396+4
	ldr	r8, [r1, #0]
	ldr	r3, [r8, #-12]
	add	r3, r5, r3
	mov	r2, r3
	b	.L191
.L386:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r1, .L396+4
	ldr	r3, [r1, #0]
	ldr	r0, [r3, #-12]
	add	r3, r5, r0
	mov	r2, r3
	b	.L310
.L387:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r1, .L396+4
	ldr	ip, [r1, #0]
	ldr	r0, [ip, #-12]
	add	r3, r5, r0
	mov	r2, r3
	b	.L291
.L394:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r2, [r4, #0]
	ldr	r0, [r2, #-12]
	add	r3, r4, r0
	mov	r2, r3
	b	.L136
.L375:
	mov	r0, r2
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r1, [r4, #0]
	ldr	r3, [r1, #-12]
	add	r2, r5, r3
	mov	r3, r2
	b	.L266
.L393:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r1, .L396+4
	ldr	ip, [r1, #0]
	ldr	r8, [ip, #-12]
	add	r3, r5, r8
	mov	r2, r3
	b	.L155
.L392:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r0, .L396+4
	ldr	r2, [r0, #0]
	ldr	ip, [r2, #-12]
	add	r3, r5, ip
	mov	r2, r3
	b	.L172
.L389:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r2, .L396+4
	ldr	ip, [r2, #0]
	ldr	r0, [ip, #-12]
	add	r3, r5, r0
	mov	r2, r3
	b	.L227
.L388:
	mov	r0, r3
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r1, .L396+4
	ldr	r3, [r1, #0]
	ldr	r0, [r3, #-12]
	add	r3, r5, r0
	mov	r2, r3
	b	.L246
.L390:
	mov	r0, r1
	mov	r1, #1
	bl	_ZN4_STL9basic_iosIcNS_11char_traitsIcEEE8setstateEi
	ldr	r3, [r4, #0]
	ldr	r1, [r3, #-12]
	add	r1, r5, r1
	b	.L211
.L168:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L330
.L323:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L352
.L204:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L335
.L185:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L332
.L149:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L327
.L259:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L343
.L224:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L338
.L240:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L340
.L304:
	bl	_ZN4_STL8ios_base16_M_throw_failureEv
	b	.L349
.L395:
	ldr	lr, [r0, #0]
	mov	r1, r6
	ldr	ip, [lr, #52]
	blx	ip
	cmn	r0, #1
	beq	.L280
	b	.L279
.L377:
	ldr	r3, [r4, #0]
	ldr	r0, [r3, #-12]
	add	r1, r5, r0
	ldr	r0, [r1, #88]
	ldr	lr, [r0, #20]
	ldr	ip, [r0, #24]
	cmp	lr, ip
	strccb	r6, [lr], #1
	strcc	lr, [r0, #20]
	bcc	.L281
	ldr	lr, [r0, #0]
	mov	r1, r6
	ldr	r2, [lr, #52]
	blx	r2
	cmn	r0, #1
	beq	.L280
	b	.L281
	.size	_ZN4CNpc10printArrayEv, .-_ZN4CNpc10printArrayEv
	.hidden	_ZN4CNpc10activeNpcsE
	.global	_ZN4CNpc10activeNpcsE
	.hidden	dialMan
	.global	dialMan
	.hidden	replyArray
	.global	replyArray
	.hidden	hist
	.global	hist
	.hidden	index
	.global	index
	.hidden	replyOption
	.global	replyOption
	.hidden	pTurn
	.global	pTurn
	.hidden	_ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE
	.weak	_ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE
	.section	.bss._ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE,"awG",%nobits,_ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE,comdat
	.align	2
	.type	_ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE, %object
	.size	_ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE, 4
_ZN4_STL7num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE:
	.space	4
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC1:
	.ascii	" \000\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"null\000"
	.space	3
.LC2:
	.ascii	".xml\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	replyOption, %object
	.size	replyOption, 4
replyOption:
	.space	4
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
	.type	_ZN4CNpc10activeNpcsE, %object
	.size	_ZN4CNpc10activeNpcsE, 4
_ZN4CNpc10activeNpcsE:
	.space	4
	.type	dialMan, %object
	.size	dialMan, 4
dialMan:
	.space	4
	.type	replyArray, %object
	.size	replyArray, 4
replyArray:
	.space	4
	.type	hist, %object
	.size	hist, 4
hist:
	.space	4
	.type	index, %object
	.size	index, 4
index:
	.space	4
	.type	pTurn, %object
	.size	pTurn, 1
pTurn:
	.space	1
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
