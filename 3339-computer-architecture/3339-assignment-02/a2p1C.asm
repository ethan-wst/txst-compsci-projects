					.data
D:					.space 160
promptA:			.asciiz "Enter integer value for a: "
promptB:			.asciiz "Enter integer value for b: "
output:				.asciiz "D["
outputClose:		.asciiz "] = "


					.text
					.globl main
	
main:
					li $s0, 2
					li $s1, 2
				
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
					
					sll $t3, $t3, 2    		# Calculate 4(j+b*i)
					add $t4, $t0, $t1 		# Calculate i+j
					add $t3, $t3, $s2		# Address of D[j+b*i]
					sw $t4, ($t3)			# Store input at D[j+b*i]

					addi $t1, $t1, 1		# itterate j
					
FTest2:
					blt $t1, $s1, begF2		# if j < b, then continue loop
					addi $t0, $t0, 1		#itterate i
					
FTest1:				
					blt $t0, $s0, begF1		# if i < a, then continue loop
					
					
					
					li $t1, 0				# Set j = 0 for F3
					j FTest3
begF3:									
					mult $s1, $t1			# Calculate j+b*j
					mflo $t3
					add $t3, $t1, $t3  
					
					sll $t3, $t3, 2			# Calculate 4(j+b*j)
					add $t3, $t3, $s2		# Address of D[j+b*j]
					
					lw $t4, ($t3)			# Get value at D[j+b*j]
					
					addi $t1, $t1, 1		# itterate j
					
FTest3:				
					blt $t1, $s1, begF3 	# if j < b, then continue loop
					
					
					li $v0, 10				# graceful exit
					syscall
					
