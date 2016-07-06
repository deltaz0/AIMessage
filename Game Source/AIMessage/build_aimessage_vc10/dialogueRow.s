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
	.file	"dialogueRow.cpp"
	.section	.text._ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii,"ax",%progbits
	.align	2
	.global	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii
	.hidden	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii
	.type	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii, %function
_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii:
	@ args = 40, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r2
	mov	r8, r3
	ldrb	r7, [sp, #24]	@ zero_extendqisi2
	ldrb	r6, [sp, #28]	@ zero_extendqisi2
	ldr	r0, [r0, #0]
	bl	strcpy
	strb	r5, [r4, #4]
	strb	r8, [r4, #5]
	strb	r7, [r4, #6]
	strb	r6, [r4, #7]
	ldr	r1, [sp, #32]
	ldr	r0, [r4, #8]
	bl	strcpy
	ldr	r1, [sp, #36]
	ldr	r0, [r4, #12]
	bl	strcpy
	ldr	r1, [sp, #40]
	ldr	r0, [r4, #16]
	bl	strcpy
	ldr	r1, [sp, #44]
	ldr	r0, [r4, #20]
	bl	strcpy
	ldr	r2, [sp, #60]
	str	r2, [r4, #36]
	ldr	r1, [sp, #48]
	str	r1, [r4, #24]
	ldr	r0, [sp, #52]
	str	r0, [r4, #28]
	ldr	r3, [sp, #56]
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.size	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii, .-_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii
	.section	.text._ZN12CDialogueRowD1Ev,"ax",%progbits
	.align	2
	.global	_ZN12CDialogueRowD1Ev
	.hidden	_ZN12CDialogueRowD1Ev
	.type	_ZN12CDialogueRowD1Ev, %function
_ZN12CDialogueRowD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L4
	bl	_ZdaPv
.L4:
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L5
	bl	_ZdaPv
.L5:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L6
	bl	_ZdaPv
.L6:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L7
	bl	_ZdaPv
.L7:
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L8
	bl	_ZdaPv
.L8:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN12CDialogueRowD1Ev, .-_ZN12CDialogueRowD1Ev
	.section	.text._ZN12CDialogueRowD2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CDialogueRowD2Ev
	.hidden	_ZN12CDialogueRowD2Ev
	.type	_ZN12CDialogueRowD2Ev, %function
_ZN12CDialogueRowD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L12
	bl	_ZdaPv
.L12:
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L13
	bl	_ZdaPv
.L13:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L14
	bl	_ZdaPv
.L14:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L15
	bl	_ZdaPv
.L15:
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L16
	bl	_ZdaPv
.L16:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN12CDialogueRowD2Ev, .-_ZN12CDialogueRowD2Ev
	.section	.text.T.47,"ax",%progbits
	.align	2
	.type	T.47, %function
T.47:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, .L20
	mov	r5, #5
	mov	r4, r0
	mov	r1, r6
	mov	r2, r5
	ldr	r0, [r0, #0]
	bl	memcpy
	mov	r0, #122
	strb	r0, [r4, #7]
	strb	r0, [r4, #4]
	strb	r0, [r4, #5]
	strb	r0, [r4, #6]
	mov	r1, r6
	mov	r2, r5
	ldr	r0, [r4, #8]
	bl	memcpy
	mov	r1, r6
	mov	r2, r5
	ldr	r0, [r4, #12]
	bl	memcpy
	mov	r1, r6
	mov	r2, r5
	ldr	r0, [r4, #16]
	bl	memcpy
	mov	r1, r6
	mov	r2, r5
	ldr	r0, [r4, #20]
	bl	memcpy
	mov	r3, #0
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, pc}
.L21:
	.align	2
.L20:
	.word	.LC0
	.size	T.47, .-T.47
	.section	.text._ZN12CDialogueRowC2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CDialogueRowC2Ev
	.hidden	_ZN12CDialogueRowC2Ev
	.type	_ZN12CDialogueRowC2Ev, %function
_ZN12CDialogueRowC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #0]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #8]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #12]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #16]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #20]
	mov	r0, r4
	bl	T.47
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN12CDialogueRowC2Ev, .-_ZN12CDialogueRowC2Ev
	.section	.text._ZN12CDialogueRowC1Ev,"ax",%progbits
	.align	2
	.global	_ZN12CDialogueRowC1Ev
	.hidden	_ZN12CDialogueRowC1Ev
	.type	_ZN12CDialogueRowC1Ev, %function
_ZN12CDialogueRowC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #0]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #8]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #12]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #16]
	mov	r0, #250
	bl	_Znaj
	str	r0, [r4, #20]
	mov	r0, r4
	bl	T.47
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN12CDialogueRowC1Ev, .-_ZN12CDialogueRowC1Ev
	.hidden	npcText
	.global	npcText
	.hidden	replyOptionA
	.global	replyOptionA
	.hidden	replyOptionB
	.global	replyOptionB
	.hidden	replyOptionC
	.global	replyOptionC
	.hidden	replyOptionD
	.global	replyOptionD
	.hidden	playerReplyA
	.global	playerReplyA
	.hidden	playerReplyB
	.global	playerReplyB
	.hidden	playerReplyC
	.global	playerReplyC
	.hidden	playerReplyD
	.global	playerReplyD
	.hidden	pointerA
	.global	pointerA
	.hidden	pointerB
	.global	pointerB
	.hidden	pointerC
	.global	pointerC
	.hidden	pointerD
	.global	pointerD
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"null\000"
	.bss
	.align	2
	.type	npcText, %object
	.size	npcText, 4
npcText:
	.space	4
	.type	replyOptionA, %object
	.size	replyOptionA, 1
replyOptionA:
	.space	1
	.type	replyOptionB, %object
	.size	replyOptionB, 1
replyOptionB:
	.space	1
	.type	replyOptionC, %object
	.size	replyOptionC, 1
replyOptionC:
	.space	1
	.type	replyOptionD, %object
	.size	replyOptionD, 1
replyOptionD:
	.space	1
	.type	playerReplyA, %object
	.size	playerReplyA, 4
playerReplyA:
	.space	4
	.type	playerReplyB, %object
	.size	playerReplyB, 4
playerReplyB:
	.space	4
	.type	playerReplyC, %object
	.size	playerReplyC, 4
playerReplyC:
	.space	4
	.type	playerReplyD, %object
	.size	playerReplyD, 4
playerReplyD:
	.space	4
	.type	pointerA, %object
	.size	pointerA, 4
pointerA:
	.space	4
	.type	pointerB, %object
	.size	pointerB, 4
pointerB:
	.space	4
	.type	pointerC, %object
	.size	pointerC, 4
pointerC:
	.space	4
	.type	pointerD, %object
	.size	pointerD, 4
pointerD:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
