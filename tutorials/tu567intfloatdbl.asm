.data
	number: .word 10 # .word for storing a number
	newline: .asciiz "\n"
	floatnum: .float 33.56  # .float for storing a float value
	doubleval: .double 1.23456789 # .double for storing a double value
	zerodouble: .double 0.0
	
	
.text
	li $v0, 1
	lw $a0, number
	syscall
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 2 # 2 for printing float
	lwc1 $f12, floatnum
	syscall
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	#ldc1 $f2, doubleval # 3 for printing double
	#ldc1 $f0, zerodouble
	
	li $v0, 3   # 3 for printing double
	ldc1 $f12, doubleval
	#add.d  $f12, $f2, $f0
	
	syscall
	
	
	