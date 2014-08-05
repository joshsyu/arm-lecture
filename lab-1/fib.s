	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r2, r3, r4, r5, lr}

	@ R4 = R0 - 0 (update flags)
	sub r4, r0, #0
	
	@ Compare R0 with 0
	@ if(R0 <= 0) goto .L3 (which returns 0)
	cmp r0, #0
	ble .L3
	
	@ Do Loop add
	mov r2, #0
	mov r3, #0
	mov r5, #1
.LADD:
	add r0, r3, r5
	mov r5, r3
	mov r3, r0
	add r2, r2, #1
	cmp r2, r4
	blt .LADD
	
	pop {r2, r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION
.L3:
	mov r0, #0			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
