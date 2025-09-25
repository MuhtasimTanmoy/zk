# David Wong Study Resources

This section covers **zero-knowledge proof composition, recursion, and PLONK-related protocols**, including Nova, Sangria, Kimchi, and Halo2.

---

## Table of Contents

1. [Videos &amp; Tutorials](#videos--tutorials)
2. [PLONK &amp; Polynomial Commitments](#plonk--polynomial-commitments)
3. [Recursion &amp; Folding](#recursion--folding)
4. [Additional Resources](#additional-resources)
5. [Learning Philosophy](#learning-philosophy)

---

## Videos & Tutorials

- [Zero-knowledge proof composition and recursion. Part 1: overview](https://www.youtube.com/watch?v=6mcCyQXm8vo&list=PLBJMt6zV1c7GeKkR2SUhzx9KSJ9TsEx6n)
- [Kimchi](https://www.youtube.com/watch?v=WUP54nqVedc)
- [SanrkyJS](https://www.youtube.com/watch?v=KVJWBk0wNSE&list=PLS01nW3Rtgorx8v2TK4irKlb1RwCE209Y)
- [How does PLONK work? Part 1: What&#39;s PLONK?](https://www.youtube.com/watch?v=RUZcam_jrz0&list=PLBJMt6zV1c7Gh9Utg-Vng2V6EYVidTFCC)
- [The intuition behind the sumcheck protocol in 5 minutes](https://www.youtube.com/watch?v=XV62OB022tU)
- [Recursion](https://youtu.be/k-IFX0hsuSA?list=PLBJMt6zV1c7GeKkR2SUhzx9KSJ9TsEx6n)
- [Noname walkthrough](https://www.youtube.com/watch?v=pQer-ua73Vo)

---

## PLONK & Polynomial Commitments

- General-purpose ZK-SNARK
- Converts code → arithmetic circuits → constraint system
- PLONK constraint system works similarly to R1CS but more flexible
- Key features:
  - Copy constraints / permutation
  - Polynomial commitment schemes (PCS)
  - KZG commitments (trusted setup, structured reference string)
  - Grand product argument
- Variants:
  - PlONK IOP + KZG → Aztec, Jellyfish
  - PlONK IOP + Bulletproofs → Halo2
  - PlONK IOP + FRI → Plonky2

---

## Recursion & Folding

- **Nova / Sangria**: recursive on-demand proof generation
- Folding schemes: prove linear combinations instead of separate proofs
- Incrementally Verifiable Computation (IVC)
- Proof Carrying Data (PCD)
- Recursive proofs: build proofs on top of other proofs
- References:
  - [Nova Paper](https://eprint.iacr.org/2021/370.pdf)
  - Sangria folding schemes

---

## Additional Resources

- Pasta curves for Halo2: [Electric Coin Blog](https://electriccoin.co/blog/the-pasta-curves-for-halo-2-and-beyond)
- Kimchi update for Mina Protocol: [Mina Blog](https://minaprotocol.com/blog/kimchi-the-latest-update-to-minas-proof-system)
- PLONK Paper: [Eprint](https://eprint.iacr.org/2019/953.pdf)
- zk-SNARK Explanation: [arXiv](https://arxiv.org/pdf/1906.07221)

---

## Learning Philosophy / Notes

- Focus on **hands-on learning**: implement, debug, and test proofs rather than only reading papers
- Avoid context switching; focus deeply on one concept at a time
- Use a “fast feedback loop”: the compiler and runtime are your learning environment
- Side projects are essential for consolidating understanding
- Maintain balance: breaks, physical exercise, and support systems are key
- Keep a “hashmap” of concepts, gather puzzle pieces gradually
- Work with high-integrity collaborators; value free time
