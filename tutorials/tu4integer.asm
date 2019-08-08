.data
	number: .word 10 # .word for storing a number
	
.text
	li $v0, 1
	lw $a0, number
	syscall