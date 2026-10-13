.data
	numero01: .asciiz "Digite o primeiro valor: "
	numero02: .asciiz "Digite o segundo valor: "
	resultado: .asciiz "Resto da divisão: "
.text
main:
	la $a0, numero01
	li $v0, 4
	syscall
	#valor do primeiro numero T0
	li $v0, 5
	syscall
	move $t0, $v0
	
	la $a0, numero02
	li $v0, 4
	syscall
	#valor do segundo numero T1
	li $v0, 5
	syscall
	move $t1, $v0
	
	blt $t0, $t1, menor
	j calcular

menor:
	move $t2, $t0
	move $t0, $t1
	move $t1, $t2

calcular:
	div $t0, $t1
	mflo $t3
	mul $t4, $t3, $t1
	sub $t5, $t0, $t4
	
	la $a0, resultado
	li $v0, 4
	syscall
	
	move $a0, $t5
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
