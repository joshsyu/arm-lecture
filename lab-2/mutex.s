	.syntax unified
	.arch armv7-a
	.text

	.equ locked, 1
	.equ unlocked, 0

	.global lock_mutex
	.type lock_mutex, function
lock_mutex:
        ldr r2, =locked
		@ INSERT CODE BELOW
try:	ldrex r1, [r0]
		cmp r1, #0
		strexeq r1, r2, [r0]  
		cmpeq r1, #0
		bne try	
		
        @ END CODE INSERT
	bx lr

	.size lock_mutex, .-lock_mutex

	.global unlock_mutex
	.type unlock_mutex, function
unlock_mutex:
	@ INSERT CODE BELOW
    ldr r2, =unlocked
	str r2, [r0]    
        @ END CODE INSERT
	bx lr
	.size unlock_mutex, .-unlock_mutex

	.end
