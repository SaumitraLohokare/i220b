	.text
	.globl get_parity
#edi contains n	
get_parity:
	movl	%edi, %eax
	xorl	$0, %eax
	jpe		evenP
	movl	$0, %eax
	ret
	evenP:
	movl	$1, %eax
	ret
	
