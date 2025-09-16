# Zero-Knowledge Proofs & ZKML Learning Notes

## Topics

* Finite Fields
* Elliptic Curves
* Polynomials
* STARKs
* Symmetric Encryption
* Interactive Proofs and SNARKs
* Plonk
* Lookup Arguments
* Signatures
* Folding Schemes

---

## Video Resources

### Blockchain & Web3 MOOCs

* [Blockchain-Web3 MOOCs](https://www.youtube.com/@blockchain-web3moocs635/playlists)

### ZKP Lectures

#### Lecture 1: Introduction to Zero Knowledge Interactive Proofs (Part 1)

* [Lecture Link](https://www.youtube.com/watch?v=i2nxdrMsEEk&list=PLS01nW3RtgorR09s4cIz3aFylYCrk8fv0) ✅
* Completeness
* Soundness
* Simulator and real view should be computationally distinct
* One-way function then ZK
  * Hiding
  * Binding
* Interactive zero knowledge proof
* Fiat-Shamir transform

#### Lecture 2: Overview of Modern SNARK Constructions (Part 1)

* [Lecture Link](https://www.youtube.com/watch?v=MUnlR3gMKu0&list=PLS01nW3Rtgoo_0Y-X5bQ32SyDbMiGFqee) ✅
* Proof is short and fast to verify
* A single PC can monitor or verify many unreliable/untrusted computers
* Scalability – Rollup
* Cross-chain bridging (check if fund is locked)
* Private transactions
* Compliance
* Embedding SNARK in media (e.g., photo)
* Arithmetic Circuit:
  * Structured
  * Unstructured
* Succinct: sublinear verification (√n or log n)
* Preprocessing:
  * Trusted
  * Trusted and universal
* SNARK Constructions:
  * Groth16
  * Plonk
  * Bulletproofs
  * STARK
* Knowledge soundness via extractor
* SNARK construction:
  * Functional Commitment Scheme:
    * Polynomial Commitment
    * Multilinear Commitment
    * Vector Commitment
    * Inner Product Commitment
    * KGZ – trusted setup
    * Dory – no setup
    * FRI – long proof
    * Bulletproof
    * Dark
  * Trivial commitment scheme: send coefficients
* SZDL Lemma
* Fiat-Shamir: transform public coin protocols into non-interactive
* IOP (Interactive Oracle Proof)
* SNARK DSL → SNARK-friendly format → SNARK backend prover

#### Lecture 3: Programming ZKPs (Part 1)

* [Lecture Link](https://www.youtube.com/watch?v=kho-vcQGa0c&list=PLS01nW3RtgoqqvF39f11ncNAClgSLPlXD) ✅
* Predicate system R1CS
* Arworks constraint system
* Circom direct constraints
* Zokrates
* Target: R1CS, Plonk, AIR
* Circ

#### Lecture 4: Interactive Proofs (Part 1)

* [Lecture Link](https://youtu.be/7YXVGDtuHrk?list=PLS01nW3RtgopePvLcZgMJK8gC5trUWVsT)
* Basic IP + PCS
* Polynomial Commitment
* Multilinear Commitment
* Vector Commitment (Merkle commitment)
* Polynomial evaluation over domain proportionate to degree d
* Multivariate reduces total degree
* Extend {0,1}^l → F^L
* Multilinear polynomials have lower total degree than coefficients
* Evaluation over 2^l gives guarantee for F^l

#### Lecture 5: The Plonk SNARK (Part 1)

* [Lecture Link](https://www.youtube.com/watch?v=tAdLHQVWlUY&list=PLS01nW3Rtgopdkrlu2-Lqgg7MKIS2vv2J)
* Plonk IOP + KGZ → Aztec, Jellyfish
* Plonk IOP + Bulletproofs → Halo2
* Plonk IOP + FRI → Plonky2

#### Lecture 6: Polynomial Commitments based on Pairing and Discrete Logarithm

* [Lecture Link](https://www.youtube.com/watch?v=HdwMtrXLLWk&list=PLS01nW3RtgopRnH84Omx0C4yZo75uSHWO)
* Functions:
  * keygen(gamma, F) → global param
  * commit(gp, f) → commitment
  * eval(gp, f, u) → v, π
  * verify(gp, com, u, v, f) → accept/reject
* Groups: multiplicative/additive notation
* Discrete Log problem: hard
* Bulletproof, Hyrax, Dark
* Bilinear pairings: Diffie-Hellman assumption
* BLS signature
* KGZ
* Pairing allows verification of exponent product relationships
* GGM can reduce commitment size
* Multivariate KGZ

![](./sc/pc.png)

#### Lecture 7: Polynomial Commitments based on Error-Correcting Codes

* [Lecture Link](https://youtu.be/cxtZfAHBTZM?list=PLS01nW3RtgopEpcPnXiXsHPO8HsaGUgmd)
* KGZ, gp, g^f(τ), g^q(x)
* Bulletproof, Hyrax, Dory, Dark
* ECC: larger, no homomorphism, no aggregation
* Ligero, STARK
* Sample hash, commit, Merkle
* Proximity test
* Consistency test

#### Lecture 8: FRI-based Polynomial Commitments and Fiat-Shamir

* [Lecture Link](https://youtu.be/cKvld6QWi7s?list=PLS01nW3RtgorRZsBnqch6gGBStZB9VVr)
* IOP: IP, MIP, Constant Round IOP (Plonk Spartan)
* Commitments: pairing-based, discrete log-based, hash-based

#### Lecture 11: From Practice to Theory (Part 1)

* [Lecture Link](https://www.youtube.com/watch?v=mWx70mIElpE&list=PLS01nW3RtgortBgR8sznyBbYvS2R63fe0) ✅
* Fiat-Shamir → SNARG
* Hash functions with correlation intractibility
* Fully Homomorphic Encryption
* Polynomial & Vector commitments
* SNARGS for batch NP
* Sumcheck → GKR

#### Lecture 12: zkEVM Design, Optimization and Applications (Part 1)

* [Lecture Link](https://www.youtube.com/watch?v=OfQd_D-TRr8&list=PLS01nW3RtgoqV9S-crVXIkMoaE1JRJwML) ✅
* Recursive proofs
* zkEVM: language, bytecode, consensus level
* Build zkEVM: program → constraint → proof
* R1CS → IOP + PCS
* Plonkish + Plonk IOP + KGZ
* Blockchain attestation: rerun transactions to generate state root

---

## Constraints

* **R1CS:** linear combination
* **Plonkish:** custom gates, lookups (efficient range, connect, mapping), permutation, generalized for AIR
* **AIR:** STARK, [AirAssembly Spec](https://github.com/GuildOfWeavers/AirAssembly/tree/master/specs)

---

## zkEVM Implementations

* Polygon Hermez: Stark, FPlonk
* zkEVM: Halo2 + KGZ

---

## GPU Prover Optimizations

* MSM: inner product over elliptic curves
* NTT: FFT over finite fields

---

## Other Notes

* FRI with Goldilocks, Mersenne Prime
* Polynomial Commitment + IOP → KGZ + Plonk IOP
* Sumcheck protocol: Boolean hypercube
  * [Video Reference](https://www.youtube.com/watch?v=XV62OB022tU&t=41s)

---

## ZKP Applications

* ML model privacy
* Matrix multiplication proofs: sublinear verification

#### Lecture 14: ZKP Applications

* [Lecture Link](https://www.youtube.com/watch?v=tbEsv2afhko&list=PLS01nW3Rtgor9mqIK8fqtEwqxg_aP2lr2)

#### Lecture 15: Secure ZK Circuits with Formal Methods (Part 1)

* [Lecture Link](https://www.youtube.com/watch?v=8VO1vS14ul0&list=PLS01nW3RtgorMPv-awIn16HAdmyfIqsNj)

#### ZKP MOOC Notes

* [Substack Notes](https://domsteil.substack.com/p/zkp-mooc)

---

## Ethereum Node Synchronization

### Full Sync

* Downloads every block from genesis
* Replays and executes every transaction
* Verifies transaction and contract state
* Node has full history and current state

### Fast Sync

* Downloads only block headers
* Downloads snapshot of state (accounts, balances, contracts) after a recent block
* Faster: skips replaying all transactions from genesis

### Light Sync

* Downloads only block headers
* Relies on full nodes for specific information
* Does not store full state or history

**Note:** Full sync executes all transactions; fast sync avoids this by directly obtaining current state.
