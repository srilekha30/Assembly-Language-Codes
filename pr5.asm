.data
	a:	.double 3.14
	b:	.double 0.0
.text
	ldc1 $f2, a
	ldc1 $f0, b
	
	li    $v0, 3
	add.d $f12,$f2,$f0
	syscall