	.data
s:	.asciz "Ana are mere"
t:	.space 13
n:	.long 12
nl:	.byte '\n'
	
	.text
	.global main
main:
	movl n, %ecx
	lea s, %esi
	lea t, %edi
invers:
	movl n, %eax
	sub %ecx, %eax

	movb -1(%esi, %ecx, 1), %dl
	movb %dl, (%edi, %eax, 1)
	loop invers

exit:
	movl n, %edx
	movb $0, (%esi, %edx, 1)
	
	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	lea nl, %ecx
	movl $1, %edx
	int $0x80

	movl $1, %eax
	xor %ebx, %ebx
	int $0x80
