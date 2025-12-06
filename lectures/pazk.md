# Proofs, Arguments, and Zero-Knowledge (ZK)

A curated collection of resources, study groups, protocols, and implementations for **interactive proofs, zero-knowledge arguments, and verifiable computing**.


## Table of Contents

1. [Books &amp; References](#books--references)
2. [Study Groups &amp; Videos](#study-groups--videos)
3. [Key Concepts](#key-concepts)

- [Interactive Proofs &amp; Arguments](#interactive-proofs--arguments)
- [Polynomial Commitments](#polynomial-commitments)
- [Folding &amp; Lookup Schemes](#folding--lookup-schemes)
- [IOPs and MIPs](#iops-and-mips)
- [Fiat-Shamir &amp; PCS](#fiat-shamir--pcs)

4. [Protocols to Implement](#protocols-to-implement)
5. [Implementations](#implementations)
6. [Frontend Representations](#frontend-representations)
7. [Proof System Properties](#proof-system-properties)



## Books & References

- [Arguments And Zero Knowledge Book by Thaler](https://people.cs.georgetown.edu/jthaler/ProofsArgsAndZK.pdf)
- Community: [ZK Hack](https://community.zkhack.dev)



## Study Groups & Videos

- [Thaler Book Study Group Sessions - Fabio Maia](https://www.youtube.com/playlist?list=PLDts4AP1ttCxD5K4ZxWqwVfafFy6HgzyU)
- [Thaler Book Study Group (March–December 2023)](https://www.youtube.com/playlist?list=PL_YzrmMHtTBQAauTGILpt4gqzu0opWtxq)
- [ZK Hack - Thaler Book Study Group](https://www.youtube.com/playlist?list=PLj80z0cJm8QEmZkGgSOLpr_8B08SCWVQ7)
- Topics: Reed-Solomon vector encoding, distance amplifying, public/private coin
- [Thaler Study Group Video](https://www.youtube.com/watch?v=qQ7yIEJKCtE&list=PLTPK8HRi5qmlIBA7TDTO8hBOprAc1FIQv&index=11)
- [Thaler Study Group 13](https://share.descript.com/view/nzCXLqQqEez)



## Key Concepts

### Interactive Proofs & Arguments

-**Prover** generates witness, interprets as polynomial, sends polynomial to verifier

-**Verifier** evaluates at one point; polynomial differs at all points for invalid witness

- SNARK: not necessarily zero-knowledge, but succinct
- Examples: Groth16 (linear PCP), polynomial IOPs, Spartan (multi-prover IP), GKR

### Polynomial Commitments (PC)

-**Trusted Setup**

- Pairing-friendly groups (EC)
- KZG: constant-size group elements, univariate
- Hyper-KGZ, PST: multilinear, log-sized proofs

-**Transparent Setup**

- Bulletproof, Dory, Hyrax, Ligero, FRI
- FRI: error-correcting code-based commitment
- Dark, Plonk, Groth16, sumcheck protocols

### Folding & Lookup Schemes

- Nova, ProtoStar (Aztec), LatticeFC, Jolt, Ligetron

### IOPs and MIPs

-**Univariate:** optimized for verifier cost, short proofs

-**Multivariate:** optimized for prover cost

- Constant round IOPs: Marlin, Plonk, Groth16
- Multi-prover interactive protocols (MIPs): Spartan, Lasso, Jolt, Hyper Plonk
- Logarithmic proof size using sumcheck protocols

### Fiat-Shamir & PCS

- Converts interactive proofs to non-interactive
- Commitment schemes using crypto groups:
- Pairing-based: KGZ, hyper-KGZ, PST
- Transparent: Bulletproofs, Dory, Hyrax
- Hash-based: FRI, Ligero, Binus



## Protocols to Implement

Implementations in Rust and Python, tracked at [PAZK GitHub](https://github.com/thor314/pazk):

- Freivalds Algorithm
- Multilinear Lagrange Interpolation
- Sumcheck
- GKR
- Fiat-Shamir transformation
- R1CS frontend over GKR
- Succinct Circuit Satisfiability IP
- Polynomial Commitment schemes: Merkle, low-degree tests
- Multi-Prover Interactive Provers
- PCPs & IOPs
- Minimal FRI, Ligero
- Schnorr sigma protocol, Pedersen commitments
- Bulletproofs & KZG polynomial commitments
- Groth16, Plonk, Dory, Hydrax, GGPR13



## Implementations

- [PAZK](https://github.com/thor314/pazk)
- [PAZK Notes](https://github.com/SuccinctPaul/pazk-notes)



## Frontend Representations

- R1CS
- AIR
- Plonkish constraint systems



## Proof System Properties

-**Completeness:** Any true statement should have a convincing proof

-**Soundness:** No false statement should have a convincing proof

-**Efficient verification:** Verification should be fast and simple

-**Efficient proving:** Proving should be fast for simple statements


