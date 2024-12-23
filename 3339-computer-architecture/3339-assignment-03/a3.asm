				.data
inputPrompt:	.asciiz "Enter x value:"
outputPrompt:	.asciiz "sin("
closePrompt:	.asciiz "): "
fact3:			.double 6
fact5:			.double 120
				.text
				.globl main
				
main:			li $v0, 4
				la $a0, inputPrompt		#Print prompt
				syscall
				li $v0, 7				#Get input
				syscall
				mov.d $f8, $f0			#Save original input
				
				mul.d $f2, $f0, $f0		#Set $f2 to x^2
				mul.d $f2, $f2, $f0		#Set $f2 to x^3
				
				li $t0, 0				#Set i = 0
				mov.d $f4, $f0			#Set $f4 to x
				j FTest
				
				
F:				mul.d $f4, $f4, $f0		#Itterate x until x^5
				addi $t0, $t0, 1		#Itterate i
				
FTest:			blt $t0, 4, F			#Branch if i >= 4
				
				l.d $f6, fact3			#Get x^3/3!
				div.d $f2, $f2, $f6
				
				l.d $f6, fact5			#Get x^5/5!
				div.d $f4, $f4, $f6
				
				sub.d $f0, $f0, $f2		#Get x - x^3/3!
				add.d $f0, $f0, $f4		#Get x - x^3/3! + x^5/5!
				
				li $v0, 4				#Print sin(
				la $a0, outputPrompt
				syscall
				mov.d $f12, $f8			#Print x
				li $v0, 3
				syscall
				li $v0, 4				#Print ):
				la $a0, closePrompt
				syscall
				
				mov.d $f12, $f0			#Print x - x^3/3! + x^5/5!
				li $v0, 3
				syscall
				
				li $v0, 10				#Graceful exit
				syscall
