	.data
x:	.long 33
y:	.long 17
	.text
	.global main
main:
	movl x, %eax
	movl y, %edx
	movl %eax, y
	movl %edx, x

	mov $1, %eax
	xor %ebx, %ebx
	int $0x80
	
