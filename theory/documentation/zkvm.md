# ZK-VM
ZK-VM stands for Zero-Knowledge Virtual Machine. It proves that the program was executed correctly.

Steps for generating proof in ZK-VM
- The program is usually written in user-friendly languages like Solidity, Rust, Noir, etc.
- To prove the program, it should be compiled to bytecode.
- The compiler converts the source code (i.e., written by the developer) to bytecode.
- Bytecode looks more cryptic than high-level languages.
- When the bytecode is compiled, it is executed inside of the VM. That is, the VM takes a list of instructions and executes them one by one. A result of this execution is called “execution trace.”
- The execution trace contains a list of opcodes that were executed for a specific invocation of a program.
- Prover takes the execution trace and checks that the bytecode (of a certain instruction set) was executed correctly.
- The proof input contains program inputs and outputs. So the prover can put these specific inputs in the provided constraints and check that they result in specific outputs.
- Verifier is an algorithm that verifies the proof. eg. smart contract