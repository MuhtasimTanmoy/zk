# Dan Study Resources

This section compiles lectures, webinars, and tutorials covering **blockchain fundamentals, Ethereum execution layer, zk-SNARKs, MEV, cryptography, and verifiable delay functions**.

---

## Table of Contents

1. [Blockchain Fundamentals](#blockchain-fundamentals)
2. [Ethereum Execution Layer](#ethereum-execution-layer)
3. [zk-SNARKs &amp; Zero-Knowledge Proofs](#zk-snarks--zero-knowledge-proofs)
4. [MEV and Fair Ordering](#mev-and-fair-ordering)
5. [Pairings and Cryptography](#pairings-and-cryptography)
6. [Verifiable Delay Functions (VDFs)](#verifiable-delay-functions-vdfs)
7. [Lattice-Based ZK](#lattice-based-zk)

---

## Blockchain Fundamentals

- [What are Blockchains and What are They For? - Dan Boneh](https://www.youtube.com/watch?v=LOVpky8upwA&list=PL8Vt-7cSFnw1gx51WHRgAtioVqAjzMS1w)
  - Consensus
    - Safety: all nodes agree
    - Liveness: the network progresses
  - Governance mechanisms
  - Public auctions / treasury participation

---

## Ethereum Execution Layer

- [An Overview of the Ethereum Execution Layer - Dan Boneh](https://www.youtube.com/watch?v=7sxBjSfmROc)
  - Front-running attacks and commit-reveal schemes
  - Importance of commitments over storing data on-chain
  - Logs vs persistent storage vs call data
  - Execution engine memory types: persistent, volatile, log, call data

---

## zk-SNARKs & Zero-Knowledge Proofs

- [Why and How zk-SNARK Works: Definitive Explanation](https://arxiv.org/pdf/1906.07221)
- [Stanford Webinar - Cybersecurity in Modern Era: Zero Knowledge Proofs Explained](https://www.youtube.com/watch?v=9hJNw2i1dL4)
- [ZKP Workshop 2022: Constructing Modern SNARKs - Dan Boneh](https://www.youtube.com/watch?v=6psLQv5Hf_I)

---

## MEV and Fair Ordering

- [MEV and Fair Ordering - Valeria Nikolaenko &amp; Dan Boneh](https://youtu.be/T1bD7_OTD1o)
  - Searchers: ~90% arbitrage
  - Priority Gas Auction (PGA)
  - Validator keeps reward, searcher runs Bellman-Ford
  - PBS: Proposer Builder Separation
  - SUAVE: Single Unifying Auctions for Value Expression
    - [SUAVE Explained - Flashbots Phil Daian &amp; Andrew Miller](https://www.youtube.com/watch?v=j3ZM2ZdUWXU)

---

## Pairings and Cryptography

- [Pairings in Cryptography](https://www.youtube.com/watch?v=8WDOpzxpnTE)
  - Discrete Log Problem (DLP)
  - Computational & Decision Diffie-Hellman (CDH/DDH)
  - BLS Signatures: aggregation, threshold signatures
  - RSA & Schnorr: distributed key generation & threshold signing
- Digital signature types: RSA, discrete log, BLS
- Post-quantum signatures: Dilithium, Falcon
- Account abstraction mitigates post-quantum concerns

---

## Verifiable Delay Functions (VDFs)

- [Verifiable Delay Functions - Dan Boneh](https://www.youtube.com/watch?v=dN-1q8c50q0)
  - Slow down computation even with parallelism
- [VDF Applications &amp; Candidate Constructions - BPASE &#39;18](https://www.youtube.com/watch?v=qUoagL7OZ1k)

---

## Lattice-Based ZK

- [Explore Expander Bootcamp: LatticeFold](https://www.youtube.com/watch?v=Y71MgrisopY)

  - Completeness, soundness, knowledge soundness
  - Succinct proofs
  - Linearly homomorphic & ring-based commitments
  - Pairing-based, code-based, lattice-based SNARKs
- Miscellaneous:

  - Trusted vs non-trusted setups
    - KZG: trusted setup, better inclusion proofs
    - Dory: no trusted setup, smaller, better bulletproof
  - Verkle tree commitments
