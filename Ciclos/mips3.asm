# L� um n�mero introduzido pelo utilizador e apresenta-o em bin�rio.
# EM CONSTRU��O

.data
	entrada: .asciiz "Introduza um n�mero: "
	saida: .asciiz "\n O valor do n�mero em bin�rio � "
	zero: .asciiz "0"
	um: .asciiz "1"
.text
.globl main
main:
	li $v0, 4
	la $a0, entrada
	syscall
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 4
	la $a0, saida
	syscall
	
	li $t1, 0
	li $t4, 0x80000000
	for:
		bgt $t1, 31, fim
			and $t2, $t0, $t4
			beqz $t2, igual
			bnez $t2, diferente
		
		igual:
			li $v0, 4
			la $a0, zero
			syscall
			b enf_if
		
		diferente:
			li $v0, 4
			la $a0, um
			syscall
		
		
	