.data
	message: .asciiz "one"
	message2: .asciiz "two"

.text
	main:
		addi $t0, $zero, 589
		addi $t1, $zero, 20
		
		beq $t0, $t1, numbersequal
		li $v0, 10
		syscall
		
		
	numbersequal:
	li $v0, 4
	la $a0, message
	syscall
	
	
