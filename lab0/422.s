	.data
x:		.long 252
y:		.long 137
tmp:		.long 0
str_pass:	.asciz "PASS\n"
str_fail:	.asciz "FAIL\n"
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
	movl %eax, tmp
	
	# Metoda 2
	movl x, %eax
	xor %edx, %edx
	movl $16, %ebx
	idiv %ebx
	movl %eax, %ecx
	movl y, %eax
	imul %ebx
	add %ecx, %eax
	
	# Comparare
	cmp %eax, tmp
	jne fail

	mov $4, %eax
	mov $1, %ebx
	lea str_pass, %ecx
	mov $5, %edx
	int $0x80
	jmp exit

fail:
	mov $4, %eax
	mov $1, %ebx
	lea str_fail, %ecx
	mov $5, %edx
	int $0x80
exit:	
	mov $1, %eax
	xor %ebx, %ebx
	int $0x80

	
