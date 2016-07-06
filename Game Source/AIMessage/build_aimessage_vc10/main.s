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
	.file	"main.cpp"
	.section	.text._Z14GetUpdateFramev,"ax",%progbits
	.align	2
	.global	_Z14GetUpdateFramev
	.hidden	_Z14GetUpdateFramev
	.type	_Z14GetUpdateFramev, %function
_Z14GetUpdateFramev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	bl	s3eTimerGetMs
	mov	r0, r0, lsr #4
	orr	r0, r0, r1, asl #28
	ldmfd	sp!, {r3, pc}
	.size	_Z14GetUpdateFramev, .-_Z14GetUpdateFramev
	.section	.text.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r0, #12
	bl	_Znwj
	mov	r6, r0
	bl	_ZN5CGameC1Ev
	bl	s3eTimerGetMs
	mov	r0, r0, lsr #4
	orr	r5, r0, r1, asl #28
	bl	s3eDeviceCheckQuitRequest
	mov	r4, r5
	cmp	r0, #0
	beq	.L28
	b	.L30
.L8:
	bl	s3eTimerGetMs
	mov	r4, r0, lsr #4
	orr	r4, r4, r1, asl #28
	cmp	r5, r4
	mov	r0, #1
	bne	.L31
	bl	s3eDeviceYield
	mov	r4, r5
.L28:
	bl	s3eDeviceCheckQuitRequest
	cmp	r0, #0
	beq	.L8
.L7:
	mov	r0, r6
	bl	_ZN5CGame6RenderEv
	bl	s3ePointerUpdate
	bl	s3eKeyboardUpdate
	mov	r0, #0
	bl	s3eDeviceYield
	mov	r5, r4
.L32:
	bl	s3eDeviceCheckQuitRequest
	cmp	r0, #0
	beq	.L28
.L30:
	cmp	r6, #0
	beq	.L10
	mov	r0, r6
	bl	_ZN5CGameD1Ev
	mov	r0, r6
	bl	_ZdlPv
.L10:
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L31:
	rsb	r7, r5, r4
	cmp	r7, #6
	movge	r7, #6
	cmp	r7, #0
	sub	r7, r7, #1
	beq	.L7
	sub	r5, r7, #1
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	cmn	r5, #1
	and	r7, r7, #3
	beq	.L7
	cmp	r7, #0
	beq	.L12
	cmp	r7, #1
	beq	.L26
	cmp	r7, #2
	beq	.L27
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	sub	r5, r5, #1
.L27:
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	sub	r5, r5, #1
.L26:
	sub	r5, r5, #1
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	cmn	r5, #1
	beq	.L7
.L12:
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	sub	r5, r5, #4
	mov	r0, r6
	bl	_ZN5CGame6UpdateEv
	cmn	r5, #1
	bne	.L12
	mov	r0, r6
	bl	_ZN5CGame6RenderEv
	bl	s3ePointerUpdate
	bl	s3eKeyboardUpdate
	mov	r0, #0
	bl	s3eDeviceYield
	mov	r5, r4
	b	.L32
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
