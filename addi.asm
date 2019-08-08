
.text
li $v0,5
syscall
addi $s1,$v0,0
li $v0,5
syscall
addi $s2,$v0,0
li $t0,0
li $t4,0
li $t8,0
li $s3,0
loop1:
	seq $t1,$s1,0
	seq $t2,$s2,0
	add $t1,$t1,$t2
	beq $t1,2,exit
	rem $t5,$s1,2
	div $s1,$s1,2
	rem $t6,$s2,2
	div $s2,$s2,2
	add $t7,$t5,$t6
	add $t7,$t7,$t4
	sgt $t4,$t7,1
	rem $t7,$t7,2
	addi $t9,$t8,0
pow:
	beq $t8,0,con1
	mul  $t7,$t7,2
	sub $t8,$t8,1
	j pow
con1:
	addi $t8,$t9,1
	add $s3,$s3,$t7
	j loop1
exit:
	beq $t4,1,carry
	j out
carry: 
	beq $t8,0,out
	mul $t4,$t4,2
	sub $t8,$t8,1
	j carry
out:	
	add $s3,$s3,$t4
	li $v0,1
	addi $a0,$s3,0
	syscall
	

	
