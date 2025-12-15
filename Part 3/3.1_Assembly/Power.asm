
// ================================= POWER ==================================
// This program calculates the Exponential Power of a given number n 
// At run time:
//	- The user should enter the value of base (n), i.e., RAM[0]
//	- The user should enter the value of power (e), i.e., RAM[1]
//	- The program then calculate the e power of n, i.e., P(n,e).
//		 For Example. If n = 2 and e = 5 than P(n,e) would be = 2*2*2*2*2 = 32
//	- The result P(n,e) should be saved in RAM[2]
// SPECIAL CASE:
// If exponent power is ZERO, 
// your program should store the ONE as answer in RAM[2] without doing any processing and end the program.
// and ends the program. 
// ==============================================================================

// put your code here

@R3
M=1

@R0
D=M
@temp
M=D

@R1
D=M
@ELSE
D,JEQ

(POWER_LOOP)
	@R4
	M=0

	@R3
	D=M
	
	@R1
	D=D-M
	
	@POWER_END
	D;JEQ

	@tempsum
	M=0

	@R3
	M=M+1
	
	(MUTI_LOOP)
		@R4
		D=M
	
		@R0
		D=D-M
	
		@MUTI_end
		D;JEQ
	
		@temp
		D=M
	
		@tempsum
		M=D+M
		
		@R4
		M=M+1

		@MUTI_LOOP
		0;JMP
	(MUTI_end)
	
	@tempsum
	D=M
	
	@temp
	M=D
	
	@POWER_LOOP
	0;JMP

(POWER_END)	

@temp
D=M
@R2
M=D

@tempsum
M=0
@temp
M=0
@R3
M=0

@END
0;JMP

(ELSE)
	@R2
	M=1
	@R3
	M=0

(END)
@END
0;JMP
