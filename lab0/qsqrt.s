	.data
numar:	.single 27.0
k:	.single 0.5
l:	.single 1.5
x:	.single 0
flags:	.long 0
	.text
	.global main
main:
	finit
	fstcw flags
	mov flags, %eax
	or $0x400, %eax
	mov %eax, flags
	fldcw flags
	
	flds numar
	fmuls k
	movl numar, %edx
	shr $1, %edx
	movl $0x5f3759df, %eax
	subl %edx, %eax
	movl %eax, x
	flds x
	fmul %st
	fmulp %st(1)
	flds l
	fsubp %st(1)
	flds x
	fmulp %st(1)
	fld1
	fdivp %st(1)
	frndint
	fstps numar
exit:	
	mov $1, %eax
	mov $0, %ebx
	int $0x80
