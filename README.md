# nand2tetris-hack-computer
# Computer Fundamentals: Building a Computer from Scratch

A comprehensive coursework project that builds a complete computer system from first principles, starting with basic logic gates and culminating in a fully functional CPU with assembly programs.

## Project Overview

This project demonstrates the fundamental concepts of computer architecture through three progressive parts:
- **Part 1:** Elementary Logic Gates - Building basic digital logic components
- **Part 2:** Combinatorial & Sequential Circuits - Creating an Arithmetic Logic Unit (ALU)
- **Part 3:** The Hack Computer - Implementing a complete CPU, memory system, and assembly programs

Inspired by the Nand2Tetris course, this project provides hands-on experience with hardware description languages (HDL) and low-level computer architecture.

## Project Structure

```
.
├── Part 1/                          # Elementary Logic Gates
│   ├── Tessa.hdl                   # Simple logic chip (F = AB)
│   ├── Tessa.tst                   # Test script
│   ├── Tessa.cmp                   # Expected output
│   └── Truth table and simplification.pdf
│
├── Part 2/                          # Combinatorial & Sequential Circuits
│   ├── MyALU.hdl                   # Custom 16-bit ALU implementation
│   ├── MyALU.tst                   # Test script
│   ├── MyALU.cmp                   # Expected output
│   └── Xor16.hdl                   # 16-bit XOR gate
│
└── Part 3/                          # The Hack Computer
    ├── 3.1_Assembly/               # Assembly language programs
    │   ├── Factorial.asm           # Calculates n!
    │   ├── Power.asm               # Power calculation
    │   └── *.tst, *.cmp           # Test files
    │
    ├── 3.2_HACK/                   # CPU & Computer Implementation
    │   ├── CPU.hdl                 # Complete CPU design
    │   ├── Memory.hdl              # Memory system
    │   ├── Computer.hdl            # Full computer integration
    │   ├── *.hack                  # Machine code programs
    │   └── *.tst, *.cmp, *.out    # Test files and outputs
    │
    └── 3.3_Circuitry Design and Justification/
        ├── Circuit Diagram.pdf     # Hardware design diagrams
        └── Justification.pdf       # Design decisions documentation
```

## Part 1: Elementary Logic Gates

**Objective:** Build fundamental digital logic components using boolean algebra.

The `Tessa` chip outputs 1 only when both inputs A and B are 1, implementing the boolean function:
```
F = AB
```

Includes complete truth table analysis and boolean algebra simplification steps:
- Created truth tables for multi-input logic functions
- Applied boolean algebra laws to simplify expressions
- Implemented optimized circuit using basic gates

## Part 2: Combinatorial & Sequential Circuits

**Objective:** Design and implement a custom 16-bit Arithmetic Logic Unit using combinatorial logic.

### Features
The `MyALU` supports 18+ operations controlled by 5 control bits (C0-C4):

**Arithmetic Operations:**
- Addition: `x + y`
- Subtraction: `x - y`, `y - x`
- Increment: `x + 1`, `y + 1`
- Decrement: `x - 1`, `y - 1`

**Logical Operations:**
- AND: `x AND y`
- OR: `x OR y`
- XOR: `x XOR y`

**Unary Operations:**
- Constants: `0`, `1`, `-1`
- Pass-through: `x`, `y`
- Negation: `-x`, `-y`
- Bitwise NOT: `!x`, `!y`

**Status Flags:**
- `zr`: Set to 1 if output is zero
- `ng`: Set to 1 if output is negative (MSB = 1)

### Implementation Details
The ALU uses multiplexers to select between pre-computed operations based on control bits, achieving efficient operation selection without complex conditional logic. This design demonstrates:
- **Combinatorial circuits:** Operations computed in parallel without state
- **Efficient multiplexing:** Using Mux8Way16 and Mux4Way16 for operation selection
- **Status flag generation:** Zero and negative flags computed from output bits

## Part 3: The Hack Computer

**Objective:** Build a complete computer system capable of executing machine code programs.

### 3.1 Assembly Programming (HACK Assembly)

Two programs written in HACK assembly language:

#### **Factorial.asm**
Calculates the factorial of a number:
- Input: `RAM[0]` contains n
- Output: `RAM[1]` contains n!
- Handles edge case: 0! = 1

#### **Power.asm**
Performs power calculations using the HACK instruction set.

### 3.2 CPU & Computer Hardware

Complete implementation of the HACK computer architecture:

**CPU.hdl** - Features:
- Instruction decoding
- ALU integration
- Program counter logic
- Memory addressing

**Memory.hdl** - Unified memory system:
- RAM
- Screen memory map
- Keyboard memory map

**Computer.hdl** - Full integration:
- CPU + Memory + ROM
- Executes machine code programs
- Tested with Add, Max, and Rect programs

### 3.3 Design

<img width="1653" height="861" alt="image" src="https://github.com/user-attachments/assets/6974f989-f494-4004-9b0e-239f8fbf28fa" />


## Technologies & Tools

- **Hardware Description Language (HDL)**: Custom HDL for hardware simulation
- **HACK Assembly**: Simple assembly language for the HACK architecture
- **Hardware Simulator**: Used for testing and verification

## Testing

All components include comprehensive test files:
- `.tst` files: Test scripts that specify inputs and expected outputs
- `.cmp` files: Expected comparison outputs
- `.out` files: Actual outputs from test runs

Run tests using the Hardware Simulator to verify correct implementation.

## Key Learning Outcomes

This project demonstrates understanding of:
- Boolean algebra and logic minimization
- Digital circuit design using HDL
- Computer arithmetic and ALU architecture
- CPU design and instruction execution
- Memory organization and addressing
- Assembly language programming
- Hardware-software interface

## Running the Project

1. Download the [Nand2Tetris Hardware Simulator](https://www.nand2tetris.org/software)
2. Load `.hdl` files in the Hardware Simulator
3. Run corresponding `.tst` test files
4. Compare `.out` outputs with `.cmp` expected results

For assembly programs:
1. Use the Nand2Tetris Assembler to convert `.asm` to `.hack`
2. Load machine code in the CPU Emulator
3. Execute and verify results
