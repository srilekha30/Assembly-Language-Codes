.data
	number1: .word 10
	number2: .word 15
	newline: .asciiz "\n"
.text


	lw $t0, number1
	lw $t1, number2

	add $t2, $t1, $t0	#add
	#sub $t1, $t1, $t0
	li $v0, 1
	move $a0, $t2
	syscall
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	mul $t2, $t1, $t0	#mul
	li $v0, 1
	move $a0, $t2
	syscall
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	addi $t0, $zero, 10  #mul
	addi $t1, $zero, 10
	mul $t2, $t1, $t0
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	addi $t0, $zero, 200  #mult             #hi: high   lo: low
	addi $t1, $zero, 10
	mult $t1, $t0     #stores the result in lo
	
	li $v0, 1
	mflo $a0
	syscall
	
	
	li $v0, 10  
	syscall
	