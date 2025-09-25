# Thaler Study Resources

A collection of lectures and notes by **Justin Thaler** on Interactive Proofs, SNARK design, sumcheck protocols, polynomial commitments, and zero-knowledge.

---

## Table of Contents

1. [Interactive Proofs](#interactive-proofs)
2. [SNARK Design](#snark-design)
3. [Sumcheck Protocol](#sumcheck-protocol)
4. [Polynomial Commitments &amp; Folding](#polynomial-commitments--folding)
5. [PAZK Notes](#pazk-notes)

---

## Interactive Proofs

### Part I

- [Interactive Proofs (Part I)](https://youtu.be/2XrOdfYviwA)
  - Randomized equality testing
  - Reed-Solomon fingerprint
  - Schwartz-Zippel Lemma
  - Interactive proof → Sumcheck
  - Sumcheck protocol: `G(x, y, z) → G(T, y, z)`

### Part II

- [Interactive Proofs (Part II)](https://www.youtube.com/watch?v=w-6R3TxJ5dw)
  - SAT problem
  - GKR: General-purpose doubly-efficient Interactive Proof

---

## SNARK Design

### Part I

- [SNARK Design, Part I | a16z](https://youtu.be/tg6lKPdR_e4)
  - Transparent SNARKs: 3 cryptographic groups
  - Non-transparent SNARKs
  - Poly IOP classes:
    - IP, MIP
    - Constant-round PIOP
  - Polynomial Commitment (PC) schemes: Pairings
  - Blockchain acts as a weak verifier; rollup service is untrusted prover

### Part II

- [SNARK Design, Part II | a16z](https://www.youtube.com/watch?v=cMAI7g3UcoI&t=1s)

---

## Sumcheck Protocol

- [Deep Dive into Sumcheck | Ingonyama Sessions](https://www.youtube.com/watch?v=uFhppTJfjiY)
  - Succinct proofs, work-saving protocol
  - IP is public-coin
- [ZK Whiteboard Sessions - Sumcheck Protocol](https://www.youtube.com/watch?v=gfy8rotcas4)
  - Bulletproofs are based on sumcheck
  - FRI: reduces computation to log(n)
  - Marlin: commit on `a + b - c`
  - Spartan: polynomial uses sumcheck
  - GKR: improves prover efficiency; verifier `O(logn^2)`

---

## Polynomial Commitments & Folding

### Commitments

- Hyrax & Dory: use elliptic curves
- Dory: similar to Bulletproofs
- Ligero: Reed-Solomon for distance amplification
- FRI: proofs of polynomial degree bounds
- Growth16: linear PCP similar to polynomial IOP
- Constant-round PIOP + KZG commitments → Plonk, Marlin, AlmostGroth16

### Folding / Efficiency Schemes

- Bulletproofs, Hyrax, Dory: univariate & multilinear polynomials
- Hash-based commitments: Merkle-root over error-corrected code
- Paired with sumcheck-based verification

---

## PAZK Notes

- End-to-end SNARK proof: constant number of group elements
- Three categories of commitment schemes:
  1. Group-based: Bulletproofs, Dory, Hyrax
  2. Hash-based: Reed-Solomon + Merkle root
  3. Polynomial IOPs: KZG + constant-round PIOP
- Class groups: groups of unknown order
- Constant-round proofs for succinct verification

## [Lasso, Jolt, and the Lookup Singularity, Part I with Justin Thaler | a16z crypto research talks](https://www.youtube.com/watch?v=aEiHLORcDq4)

- Lookup Argument
- Compiler issue can cause issue in L2
- Backend Circuit Satisfiability
- SANRK
  - IOP - R1CS Circuit Satisifiability
  - PCS - Succint Interactive Argument
  - Fiat Shamir
  - Exeption
    - Linear PCP based Groth16, GGPR13, Pinocchio
    - Folding Scheme based - Recursion
- PCS
  - Pairing Based ( not transparent nor post quantum resistant )
    - KGZ10, PST13, ZGKPP18
  - Discrete logarithm ( transparent nor post quantum resistant )
    - IPA, Bulletproof, Hyrax, Dory
  - IOP + hashing ( transparent and post quantum )
    - FRI, Ligero, Brakedown
  - Groups of unknown order ( transparent for using class groups )
    - Dark, Dew
  - Inner Product Argument
    - Halo, Bulletproof

## Resources & References

- [PAZK GitHub](https://github.com/thor314/pazk)
- [PAZK Notes](https://github.com/SuccinctPaul/pazk-notes)
