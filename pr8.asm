.data
	
.text
	addi $t0,$zero, 2000
	addi $t1,$zero, 10
	
	mult $t0,$t1
	mflo $a0
	# display prod
	li $v0,1
	
	syscall