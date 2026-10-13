.data
	cateto01: .asciiz "Digite o valor do primerio cateto: "
	cateto02: .asciiz "Digite o valor do segundo catetos: "
	hipotenusa: .asciiz "Hipotenusa:"
.text
main:
	
	la $a0, cateto01
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	la $a0, cateto02
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	mul $t2, $t0, $t0
	mul $t3, $t1, $t1
	add $t4, $t2, $t3
	mtc1 $t4, $f0 #o valor de t4 para f0
	cvt.s.w $f1, $f0 #converte o f0 para float e guarda em f1
	sqrt.s $f3, $f1 #faz a raiz quadrada do f1 e guarda no f3
	
	la $a0, hipotenusa
	li $v0, 4
	syscall
	
	mov.s $f12, $f3
	li $v0, 2
	syscall
	
	
	
	
	

	