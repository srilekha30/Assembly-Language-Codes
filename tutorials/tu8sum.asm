.data
	number1: .word 20
	number2: .word 15
.text


	lw $t0, number1
	lw $t1, number2

	add $t2, $t1, $t0
	#sub $t1, $t1, $t0
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10  
	syscall
	