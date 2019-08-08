.data
	number: .word 10 # .word for storing a number
	newline: .asciiz "\n"
	floatnum: .float 33.56  # .float for storing a float value
.text
	li $v0, 1
	lw $a0, number
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 2 # 2 for printing float
	lwc1 $f12, floatnum
	syscall