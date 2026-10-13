.data
	numero: .asciiz "Digite o seu numero: "
	numero_par: .asciiz "O numero é par"
	resultado_par: .asciiz "\nFoi somado 5 ao numero. Resultado: "
	numero_impar: .asciiz "O numero é impar "
	resultado_impar: .asciiz "\nFoi somado 8 ao numero. Resultado: "
.text
main:
	li $t0, 0
	li $t1, 2
	li $t2, 5
	li $t3, 8
	
	la $a0, numero
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t4, $v0
	
	rem $t5, $t4, $t1
	beq $t5, $t0, par
	
	la $a0, numero_impar
	li $v0, 4
	syscall
	
	la $a0, resultado_impar
	li $v0, 4
	syscall
	
	add $t7, $t4, $t3
	
	move $a0, $t7
	li $v0, 1
	syscall
	j fim
	
par:
	add $t6, $t4, $t2
	
	la $a0, numero_par
	li $v0, 4
	syscall
	
	la $a0, resultado_par
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
fim:
	li $v0, 10
	syscall
	
	
	
	