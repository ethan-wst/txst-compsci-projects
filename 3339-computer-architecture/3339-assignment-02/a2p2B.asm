					.data

					.text
					.globl main
					
main:
					li $a0, 3				# initialize n 
					jal fib					# call function
					move $a1, $v0

					li $v0, 10				# graceful exit
					syscall

										
fib:
					addi $sp, $sp, -12		# adjust stack for 3 items
					sw $ra, 8($sp)			# save return address
					sw $s0 4($sp)			# save value in $s0
					sw $s1, 0($sp)			# save value in $s1
					move $s0, $a0			# move $a0 into $s0
					
					
if:					li $v0, 0				# if n == 0, return 0 and exit
					beqz $a0, exit
					
elseif:				li $v0, 1				# if n == 1, return 1 and exit
					beq $a0, 1, exit						

else:				addi $a0, $s0, -1		# set n = n - 1 
					jal fib					# call fib (n - 1)
					move $s1, $v0 			# store result in $s1
					addi $a0, $s0, -2		# set n = n - 2
					jal fib					# call fib (n - 2)
					add $v0, $s1, $v0		# fib(n-1) + fib(n-2)
exit:					
					lw $s1, 0($sp)			# restore original $s1
					lw $s0, 4($sp)			# restore original $s0
					lw $ra, 8($sp)			# restore original $ra
					addi $sp, $sp, 12		# pop 3 items from stack
					jr $ra					# return
					



					
