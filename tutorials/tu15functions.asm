.data
	mystring: .asciiz "hey.."
	
.text
	main:	
		jal function
	
	li $v0, 10
	syscall
	
	
	function:
	li $v0, 4
	la $a0, mystring
	syscall
	
	
	jr $ra
		
		