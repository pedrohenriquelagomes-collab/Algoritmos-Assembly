.data
	altura: .asciiz "Digite a altura em cm: "
	maior: .asciiz "Maior altura: "
	menor: .asciiz "\nMenor altura: "

.text
main:
	la $a0, altura
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	#maior $t1
	move $t1, $t0
	#menor $t2
	move $t2, $t0
	
	li $t3, 1
	
ler_altura:
	beq $t3, 15, fim
	la $a0, altura
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	
	bgt $t0, $t1, nova_maior
	blt $t0, $t2, nova_menor
	j proxima
	
nova_maior:
	move $t1, $t0
	addi $t3,$t3, 1
	j ler_altura
	
nova_menor:
	move $t2, $t0
	addi $t3, $t3, 1
	j ler_altura
	
proxima:
	addi $t3, $t3, 1
	j ler_altura
	
fim:
	
	la $a0, maior
	li $v0, 4
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	la $a0, menor
	li $v0, 4
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	