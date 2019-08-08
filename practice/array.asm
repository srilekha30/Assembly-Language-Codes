.data
	myarray: .space 20	

.text
	li $v0, 5
	syscall
	move $t0, $v0
	addi $t3, $t0, 0
	li $t1, 0
	li $s0, 0
	loop:
		ble $t0, $zero, sum
		li $v0, 5
		syscall
		sw $v0, myarray($t1)
		addi $t1, $t1, 4
		addi $t0, $t0, -1
		jal loop
		
	sum:	
		ble $t3, $zero, exit
		lw $t2, myarray($t0)
		addi $t0, $t0, 4
		add $s0, $s0, $t2
		addi $t3, $t3, -1
		jal sum
	
	exit:
		move $a0, $s0
		li $v0, 1
		syscall	
	
	
	li $v0, 10
	syscall
		