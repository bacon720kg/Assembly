# Escreva um programa que leia 3 n�meros inteiros do utilizador, garantindo que todos eles s�o positivos e diferentes entre si. Se o utilizador tentar introduzir um valor igual a um valor j� introduzido, o programa dever� repetir o pedido de introdu��o do valor.

.data
	barra: .asciiz "\n****************************************************************"
	intro: .asciiz "\n Introduza 3 n�meros inteiros, positivos e diferentes entre si."
	entrada: .asciiz "\n Introduza um dos n�meros: "
	

.text
.globl main
main:
	li $v0, 4
	la $a0, barra
	syscall
	li $v0, 4
	la $a0, intro
	syscall
	li $v0, 4
	la $a0, barra
	syscall
	
	li $t0, 1
	
	loop:
		li $v0, 4
		la $a0, entrada
		syscall

		li $v0, 5
		syscall
		move $t1, $v0
		
		add $t0, $t0, 1
		ble $t0, 3, loop
	
	li $v0, 10
	syscall