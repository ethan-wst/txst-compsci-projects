					.data
D:					.space 160
promptA:			.asciiz "Enter integer value for a: "
promptB:			.asciiz "Enter integer value for b: "
output:				.asciiz "D["
outputClose:		.asciiz "] = "


					.text
					.globl main
	
main:
					li $v0, 4				# Initialize a with user input
					la $a0, promptA
					syscall
					li $v0, 5
					syscall
					move $s0, $v0		
					li $v0, 4				# Initialize b with user input
					la $a0, promptB
					syscall
					li $v0, 5
					syscall
					move $s1, $v0		
					li $v0, 11				# new line
					li $a0, '\n'
					syscall
				
					la $s2, D				# Initialize array D at $s2
					
					li $t0, 0				# Set i = 0 for F1
					j FTest1				
begF1: 
					li $t1, 0				# Set j = 0 for F2
					j FTest2
begF2:				
					
					mult $s1, $t0			# Calculate j+b*i	
					mflo $t3
					add $t3, $t1, $t3  
					
					li $v0, 4				# Print output
					la $a0, output
					syscall					
					li $v0, 1				# Print j+b*i
					la $a0, ($t3)
					syscall
					li $v0, 4				# Print outputClose
					la $a0, outputClose
					syscall
					
					sll $t3, $t3, 2    		# Calculate 4(j+b*i)
					add $t4, $t0, $t1 		# Calculate i+j
					
					li $v0, 1				# Print i+j
					la $a0, ($t4)
					syscall
					li $v0, 11				# new line
					li $a0, '\n'
					syscall
					
					add $t3, $t3, $s2		# Address of D[j+b*i]
					sw $t4, ($t3)			# Store input at D[j+b*i]

					addi $t1, $t1, 1		# itterate j
					
FTest2:
					blt $t1, $s1, begF2		# if j < b, then continue loop
					addi $t0, $t0, 1		#itterate i
					
FTest1:				
					blt $t0, $s0, begF1		# if i < a, then continue loop
					
					li $v0, 10				# graceful exit
					syscall
					
