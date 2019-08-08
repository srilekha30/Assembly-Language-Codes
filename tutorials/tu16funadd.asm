.data
	
	
.text
	main:	
		addi $t0, $zero, 5
		addi $t1, $zero, 15
		jal addition
	
	li $v0, 1
	#move $a0, $v1
	syscall
	
	li $v0, 10
	syscall
	
	
	addition:
	
	add $a0, $t1, $t0
	jr $ra
		
		
