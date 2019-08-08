.data

.text
	addi $t0, $zero, 15
	#addi $t1, $zero, 5
	sll $t1, $t0, 3		#shifts 15 '3'(n) times logically i.e 2 to the power n
	move $a0, $t1
	li $v0, 1
	syscall
	
	
