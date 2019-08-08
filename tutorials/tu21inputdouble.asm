.data
	prompt: .asciiz "enter the value of e:"

.text
	li $v0, 4
	la $a0, prompt
	syscall
	
	
	li $v0, 7
	syscall
	
	li $v0, 3
	add.d $f12, $f4, $f0	#f4 or f10 can be used here
	syscall
	
	li $v0 10
	syscall