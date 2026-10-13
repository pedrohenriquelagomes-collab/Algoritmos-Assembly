.data
	horas_normal: .asciiz "Digite as horas trabalhadas: "
	horas_extra: .asciiz "Digite as horas extras: "
	desconto: .asciiz "Digite o valor do desconto: "
	salario_bruto: .asciiz "Salario bruto: "
	salario_liquido: .asciiz "\nSalario liquido: "
.text
main:
	
	li $t0, 10
	li $t1, 15
	
	la $a0, horas_normal
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	la $a0, horas_extra
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t3, $v0
	
	la $a0, desconto
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t4, $v0
	
	mul $t5, $t2, $t0
	mul $t6, $t3, $t1
	
	add $t7, $t5, $t6
	sub $t8, $t7, $t4
	
	la $a0, salario_bruto
	li $v0, 4
	syscall
	
	move $a0, $t7
	li $v0, 1
	syscall
	
	la $a0, salario_liquido
	li $v0, 4
	syscall
	
	move $a0, $t8
	li $v0, 1
	syscall
	
	
	