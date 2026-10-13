.data
	base_maior: .asciiz "Digite o vvalor da base maior: "
	base_menor: .asciiz "Digite o valor da base menor: "
	altura: .asciiz "Digite o valor da altura: "
	area: .asciiz "Area do trapezio: "
.text
main:
	la $a0, base_maior
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	la $a0, base_menor
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	la $a0, altura
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	add $t3, $t0, $t1
	mul $t4, $t3, $t2
	
	li $t5, 2
	div $t4, $t5
	mflo $t6
	
	la $a0, area
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	
		