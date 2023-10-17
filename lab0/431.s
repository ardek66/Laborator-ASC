	.data
v:	.long 16, 23, 16, 27, 29, 27, 16, 27, 29, 27
n:	.long 10
	.text
	.global main
main:
	movl n, %ecx
	lea v, %esi
	xor %eax, %eax
	xor %edx, %edx

etloop:
	movl n, %ebx
	sub %ecx, %ebx
	cmp %eax, (%esi, %ecx, 4)
	je egal
	jl mai_mic
	movl (%esi, %ecx, 4), %eax
	mov $1, %edx
mai_mic:	
	loop etloop
	jmp exit
egal:
	inc %edx
	jmp mai_mic
exit:
	movl $1, %eax
	xor %ebx, %ebx
	int $0x80
