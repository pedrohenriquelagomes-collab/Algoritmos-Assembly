.data
	numero: .asciiz "Digite seu numero"
	numero_negativo: .asciiz "Valor digitado é negativo"
	resultado_negativo: .asciiz "Valor multiplacado por 3. Resultado: "
	numero_positivo: .asciiz "Valor digitado é positivo"
	resultado_positivo: .asciiz "Valor multiplacado por 2. Resultado: "
	
.text
main:
	li $t0, 2
	li $t1, 3
	
	la $a0,numero
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	bltz $t2, negativo
	
	la $a0, numero_positivo
	li $v0, 4
	syscall
	
	la $a0, resultado_positivo
	li $v0, 4
	syscall
	
	mul $t5, $t2, $t0
	
	move $a0, $t5
	li $v0, 1
	syscall
	j fim
			
negativo:
	mul $t4, $t2, $t1
	
	la $a0, numero_negativo
	li $v0, 4
	syscall
	
	la $a0, resultado_negativo
	li $v0, 4
	syscall
	
	move $a0, $t4
	li $v0, 1
	syscall

fim:
	li $v0, 10
	syscall	