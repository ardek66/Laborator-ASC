	.data
n:		.long 921
este_prim:	.byte 1
	.text
	.global main
	/* Metoda 1
main:
	movl n, %eax
	xor %edx, %edx
	movl $2, %ebx
	idiv %ebx
	movl %eax, %ebx
	movl $2, %ecx
prim:
	cmp %ebx, %ecx
	jg exit
	mov n, %eax
	xor %edx, %edx
	idiv %ecx
	cmp $0, %edx
	je neprim
	inc %ecx
	jmp prim
	*/
	
	// Metoda 2
	main:
	movl n, %eax
	xor %edx, %edx
	movl $2, %ebx
	idiv %ebx
	movl %eax, %ecx
prim:
	mov n, %eax
	xor %edx, %edx
	idiv %ecx
	cmp $0, %edx
	je neprim
	loop prim
neprim:
	movb $0, este_prim
exit:	
	movl $1, %eax
	xor %ebx, %ebx
	int $0x80
