.data
	character: .byte 'D' #byte for storing character
.text
	li $v0, 4
	la $a0, character
	syscall