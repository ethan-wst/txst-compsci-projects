##########################################################################
# Ethan West, CS 2318-253, Assignment 2 Part 1 Program B
#
# This program is designed to check if the bits at the 16 & 256 place value
# positiona of a number are both 1. 
# It is to print a 0 if the 2 bits are both 1 & to print a 1 if at least 1
# of the 2 bits is 0.
############################ data segment ################################
		.data
legend:		.asciiz "0 = both 1, 1 = at least a 0\n"
inPrompt:	.asciiz "Enter an integer: "
outLab:		.asciiz "Integer entered is of type "
############################ code segment ################################
		.text
		.globl main
main:
		li $v0, 4
		la $a0, legend        
		syscall			# print legend
		la $a0, inPrompt        
		syscall			# print input prompt
		li $v0, 5
		syscall			# read integer input
		move $t0, $v0

		
		
		
		li $v0, 4
		la $a0, outLab
		syscall			# output label	
		li $v0, 1
		
		##########################################################
		# Insert NO MORE THAN 6 lines of code that involve ONLY 
		#   bit manipulating instructions (ANDing, ORing, XORing,
		#   NORing and shifting - only whatever that are needed)
		# so that the program will work just like the sample runs 
		# shown at the bottom (some blank lines edited out).
		# HINT: Risking telling the obvious, the instructions you
		#       insert are related to making the value in $a0 to
		#       the desired value (which should be either 0 or 1
		#       when printed as an integer).
		# You should test your completed program for AT LEAST the
		# test cases shown.
		##########################################################
		
		
		andi $t1, $t0, 0x10
		srl $t1, $t1, 4
		andi $t2, $t0, 0x100
		srl $t2, $t2, 8
		and $t0, $t1, $t2
		xori $a0, $t0, 0x1
		
		
		syscall			# display desired output
		
		##########################################################
		
		li $v0, 10		# exit gracefully
		syscall

########################## sample test runs ##############################
# 0 = both 1, 1 = at least a 0
# Enter an integer: 16
# Integer entered is of type 1
# -- program is finished running --
# 
# Reset: reset completed.
# 0 = both 1, 1 = at least a 0
# Enter an integer: 256
# Integer entered is of type 1
# -- program is finished running --
# 
# Reset: reset completed.
# 0 = both 1, 1 = at least a 0
# Enter an integer: 272
# Integer entered is of type 0
# -- program is finished running --
# 
# Reset: reset completed.
# 0 = both 1, 1 = at least a 0
# Enter an integer: 12345678
# Integer entered is of type 1
# -- program is finished running --
# 
# Reset: reset completed.
# 0 = both 1, 1 = at least a 0
# Enter an integer: 87654321
# Integer entered is of type 0
# -- program is finished running --
######################## end sample test runs ############################
