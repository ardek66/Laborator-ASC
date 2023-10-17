	.data
a:	.long 364
b:	.long 124
c:	.long 17
min:	.space 4

	.text
	.global main
main:
	movl a, %eax
	cmp %eax, b
	jl schimb_b
verif:	
	cmp %eax, c
	jl schimb_c
	jmp exit
schimb_b:
	movl b, %eax
	jmp verif
schimb_c:
	movl c, %eax
exit:
	movl %eax, min
	movl $1, %eax
	xor %ebx, %ebx
	int $0x80
	
	
	
	
