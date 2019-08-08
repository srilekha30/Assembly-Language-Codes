.data
	prompt: .asciiz "Hello.."
	userinput:  .space  20	#creating arrary (string of length of 20)
	
.text
	main:
		li $v0, 8
		#move $a0, $v0
		la $a0, userinput
		li $a1, 20
		syscall
	
		#li $v0, 4
		#la $a0, prompt
		#syscall
	
		li $v0, 4
		la $a0, userinput
		syscall
	
		li $v0, 10
		syscall
