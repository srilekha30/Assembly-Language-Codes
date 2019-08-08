.data
	message: .asciiz "Hello World \n" # .asciiz for storing a string
	
.text
	li $v0, 4 # '4' for printing a string
	la $a0, message
	syscall
	 