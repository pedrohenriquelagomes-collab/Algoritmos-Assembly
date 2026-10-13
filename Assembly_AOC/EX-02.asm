.data
	compra01: .asciiz "Roupas pequenas R$10, Digite a quantidade: "
	compra02: .asciiz "Roupas media R$12, Digite a quantidade: "
	compra03: .asciiz "Roupas grandes R$15, Digite a quantidade: "
	resultado: .asciiz "Valor total: "
.text
main:
	li $t0, 10
	li $t1, 12
	li $t2, 15
	
	la $a0, compra01
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t3, $v0
	
	mul $t6, $t0, $t3
	
	la $a0, compra02
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t4, $v0
	
	mul $t7, $t1, $t4
	
	la $a0, compra03
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t5, $v0
	
	mul $t8, $t2, $t5
	
	add $t9, $t6, $t7
	add $t9, $t9, $t8
	
	la $a0, resultado
	li $v0, 4
	syscall
	
	move $a0, $t9
	li $v0, 1
	syscall
	
	
	
	
	
	