.data
	newline: .asciiz "\n"
.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	div  $a0, $t0, $t1	#div result  is quotient   (div $a0, $t0, 10  results '3')
	li $v0, 1		
	syscall
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	div $t0, $t1			#quotient is stored in lo  & remainder is stored in hi
	mflo $a0
	li $v0, 1
	syscall
	
	#for newline
	li $v0, 4
	la $a0, newline
	syscall
	
	mfhi $a0
	li $v0, 1
	syscall