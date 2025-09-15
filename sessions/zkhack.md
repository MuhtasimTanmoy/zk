# ZK Hack

[ZK Whiteboard Sessions 1, 2, 3](https://www.youtube.com/playlist?list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)
- Snarks
    - Tax
    - Compliance
    - Rollup
- Arithmatic Circuit
- Argument System
- Circuit
- Rollups dont use ZK rather short time to verify
- Interactive
- Non Interactive
- Random secret not needed in transparent
- KGZ
    - Dory

[ZK Whiteboard Sessions](https://www.youtube.com/watch?v=h-94UhJLeck&list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)
- SNARK
    - A succint proof that something is true
    - Short and fast
    - Private transations on public blockchain
    - Compliance
- Arithmatic Circuits
- Argument System
    - Pre processing - Non interactive
    - S(C) - > sp, sv
    - P(sp, w, x) - > #
    - V(sv, x, proof) - > yes / no
- In many rollup system there is no need for zero knowledge, they use short and fast to verify property
- SNARK 
    - Succint Preprocessing Argument System
    - Complete
    - Fast to verify
- Trusted, transparent
- Groth16
- Plonk
- Lookup
    - Log derivative
    - Fractional sum
    - Original log up
    - Precomputation with CQ BIgtable
    - Avoid commitment with G KR  

![](./screen/zk.png)
- It's been used to compile {C, ZoKrates, Circom} to {SMT, ILP, R1CS, MPC}, AIR PIL PLONK CG

KGZ
- Fiat shamir to convert to non-interactive 

[ZK Whiteboard Sessions – Module Eleven: ZK Swaps with Henry de Valence](https://youtu.be/ziUZyQmHh4c?list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)
- Cross chain shielded DEX

[ZK Whiteboard Sessions - Module Five: PLONK and Custom Gates with Adrian Hamelink](https://www.youtube.com/watch?v=Uldlq35Se3k&list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq&index=6)
- Custom gates, recursion, hash, ec curve sigs, group ops

[ZK Whiteboard Sessions – Module Ten: zkEVM with Jordi Baylina](https://youtu.be/mrf9HjjL_38?list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)
- 
 
[ZK Whiteboard Sessions - Module Six: Lookup Tables for Performance Optimisation](https://youtu.be/1oLzrbTBlbc?list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)
- Binary decomposition
- Witness blowup
- Arithmatise a function


[ZK Whiteboard Sessions – Module Eight: Achieving Decentralised Private Computation](https://youtu.be/_oW29AOKWTs?list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)

[ZK Whiteboard Sessions – Module Fourteen: Nova Crash Course with Justin Drake](https://www.youtube.com/watch?v=SwonTtOQzAk&list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq&index=17)
- Comparison BLS aggregation, statement aggregation
- Proto VDF
- Nova - Pre processing gadget for snark
- Snark compress, but with folding we provide less compute to snark 
- Folding + Compression
- SNARK (prover friendly) + SNARK (verifier)
- Folding - No FFT, FFT memory hungry, Muli Exponentiation - Streamable - Better prover performance
- No FFT, No Pairing friendly 
- Base field, constraint system in scalar field
- Nova - No FFT only multi exponentiation
- Compressor for pederson bulletproof
- Randomness
- Secret leader election
- Registry
- Finality gadgets
- FRI in case of KGZ

[ZK Whiteboard Sessions – Module Fifteen: Inner Product Argument in Halo 2 with Ying Tong](https://www.youtube.com/watch?v=RaEs5mnXIhY&list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq&index=19)
- Recursive composition without trusted setup
- Arithmatisation : Process of taking an bunch of value and constraints, and encoding them as low degree polynomials - Plonk
- Multi point opening arguments
- Inner product argument = PCS
- Atomic Accumulation scheme

[ZK Whiteboard Sessions - Module Four: SNARKs vs STARKs with Bobbin Threadbare](https://youtu.be/qUrA97TG2YU)
- Arithmatic
    - R1CS
    - AIR
- Polynomial
    - KGZ - SNARK - EC Pairing - NON - Transparent
    - FRI - STARK - HASH
    - IPA - SNARK - EC - Transparent
- NTT
- Season 1 Episode 3
    - Zero Test
    - Sum Check 
    - Prod Check
    - After computation trace
        - P encodes the correct input
        - Every gate is evaluated correctly
        - The wiring is implemented correctly
        - The output of last gate is 0
    - Plonk is polynomial IOP
    - PCS can be replaced by any

[ZK Whiteboard Sessions – Module Thirteen: Fast Recursion with Plonky2](https://www.youtube.com/watch?v=-pucWUDn5Hw&list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)
- Plonky2
    - Plonk + Custom Gates - Turbo Plonk - IOP
        - Much more performant than R1CS
    - FRI PCS
- Fastest recursive proof 
- Fp Fq
- Non native arithmatic
- MNT curves
- IPA based PCS Bulletproof
    - Verification is linear
    - Halo uses accumulation scheme to make it logarithmic
- PCS based on EC
    - Discrete log
    - Pairing based
- FRI
    - Low degree test
    - Starkware
    - No non native origin
    - Use small field
- Groth16, KGZ - Pairing
- Goldilocks
    - Reduction
- STARK / AIR subset of PLONK
- Plonk has copy constriants
- AIR has adjacent
- Best way to write circuit in VM is not plonk but AIR
- Plonky2 is good for recursion


# Season 2 Study Club 

- https://docs.google.com/presentation/d/14Eo0I2udLqcYgIzY8w8-RtbyByu5RSsX8gHT8lcDJAs/edit#slide=id.g13ea2f20f32_0_0
- If transcript is generated by prover and verifier knows it it is not zk
- Transacript can be made by prover verifier interaction or simulatior, it is important to know which is which
- EdDSA is almost schnorr with H(message) as the challenge
- ROM - randomness that you can't control and is deterministic
- Polyno mial Decomposition

[ZK Whiteboard Sessions - S2M1: What is Zero-Knowledge (like, actually)? with David Wong](https://youtu.be/ksTTyt0GTvQ?list=PLzdJdAunCamkxvFeF6McbZGqqSEpWQZ0Q)
- Simulator (public params / statement)
- Prover (W, statement)
- Fiat shamir hash
- ZK
    - Perfect
    - Statistical
    - Computational
- hash is deterministic add randomness
- Pedereson commitmnent
- Roots of unity
- Vanishing polynomial / Quituont
- Plonk can use KGZ or Pederson

[ZK Whiteboard Sessions - S2M5: Small Fields, Binary Fields with Jim Posen](https://www.youtube.com/watch?v=821tPE2Ceps)
- 256 bit prime numbers
- Polynomial Identity Testing
- Field Multiplication
- Field multiplication 256 bits 60 million per second whereas with goldilocks 10020 mils/s
- Execution trace
- Steps
    - Commit
        - FFT - Superlinear
        - Lots of hashing
    - Zero Check Vanishing Polynomial
        - Quotient Computation
        - Random Test ing
    - FRI 
        - Linear
- Comitting
    - Error correcting code
    - FFT
    - Reed solomon code
    - Merkle
    - Interpolation and blowup
- `C ( F (x) ) = Q(x) G(x)`
- Error amplification
- Complex numbers are extension of real numbers
- Super linear sub linear
- Circle stark mersenne prime
- For baby bear mersenne quadratic extension  
- Roots of unity
- Smoothness
- Additive NTT - Number theoritic transform
- Irreducible ringswitch
- Binius

[Episode 289: Penumbra Catch Up with Finch, Erwan and Jen](https://zeroknowledge.fm/289-2)
- Jellyfish markle tree - Diem
- Good for content addressble merkle tree

[ZK Whiteboard Sessions - S2M6: An Update on Folding with Albert Garreta](https://youtu.be/4alOna5X3ro)
- Plookup

[ZK Whiteboard Sessions – Module Seven: Zero Knowledge Virtual Machines (zkVM) with grjte](https://youtu.be/GRFPGJW0hic?list=PLj80z0cJm8QErn3akRcqvxUsyXWC81OGq)
- Plookup
    - Stich together two separate execution trace
- Range checks specialized circuit
- Ingrediaents
    - Main CPU
    - RAM
    - Specilized CPU
- Connect all with lookup arguments
- OPTIMIZE WITH RECURSION