.data

    #n: .word 100

    .text

    main:

    #la $t0, n   
#lw $t1, 0(t0)
	  
    li $v0, 5
    syscall
    move $t1, $v0
    li $s0, 0

    Loop:
       ble $t1, $zero, exit
       addi $t1, $t1, -1
       li $v0, 5
       syscall
       move $t0, $v0
       
       add $s0, $s0, $t0
      

       j Loop

    exit:
    move $a0, $s0
    li $v0, 1
    syscall
    
    li $v0, 10
    syscall