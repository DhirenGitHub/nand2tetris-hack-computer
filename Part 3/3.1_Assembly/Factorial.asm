
// ================================= Factorial ==================================
// This program calculates the Factorial F of a given number n 
// At run time:
//	- The user should enter the value of n into R0., i.e., RAM[0]
//	- The program then calculate the factorial of n, i.e., F(n)=n!
//		F(n) = n*(n-1)*(n-2)*......*2*1
//	- The result F(n) should be saved in RAM[1]
//	- You should also consider the F(0) case.
// ==============================================================================


@R1
M=1
@R0
D=M

@END
D;JEQ

@R2
M=0

@R0
D=M

@R1
M=D

D=D-1

@R5
M=D

@R3
M=D

(LOOP)
    @R1
    D=M

    @R2
    M=M+D

    @R3
    M=M-1
    D=M

    @LOOP
    D;JGT

    @R2
    D=M

    @R1
    M=D

    @R2
    M=0

    @R5
    M=M-1
    D=M

    @R3
    M=D

@LOOP
D;JGT

(END)

@END
0;JMP

