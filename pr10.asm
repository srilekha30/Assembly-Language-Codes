.data
	a: .asciiz"\n"
	
.text
	main:
		
		addi $s0,$zero,10
		
		jal increg
		
		#print a newline
		li $v0,4
		la $a0,a
		syscall
		
		#print value
		li $v0,1
		move $a0,$s0
		syscall
			
	
	li $v0,10
	syscall
	
	increg:
		addi $sp,$sp,-4
		sw $s0,0($sp)
		addi $s0,$s0,30
		#print new value in function
		li $v0,1
		move $a0,$s0
		syscall
		
		lw $s0,0($sp)
		addi $sp,$sp,4
		
		jr $ra