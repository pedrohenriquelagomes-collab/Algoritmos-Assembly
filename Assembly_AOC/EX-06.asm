.data
	A: .asciiz "Digite o valor de A: "
	B: .asciiz "Digite o valor de B: "
	msgC: .asciiz "Valor:"
	C: .word 0
.text
main:
	la $a0, A
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	la $a0, B
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	beq $t0, $t1, iguais
	
	mul $t2, $t0, $t1
	sw $t2, C
	
	la $a0, msgC
	li $v0, 4
	syscall
	
	lw $a0, C
	li $v0, 1
	syscall
	j fim
	
iguais:
	add $t2, $t0, $t1
	sw $t2, C
	
	la $a0, msgC
	li $v0, 4
	syscall
	
	lw $a0, C
	li $v0, 1
	syscall

fim:
	li $v0, 10
	syscall
	