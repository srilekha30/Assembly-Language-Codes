.data
	n1:	.word 5
	n2:	.word 10

.text
	#addition
	lw $t0,n1($zero)
	lw $t1,n2
	add $t2,$t1,$t0
	li $v0,1
	move $a0,$t2
	syscall