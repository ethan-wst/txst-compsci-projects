###############################################################################
# Ethan West, CS 2318-253, Assignment 1 Part 1 Program D		      #
###############################################################################
# MIPS assembly program that lets user calculate weighted average score as 
# follows:
#  - Prompt the user to enter the integer scores for Exam 1, Exam 2 and 
#    Final Exam, read the scores, compute the weighted average score (using 
#    the following formula), and display a labeled output about the weighted
#    average score.
#
#  - Formula for computing weighted average score: 
#     avgScore = (512/2222)e1Score + (555/2048)e2Score + (finScore/2)
# 
# IMPORTANT (for the purpose of this exercise, be sure to observe the following):
#  - You MUST perform (in the appropriate order, of course) ALL the 
#    additions, multiplications and divisions shown in the given formula. 
#    (You should NOT resort to simplifying the formula in some way, perhaps 
#    to make the computation more efficient.)
#  - You MUST use bit-shifting to effect multiplications and divisions 
#    involving powers of 2.
#    - Note that 2, 512 and 2048 correspond to some powers of 2 (but not 
#      555 and 2222).
#    - You are NOT to replace 555 and 2222 (that are not powers of 2) with 
#      their "sum-of-powers-of-2" equivalents.
#
#  - When evaluating the first and second terms on the right hand side 
#    (i.e., the Exam 1 and Exam 2 contributions, respectively), assume it is 
#    the intent to simply discard the fractional portion when a division is 
#    performed.
#
#  - However, you MUST perform (in each case) the division after (NOT before) the 
#    multiplication (otherwise, accuracy may be unnecessarily lost).
#
#  - For any multiplication and division operation that cannot be effected with 
#    simple (one-time) bit-shifting, you MUST use another "true" instruction (NOT
#    a pseudoinstruction) instead.
#
#  - Note that (for multiplication) mulo Rdest, Rsrc1, Rsrc2 and mulou Rdest, 
#    Rsrc1, Rsrc2 are pseudoinstructions (and should not be used here).
#
#  - Note that (for division) div Rdest, Rsrc1, Rsrc2 and divu Rdest, Rsrc1, 
#    Rsrc2 are pseudoinstructions (and should not be used here).

#  - CAUTION: Too many past students regretted having points taken off for 
#    not labeling output.
############################## data segment ###################################
			.data
examOnePrompt:		.asciiz "Enter an integer value for exam one score: "
examTwoPrompt:		.asciiz "Enter an integer value for exam two score: "
examFinalPrompt:	.asciiz "Enter an integer value for final exam score: "
averageOutput:		.asciiz "Your wieghted average is: " 
			.text
			.globl main
main:
			#BEGIN_(exam score intake)
			li $v0, 4			#Intake and store first exam score
			la $a0, examOnePrompt
			syscall
			li $v0, 5
			syscall
			move $t0, $v0
			
			li $v0, 4			#Intake and store second exam score
			la $a0, examTwoPrompt
			syscall
			li $v0, 5
			syscall
			move $t1, $v0
			
			li $v0, 4			#Intake and store final exam score
			la $a0, examFinalPrompt
			syscall
			li $v0, 5
			syscall
			move $t2, $v0
			#END_(exam score intake)
			
			#BEGIN_(calculating exam 1 contribution)
			sll $t0, $t0, 9
			li $t3, 2222
			div $t0, $t3
			mflo $t0
			#END_(calculation exam 1 contribution)
			
			#BEGIN_(calculating exam 2 contribution)
			li $t3, 555
			mult $t1, $t3
			mflo $t1
			srl $t1, $t1, 11
			#END__(calculating exam 2 contribution)
			
			#BEGIN_(calculating final exam contribution)
			srl $t2, $t2, 1
			#END_(calculating final exam contribution)
		
			#BEGIN_(final addition of all contributions)
			add $t0, $t0, $t1
			add $t0, $t0, $t2
			#END_(final addition of all contributions)	
			
			#BEGIN_(output final average)
			li $v0, 4			
			la $a0, averageOutput
			syscall
			li $v0, 1
			move $a0, $t0
			syscall
			#END_(output final average)
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			li $v0, 10		# graceful exit
			syscall
