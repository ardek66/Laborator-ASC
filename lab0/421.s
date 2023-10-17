	.data
x:	.long 256
y:	.long 8
	.text
	.global main
main:
	# Metoda 1
	movl $256, %ebx
	movl y, %eax
	xor %edx, %edx
	imul %ebx
	add x, %eax

	movl $16, %ebx
	idiv %ebx

	# Metoda 2
	movl x, %eax
	xor %edx, %edx
	movl $16, %ebx
	idiv %ebx
	movl %eax, %ecx
	movl y, %eax
	imul %ebx
	add %ecx, %eax

	mov $1, %eax
	xor %ebx, %ebx
	int $0x80

	
