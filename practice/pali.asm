.data
	s1: .asciiz "yes"
	s2: .asciiz "no"
	
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
		j loop
		
	exit:	
		li $t4, 0
		addi $t0, $t0, -2
		move $t1,$t0	#lenght-1 is stored in t1
		li $s0,-1
		check:
			bltz $t0, print
			lb $t3, userinput($t0)
			lb $t5, userinput($t4)
			addi $t0, $t0, -1
			addi $t4, $t4, 1
			beq $t3, $t5, incr
			jal check
		
		incr:
			addi $s0, $s0, 1
			jal check
			
		print:
			beq $s0, $t1, yes
			la, $a0, s2
			li $v0, 4
			syscall
			li $v0, 10
			syscall
		
			yes:
				la, $a0, s1
				li $v0, 4
				syscall
				li $v0, 10
				syscall
		
		


















