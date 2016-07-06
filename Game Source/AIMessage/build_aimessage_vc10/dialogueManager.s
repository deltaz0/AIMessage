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
	.file	"dialogueManager.cpp"
	.section	.text._ZN16CDialogueManagerD1Ev,"ax",%progbits
	.align	2
	.global	_ZN16CDialogueManagerD1Ev
	.hidden	_ZN16CDialogueManagerD1Ev
	.type	_ZN16CDialogueManagerD1Ev, %function
_ZN16CDialogueManagerD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, [r0, #0]
	mov	r5, r0
	cmp	r3, #0
	beq	.L2
	ldr	r1, [r3, #-4]
	add	r0, r1, r1, asl #2
	add	r0, r3, r0, asl #3
	cmp	r3, r0
	bne	.L6
	b	.L3
.L8:
	mov	r0, r4
.L6:
	sub	r4, r0, #40
	mov	r0, r4
	bl	_ZN12CDialogueRowD1Ev
	ldr	r0, [r5, #0]
	cmp	r0, r4
	bne	.L8
.L3:
	sub	r0, r0, #8
	bl	_ZdaPv
.L2:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN16CDialogueManagerD1Ev, .-_ZN16CDialogueManagerD1Ev
	.section	.text._ZN16CDialogueManagerD2Ev,"ax",%progbits
	.align	2
	.global	_ZN16CDialogueManagerD2Ev
	.hidden	_ZN16CDialogueManagerD2Ev
	.type	_ZN16CDialogueManagerD2Ev, %function
_ZN16CDialogueManagerD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, [r0, #0]
	mov	r5, r0
	cmp	r3, #0
	beq	.L10
	ldr	r1, [r3, #-4]
	add	r0, r1, r1, asl #2
	add	r0, r3, r0, asl #3
	cmp	r3, r0
	bne	.L14
	b	.L11
.L15:
	mov	r0, r4
.L14:
	sub	r4, r0, #40
	mov	r0, r4
	bl	_ZN12CDialogueRowD1Ev
	ldr	r0, [r5, #0]
	cmp	r0, r4
	bne	.L15
.L11:
	sub	r0, r0, #8
	bl	_ZdaPv
.L10:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN16CDialogueManagerD2Ev, .-_ZN16CDialogueManagerD2Ev
	.section	.text._ZN16CDialogueManagerC1EPKc,"ax",%progbits
	.align	2
	.global	_ZN16CDialogueManagerC1EPKc
	.hidden	_ZN16CDialogueManagerC1EPKc
	.type	_ZN16CDialogueManagerC1EPKc, %function
_ZN16CDialogueManagerC1EPKc:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #84
	str	r0, [sp, #72]
	ldr	r0, .L26
	mov	r7, r1
	bl	_Znaj
	mov	r1, #40
	mov	r3, #200
	add	r5, r0, #8000
	add	r6, r0, #8
	add	r5, r5, #8
	mov	r4, r6
	stmia	r0, {r1, r3}	@ phole stm
.L17:
	mov	r0, r4
	bl	_ZN12CDialogueRowC1Ev
	add	r0, r4, #40
	bl	_ZN12CDialogueRowC1Ev
	add	r0, r4, #80
	bl	_ZN12CDialogueRowC1Ev
	add	r0, r4, #120
	add	r4, r4, #160
	bl	_ZN12CDialogueRowC1Ev
	cmp	r4, r5
	bne	.L17
	ldr	r0, [sp, #72]
	mov	r4, #0
	str	r6, [r0, #0]
	mov	r0, #8
	bl	_Znwj
	mov	r1, r7
	mov	r5, r4
	str	r0, [sp, #76]
	bl	_ZN10CXmlLoaderC1EPKc
	ldr	r0, [sp, #76]
	bl	_ZN10CXmlLoader15getNextRowArrayEv
	mov	ip, r0
	b	.L18
.L19:
	ldr	r7, [ip, #8]
	add	r6, ip, #12
	ldmia	r6, {r6, sl, fp}	@ phole ldm
	ldr	r3, [ip, #32]
	ldr	r2, [ip, #4]
	ldrb	r9, [r7, #0]	@ zero_extendqisi2
	ldrb	r8, [r6, #0]	@ zero_extendqisi2
	ldrb	r7, [sl, #0]	@ zero_extendqisi2
	ldrb	r6, [fp, #0]	@ zero_extendqisi2
	ldr	sl, [ip, #24]
	ldr	fp, [ip, #28]
	ldr	r0, [ip, #40]
	str	r3, [sp, #68]
	ldr	lr, [ip, #36]
	str	lr, [sp, #64]
	str	r2, [sp, #48]
	str	ip, [sp, #44]
	bl	atoi
	ldr	ip, [sp, #44]
	add	r5, r5, #1
	str	r0, [sp, #60]
	ldr	r0, [ip, #44]
	bl	atoi
	ldr	r1, [sp, #44]
	str	r0, [sp, #56]
	ldr	r0, [r1, #48]
	bl	atoi
	ldr	r3, [sp, #44]
	str	r0, [sp, #52]
	ldr	r0, [r3, #52]
	bl	atoi
	ldr	r2, [sp, #72]
	mov	r3, r8
	ldr	ip, [r2, #0]
	ldr	lr, [sp, #52]
	mov	r2, r9
	ldr	r1, [sp, #48]
	str	r7, [sp, #0]
	str	r6, [sp, #4]
	add	r6, sp, #56
	ldmia	r6, {r6, r7, r8, r9}	@ phole ldm
	str	lr, [sp, #32]
	str	sl, [sp, #8]
	str	fp, [sp, #12]
	str	r9, [sp, #16]
	str	r8, [sp, #20]
	str	r7, [sp, #24]
	str	r6, [sp, #28]
	str	r0, [sp, #36]
	add	r0, r4, ip
	bl	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii
	ldr	r0, [sp, #76]
	bl	_ZN10CXmlLoader15getNextRowArrayEv
	add	r4, r4, #40
	mov	ip, r0
.L18:
	ldr	r0, [ip, #0]
	str	ip, [sp, #44]
	bl	atoi
	ldr	ip, [sp, #44]
	cmn	r0, #1
	bne	.L19
	ldr	fp, [ip, #8]
	add	r4, ip, #12
	ldmia	r4, {r4, r8, r9}	@ phole ldm
	ldr	r1, [ip, #32]
	ldrb	r7, [fp, #0]	@ zero_extendqisi2
	ldrb	r6, [r4, #0]	@ zero_extendqisi2
	ldr	sl, [ip, #4]
	ldrb	r4, [r8, #0]	@ zero_extendqisi2
	ldr	fp, [ip, #28]
	ldrb	r8, [r9, #0]	@ zero_extendqisi2
	ldr	r0, [ip, #40]
	ldr	r9, [ip, #24]
	str	r1, [sp, #68]
	ldr	lr, [ip, #36]
	str	lr, [sp, #64]
	bl	atoi
	ldr	ip, [sp, #44]
	add	r5, r5, r5, asl #2
	str	r0, [sp, #60]
	ldr	r0, [ip, #44]
	bl	atoi
	ldr	r3, [sp, #44]
	str	r0, [sp, #56]
	ldr	r0, [r3, #48]
	bl	atoi
	ldr	r2, [sp, #44]
	str	r0, [sp, #52]
	ldr	r0, [r2, #52]
	bl	atoi
	ldr	r1, [sp, #72]
	ldr	lr, [sp, #68]
	ldr	ip, [r1, #0]
	str	lr, [sp, #16]
	ldr	lr, [sp, #64]
	str	lr, [sp, #20]
	ldr	lr, [sp, #60]
	str	lr, [sp, #24]
	ldr	lr, [sp, #56]
	str	lr, [sp, #28]
	mov	r1, sl
	ldr	lr, [sp, #52]
	mov	r2, r7
	mov	r3, r6
	stmia	sp, {r4, r8, r9, fp}	@ phole stm
	str	lr, [sp, #32]
	str	r0, [sp, #36]
	add	r0, ip, r5, asl #3
	bl	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii
	ldr	r0, [sp, #72]
	add	sp, sp, #84
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	.align	2
.L26:
	.word	8008
	.size	_ZN16CDialogueManagerC1EPKc, .-_ZN16CDialogueManagerC1EPKc
	.section	.text._ZN16CDialogueManagerC2EPKc,"ax",%progbits
	.align	2
	.global	_ZN16CDialogueManagerC2EPKc
	.hidden	_ZN16CDialogueManagerC2EPKc
	.type	_ZN16CDialogueManagerC2EPKc, %function
_ZN16CDialogueManagerC2EPKc:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #84
	str	r0, [sp, #72]
	ldr	r0, .L38
	mov	r7, r1
	bl	_Znaj
	mov	r1, #40
	mov	r3, #200
	add	r5, r0, #8000
	add	r6, r0, #8
	add	r5, r5, #8
	mov	r4, r6
	stmia	r0, {r1, r3}	@ phole stm
.L29:
	mov	r0, r4
	bl	_ZN12CDialogueRowC1Ev
	add	r0, r4, #40
	bl	_ZN12CDialogueRowC1Ev
	add	r0, r4, #80
	bl	_ZN12CDialogueRowC1Ev
	add	r0, r4, #120
	add	r4, r4, #160
	bl	_ZN12CDialogueRowC1Ev
	cmp	r4, r5
	bne	.L29
	ldr	r0, [sp, #72]
	mov	r4, #0
	str	r6, [r0, #0]
	mov	r0, #8
	bl	_Znwj
	mov	r1, r7
	mov	r5, r4
	str	r0, [sp, #76]
	bl	_ZN10CXmlLoaderC1EPKc
	ldr	r0, [sp, #76]
	bl	_ZN10CXmlLoader15getNextRowArrayEv
	mov	ip, r0
	b	.L30
.L31:
	ldr	r7, [ip, #8]
	add	r6, ip, #12
	ldmia	r6, {r6, sl, fp}	@ phole ldm
	ldr	r3, [ip, #32]
	ldr	r2, [ip, #4]
	ldrb	r9, [r7, #0]	@ zero_extendqisi2
	ldrb	r8, [r6, #0]	@ zero_extendqisi2
	ldrb	r7, [sl, #0]	@ zero_extendqisi2
	ldrb	r6, [fp, #0]	@ zero_extendqisi2
	ldr	sl, [ip, #24]
	ldr	fp, [ip, #28]
	ldr	r0, [ip, #40]
	str	r3, [sp, #68]
	ldr	lr, [ip, #36]
	str	lr, [sp, #64]
	str	r2, [sp, #48]
	str	ip, [sp, #44]
	bl	atoi
	ldr	ip, [sp, #44]
	add	r5, r5, #1
	str	r0, [sp, #60]
	ldr	r0, [ip, #44]
	bl	atoi
	ldr	r1, [sp, #44]
	str	r0, [sp, #56]
	ldr	r0, [r1, #48]
	bl	atoi
	ldr	r3, [sp, #44]
	str	r0, [sp, #52]
	ldr	r0, [r3, #52]
	bl	atoi
	ldr	r2, [sp, #72]
	mov	r3, r8
	ldr	ip, [r2, #0]
	ldr	lr, [sp, #52]
	mov	r2, r9
	ldr	r1, [sp, #48]
	str	r7, [sp, #0]
	str	r6, [sp, #4]
	add	r6, sp, #56
	ldmia	r6, {r6, r7, r8, r9}	@ phole ldm
	str	lr, [sp, #32]
	str	sl, [sp, #8]
	str	fp, [sp, #12]
	str	r9, [sp, #16]
	str	r8, [sp, #20]
	str	r7, [sp, #24]
	str	r6, [sp, #28]
	str	r0, [sp, #36]
	add	r0, r4, ip
	bl	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii
	ldr	r0, [sp, #76]
	bl	_ZN10CXmlLoader15getNextRowArrayEv
	add	r4, r4, #40
	mov	ip, r0
.L30:
	ldr	r0, [ip, #0]
	str	ip, [sp, #44]
	bl	atoi
	ldr	ip, [sp, #44]
	cmn	r0, #1
	bne	.L31
	ldr	fp, [ip, #8]
	add	r4, ip, #12
	ldmia	r4, {r4, r8, r9}	@ phole ldm
	ldr	r1, [ip, #32]
	ldrb	r7, [fp, #0]	@ zero_extendqisi2
	ldrb	r6, [r4, #0]	@ zero_extendqisi2
	ldr	sl, [ip, #4]
	ldrb	r4, [r8, #0]	@ zero_extendqisi2
	ldr	fp, [ip, #28]
	ldrb	r8, [r9, #0]	@ zero_extendqisi2
	ldr	r0, [ip, #40]
	ldr	r9, [ip, #24]
	str	r1, [sp, #68]
	ldr	lr, [ip, #36]
	str	lr, [sp, #64]
	bl	atoi
	ldr	ip, [sp, #44]
	add	r5, r5, r5, asl #2
	str	r0, [sp, #60]
	ldr	r0, [ip, #44]
	bl	atoi
	ldr	r3, [sp, #44]
	str	r0, [sp, #56]
	ldr	r0, [r3, #48]
	bl	atoi
	ldr	r2, [sp, #44]
	str	r0, [sp, #52]
	ldr	r0, [r2, #52]
	bl	atoi
	ldr	r1, [sp, #72]
	ldr	lr, [sp, #68]
	ldr	ip, [r1, #0]
	str	lr, [sp, #16]
	ldr	lr, [sp, #64]
	str	lr, [sp, #20]
	ldr	lr, [sp, #60]
	str	lr, [sp, #24]
	ldr	lr, [sp, #56]
	str	lr, [sp, #28]
	mov	r1, sl
	ldr	lr, [sp, #52]
	mov	r2, r7
	mov	r3, r6
	stmia	sp, {r4, r8, r9, fp}	@ phole stm
	str	lr, [sp, #32]
	str	r0, [sp, #36]
	add	r0, ip, r5, asl #3
	bl	_ZN12CDialogueRow12assignValuesEPcccccS0_S0_S0_S0_iiii
	ldr	r0, [sp, #72]
	add	sp, sp, #84
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L39:
	.align	2
.L38:
	.word	8008
	.size	_ZN16CDialogueManagerC2EPKc, .-_ZN16CDialogueManagerC2EPKc
	.hidden	dialogueArray
	.global	dialogueArray
	.bss
	.align	2
	.type	dialogueArray, %object
	.size	dialogueArray, 4
dialogueArray:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
