# Ethan West, CS 2315-00253, Assignment 2 Part 1 Program A

			.data
sectionPrmpt:		.asciiz "Your section (253 or 254):"
sectionOut:		.asciiz "Hey pal of CS2318."
springFav:		.space 35
springPrmpt:		.asciiz "Spring Break fav (up to 34 characters):"
springOut:		.asciiz "Vamos a "
shoutPrmpt:		.asciiz "One-character shout-out: "
shoutOut:		.asciiz "Meow! "

			.text
			.globl main
main:
			li $v0, 4			#address of null-terminated string
			la $a0, sectionPrmpt		#load sectionPrmpt arguement into register
			syscall				#output sectionPrmpt
			li $v0,5			#integer read
			syscall
			move $t0, $v0			#move section to temp storage

			li $v0,4			#address of null-terminated string
			la $a0, sectionOut		#load sectionOut arguement into register
			syscall				#output sectionOut
			li $v0,1			#integer value to print
			move $a0, $t0			#retrieve section from temp storage
			syscall				#print sectionOut + section
			
			li $v0, 11	#new line
			li $a0, '\n'
			syscall
			li $v0, 11	#new line
			li $a0, '\n'
			syscall
			
			li $v0, 4
			la $a0, springPrmpt
			syscall
			li $v0, 8
			la $a0, springFav
			li $a1, 35
			syscall
			
			li $v0,4
			la $a0, springOut
			syscall
			la $a0, springFav
			syscall
			
			
			li $v0, 11	#new line
			li $a0, '\n'
			syscall
			
			li $v0, 4
			la $a0, shoutPrmpt
			syscall
			li $v0,12
			syscall
			move $t0, $v0

			li $v0,11
			li $a0, '\n'
			syscall
			
			li $v0,4
			la $a0, shoutOut
			syscall
			li $v0,11
			move $a0, $t0
			syscall
			
			li $v0, 10
			syscall
			
			
