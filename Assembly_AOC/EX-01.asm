.data
	altura: .asciiz "Digite a altura: "
	comprimento: .asciiz "Digite o comprimento: "
	area: .asciiz "Area: "
.text
main:
	la $a0, altura
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	la $a0, comprimento
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	mul $t2, $t0, $t1
	
	la $a0, area
	li $v0, 4
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall

	
	
