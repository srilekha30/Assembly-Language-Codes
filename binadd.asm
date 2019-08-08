.data
	a: .asciiz "enter 2 numbers\n"
	
	
.text
	li $v0,4
	la $a0,a
	syscall
	
	li $v0,5
	syscall
		move $t0,$v0
	li $v0,5
	syscall
		move $t2,$v0
	add $s0,$t1,$0
	add $s1,$t2,$0
	li $s2 ,0
	li $s3,0
	loop1:
		beqz $t1,loop2
		addi $s2,$s2,1
		div $t1,$t1,10
		
		j loop1
	loop2 :
		beqz $t2,check
		addi $s3,$s3,1
		div $t2,$t2,10
		
		j loop2
		
	check:
		beq $s2,$s3,c1
		blt $s2,$s3,c2
				
		