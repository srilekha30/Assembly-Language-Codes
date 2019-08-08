.data
	newline: .asciiz "\n"
	
.text
	main:	
	
	addi $s0, $zero, 10
	jal function
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0,1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	
	lw $s0, 0($sp)
	addi $sp, $sp, 4
	
	
	li $v0,1
	move $a0, $s0
	syscall
	
	li $v0, 10
	syscall
	
	function:
	addi $sp, $sp, -4
	sw $s0, 0($sp)		#save the value in s0 to 0($sp)
	
	addi $s0, $s0, 30
	li $v0, 1
	move $a0, $s0
	syscall
	
	
	jr $ra
	
	
	
	
	
	
	
