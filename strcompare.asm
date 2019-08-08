.data
	c: .asciiz "enter 2 strings"
	d: .asciiz " \n"
	a: .space 30
	e: .space 30
.text
	li $v0,4
	la $a0,c
	syscall
	
	li $v0,8
	la $a0,a
	li $a1,30
	syscall
	
	li $t0,0
	li $t1,0
	
	li $v0,8
	la $a0,e
	li $a1,30
	syscall
	
	loop :
		beqz a($t0),exit
		addi $t1,$t1,1
		