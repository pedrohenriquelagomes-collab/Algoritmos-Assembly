.data
	numero01: .asciiz "Digite o primeiro numero: "
	numero02: .asciiz "Digite o segundo numero: "
	resultado_divisao: .asciiz "Resultado da divisão: "
.text
main:
	la $a0, numero01
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
repetir:

	la $a0, numero02
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	beq $t1, $zero, repetir
	
	mtc1 $t0, $f0
	cvt.s.w $f0, $f0
	
	mtc1 $t1, $f1
	cvt.s.w $f1, $f1

	div.s $f4, $f0, $f1
	
	
	la $a0, resultado_divisao
	li $v0, 4
	syscall
	
	mov.s $f12, $f4
	li $v0, 2
	syscall
	
	li $v0, 10
	syscall
	

	
