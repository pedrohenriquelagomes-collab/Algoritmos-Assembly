.data
	numero: .asciiz "Digite os numeros: "
	msg01: .asciiz "\nQuantidade de 0 a 25: "
	msg02: .asciiz "\nQuantidade de 26 a 50: "
	msg03: .asciiz "\nQuantidade de 51 a 75: "
	msg04: .asciiz "\nQuantidade de 76 a 100: "
	msg_invalido: .asciiz "\nNumero invalido! Digite de 0 a 100.\n"
.text
main:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0

ler_numero:
	
	la $a0, numero
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t4, $v0
	
	bltz $t4, fim
	bgt $t4, 100, invalido
	ble $t4, 25, intervalo01
	ble $t4, 50, intervalo02
	ble $t4, 75, intervalo03
	ble $t4, 100, intervalo04
	j ler_numero

intervalo01:
	addi $t0, $t0, 1
	j ler_numero
	
intervalo02:
	addi $t1, $t1, 1
	j ler_numero
	
intervalo03:
	addi $t2, $t2, 1
	j ler_numero
	
intervalo04:
	addi $t3, $t3, 1
	j ler_numero
	
invalido:
	la $a0, msg_invalido
    	li $v0, 4
    	syscall
    	j ler_numero
	
fim: 
	la $a0, msg01
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall
	
	la $a0, msg02
	li $v0, 4
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	la $a0, msg03
	li $v0, 4
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	la $a0, msg04
	li $v0, 4
	syscall
	
	move $a0, $t3
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall