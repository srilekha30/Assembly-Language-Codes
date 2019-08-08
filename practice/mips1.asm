.data
	display: .asciiz "enter an integer"

.text
	
	li $v0, 4
	la $a0, display
	syscall
	
	li $v0, 5
	
	syscall
	move $a0, $v0
	li $v0, 1
	
	syscall