.data

.text
	main:
	
		addi $t0,$zero,5
		addi $t1,$zero,5
		jal addno
		li $v0,1
		move $a0,$v1
		syscall
		#li $v0,1
		#move $a1,$t1
		#syscall
		
	li $v0,10
	syscall
	addno:
		add $v1,$t0,$t1
		jr $ra
		
	
	