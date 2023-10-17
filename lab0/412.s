	.data
s:	.space 12
	.text
	.global main
main:
	mov $3, %eax
	mov $0, %ebx
	lea s, %ecx
	mov $12, %edx
	int $0x80

	mov $4, %eax
	mov $1, %ebx
	lea s, %ecx
	mov $12, %edx
	int $0x80

	mov $1, %eax
	xor %ebx, %ebx
	int $0x80
	
