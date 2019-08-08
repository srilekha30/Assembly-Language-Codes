.data

	a: .asciiz "enter a value of n"
	b: .asciiz " "
.text
	li $v0,4
	la $a0,a
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	
	li $t1,1
	li $t2,0
	
	
	
	loop:
		beqz $t0,exit
		
		li $v0 ,1
		move $a0,$t1
		syscall
		
		li $v0,4
		la $a0,b
		syscall
		
		move $t3,$t2
		move $t2,$t1
		add $t1,$t1,$t3
		
		addi $t0,$t0,-1
		j loop
		
	exit:
		li $v0 ,10
		syscall
		
		
		
		