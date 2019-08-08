.data
	
	
.data
	prompt: .asciiz "Hello.."
	userinput:  .space  20	#creating arrary (string of length of 20)
	
.text
	main:
		li $v0, 8
		la $a0, userinput
		li $a1, 20
		syscall
	
		move $a0, $v0
	li $t0, 0
	li $t2, 0

	loop:
		lb $t1, userinput($t2)
		beqz $t1, exit
		addi $t2, $t2, 1
		addi $t0, $t0, 1 #count
		jal loop
		
	exit:	
	move $a0, $t0
	addi $a0, $a0, -1
	li $v0, 1
	syscall
	
		li $v0, 10
		syscall


















