					.data
prompt:				.asciiz "Enter an integer: "
output:				.asciiz "fib("
outputClose:		.asciiz ") = "
					.text
					.globl main
					
main:
					li $v0, 4				# Prompt user
					la $a0, prompt
					syscall	
					li $v0, 5				# Get input
					syscall
					move $a0, $v0
					move $s2, $v0
					
					jal fib
					move $a1, $v0
					
					li $v0, 4
					la $a0, output
					syscall
					
					li $v0, 1
					la $a0, ($s2)
					syscall
					
					li $v0, 4
					la $a0, outputClose
					syscall
					
					li $v0, 1
					la $a0, ($a1)
					syscall

					li $v0, 10				# graceful exit
					syscall

										
fib:
					addi $sp, $sp, -12
					sw $ra, 8($sp)
					sw $s1, 4($sp)
					sw $s0, 0($sp)
					move $s0, $a0
					
					
if:					li $v0, 0
					beqz $a0, exit
					
elseif:				li $v0, 1
					beq $a0, 1, exit						

else:				addi $a0, $s0, -1
					jal fib
					move $s1, $v0
					addi $a0, $s0, -2
					jal fib
					add $v0, $s1, $v0
exit:					
					lw $s0, 0($sp)
					lw $s1, 4($sp)
					lw $ra, 8($sp)
					addi $sp, $sp, 12
					jr $ra
					



					
