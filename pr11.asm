.data
	a: .asciiz "\n"
.text
	main:
		addi $s0,$zero,10
		jal increment
		#to print value
		li $v0,1
		move $a0,$s0
		syscall
		#to print newline
		li $v0,4
		la $a0,a
		syscall
	#to end	
	li $v0,10
	syscall
	
	increment:
		addi $sp,$sp,-4
		sw   $s0,0($sp)
		

		addi $s0,$s0,30
		
		#to print changed value
		li $v0,1
		move $a0,$s0
		syscall
		
		
		#to load the stored value and show that it did not change
		lw $s0,0($sp)
		addi $sp,$sp,4
		
		
		
		
		jr $ra
