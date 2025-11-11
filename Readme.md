# Zero Knowledge (ZK)

A curated collection of **notes, lectures, bootcamps, and experiments** focused on Zero-Knowledge Proofs (ZKPs), proving systems, and applied cryptography.  
This repository documents my deep dive into — from theory and math foundations to practical implementations and performance benchmarks.

## Session Notes

- [ZKVM](./sessions/zkvm.md)
- [ZK Hack](./sessions/zkhack.md)
- [MOOC](./sessions/mooc.md)
- [MEV](./sessions/mev.md)

## Lectures

* [Justin Thaler](./lectures/thaler.md)
  * [Proofs, Arguments, and Zero-Knowledge](./lectures/pazk.md)
* [Dan Boneh](./lectures/dan.md)
* [David Wong](./lectures/wong.md)
* [Vitalik](./lectures/vitalik.md)

## Experimental Implementation
- [gvm](https://github.com/poly-layer/gvm) - GKR-based Risc-V VM
- [gkr-proof-recursion](https://github.com/babybear-labs/GKR) - Recursive GKR Proof Compression
- [poseidon2](https://github.com/babybear-labs/poseidon2) - Poseidon2 hash function
- [sumcheck](https://github.com/babybear-labs/sumcheck) - ZKP protocol

## Bootcamps

- [ZK and Scaling](/bootcamps/zk/)

  - [Introduction and Bootcamp Overview](/bootcamps/zk/1.md)
  - [ZKP Theory and Zokrates](/bootcamps/zk/2.md)
  - [Introduction to Scaling Solutions](/bootcamps/zk/3.md)
  - [Introduction to Starknet / Cairo](/bootcamps/zk/4.md)
  - [Mastering Cairo](/bootcamps/zk/5.md)
  - [Understanding Zcash](/bootcamps/zk/6.md)
  - [Mastering Mina Protocol](/bootcamps/zk/7.md)
  - [Deep Dive into Mina and Aleo](/bootcamps/zk/8.md)
  - [zkEVM Solutions](/bootcamps/zk/9.md)
  - [zkEVM Solutions and ZK Rollups](/bootcamps/zk/10.md)
  - [Risc Zero / Circom](/bootcamps/zk/11.md)
  - [ZK - Snark Theory / PLONK](/bootcamps/zk/12.md)
  - [Stark Theory](/bootcamps/zk/13.md)
  - [Cryptographic Alternatives](/bootcamps/zk/14.md)
  - [Identity Solutions / zkML](/bootcamps/zk/15.md)
  - [Trends and Review](/bootcamps/zk/16.md)
  - [Final Projects](/bootcamps/zk/project.md)
- [Advanced Solidity](./bootcamps/advanced-solidity)

  - [Course Introduction](./bootcamps/advanced-solidity/1.md)
  - [Solidity Review and New Features](./bootcamps/advanced-solidity/2.md)
  - [EVM Deep Dive](./bootcamps/advanced-solidity/3.md)
  - [Developer Tools and Foundry](./bootcamps/advanced-solidity/4.md)
  - [Solidity Assembly](./bootcamps/advanced-solidity/5.md)
  - [Yul Continued](./bootcamps/advanced-solidity/6.md)
  - [Scalability Solutions](./bootcamps/advanced-solidity/7.md)
  - [Gas Optimisation](./bootcamps/advanced-solidity/8.md)
  - [Gas Optimisation Part 2](./bootcamps/advanced-solidity/9.md)
  - [Security](./bootcamps/advanced-solidity/10.md)
  - [Security / Auditing / Monitoring](./bootcamps/advanced-solidity/11.md)
  - [Formal Verification and Testing](./bootcamps/advanced-solidity/12.md)
  - [MEV](./bootcamps/advanced-solidity/13.md)
  - [Huff / Maths libraries / Stablecoins](./bootcamps/advanced-solidity/14.md)
  - [Latest Changes](./bootcamps/advanced-solidity/15.md)
  - [Governance](./bootcamps/advanced-solidity/16.md)
- [ZKML](./bootcamps/zkml)

  - [ZKP and ML Fundamentals](bootcamps/zkml/1.md)
  - [Introduction to ML](bootcamps/zkml/2.md)
  - [Introduction to zkML](bootcamps/zkml/3.md)
  - [EZKL and Zokrates Introduction](bootcamps/zkml/4.md)
  - [zkML Timeline and Challenges](bootcamps/zkml/5.md)
  - [Zokrates and EZKL, cont.](bootcamps/zkml/6.md)
  - [zkML Projects](bootcamps/zkml/7.md)
  - [zkML in DeFi and coSNARKS](bootcamps/zkml/8.md)
  - [Various Topics](bootcamps/zkml/9.md)
  - [GKR / zkLLM / Zero Gravity](bootcamps/zkml/10.md)
  - [Folding, Games and Hardware](bootcamps/zkml/11.md)
  - [Course Review](bootcamps/zkml/12.md)
  - [EZKL Workshop](bootcamps/zkml/13.md)
  - [Giza Workshop](bootcamps/zkml/14.md)
  - [Finale Projects](bootcamps/zkml/projects.md)
- [GKR Bounty](./bootcamps/gkr/doc.md)
 
## Papers

`(Relation, Witness)`

-- [Arithmatisation] --> `Zero Check`

-- [PIOP] --> `Polynomial Identity`

-- [PCS]--> `Interactive Argument`

-- [Fiat Shamir Transform]--> `Non Interactive Argument`

## Arithmatisation

- R1CS
- AIR
- Plonkish
- Layered Arithmatic Circuit

## IOP

- Plonk
- GKR (Sumcheck)
- Spartan (Sumcheck)
- Ligero

## PCS

- Hash Based
  - Ligero
  - FRI
  - STIR
  - WHIR
  - Brakedown
    
- ECDL Based
  - KGZ
  - IPA
  - Hyrax
    
- Lattice Based
  - Greyhound

## Proving Schemes

### SNARK (IOP + PCS)

- [Pinocchio](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6547113)
- [Groth16](https://eprint.iacr.org/2016/260.pdf)
- [Hyrax](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8418646)
- [Sonic](https://eprint.iacr.org/2019/099.pdf)
  - Universal Trusted Setup
- [Ligero](https://dl.acm.org/doi/pdf/10.1145/3133956.3134104)
- [Zokrates](https://api-depositonce.tu-berlin.de/server/api/core/bitstreams/2b81beb7-5b0f-4048-a56f-104317a82675/content)
- [Plonk](https://eprint.iacr.org/2019/953.pdf)
- [Mirage](https://eprint.iacr.org/2020/278.pdf)
- [Marlin](https://eprint.iacr.org/2019/1047.pdf)
- [Spartan](https://eprint.iacr.org/2019/550.pdf)
- [Redshift](https://eprint.iacr.org/2019/1400.pdf)
- [Fractal](https://eprint.iacr.org/2019/1076.pdf)
- [Lunar](https://eprint.iacr.org/2020/1069.pdf)
- [SuperSonic](https://eprint.iacr.org/2019/1229.pdf)
- [Halo](https://eprint.iacr.org/2019/1021.pdf)
  - Inner Product Argument
  - Tweedle Curves
  - Accumulation Scheme
  - Sonic
- [Halo2](https://zcash.github.io/halo2/concepts/proofs.html)
  - Inner Product Argument
  - Tweedle Curves
  - Accumulation Scheme
  - PLONK
- [Darlin](https://arxiv.org/pdf/2107.04315)
- Quarks
- [Plonky](https://github.com/0xPolygonZero/plonky)
- [Brakedown](https://eprint.iacr.org/2021/1043.pdf)
- [Snarkpack](https://research.protocol.ai/publications/snarkpack-practical-snark-aggregation/gailly2021.pdf)
- [fflonk](https://eprint.iacr.org/2021/1167.pdf)
- SHPLONK
- [Hyper Plonk](https://eprint.iacr.org/2022/1355.pdf)
- Kimchi
- Binius
- [Jolt](https://eprint.iacr.org/2023/1217.pdf)
- Polymath

### STARK

- [STARK](https://eprint.iacr.org/2018/046.pdf)
- [Aurora](https://eprint.iacr.org/2018/828.pdf)
- [Circle Starks](https://eprint.iacr.org/2024/278.pdf)
- [Plonky](https://github.com/0xPolygonZero/plonky)
- [Plonky2](https://github.com/0xPolygonZero/plonky2/blob/main/plonky2/plonky2.pdf)
- [Orion](https://eprint.iacr.org/2022/1010.pdf)
- Stir
- Whir
  - FRI
- Plonky3
- Stackproofs
- Garuda and Pari

### Incrementally Verifiable Computation / Folding Scheme Protocols

- [Nova](https://eprint.iacr.org/2021/370.pdf)
- [Super Nova](https://eprint.iacr.org/2022/1758.pdf)
- [Hypernova](https://eprint.iacr.org/2023/573.pdf)
- [Sangria](https://github.com/geometryxyz/technical_notes/blob/main/sangria_folding_plonk.pdf)
- [Protostar](https://eprint.iacr.org/2023/620.pdf)
- [Protostar Galaxy](https://eprint.iacr.org/2023/1106.pdf)
- [Basefold](https://eprint.iacr.org/2023/1705.pdf)
- [CycleFold](https://eprint.iacr.org/2023/1192.pdf)
- [LatticeFold](https://eprint.iacr.org/2023/1192.pdf)
- [Sonobe](https://privacy-scaling-explorations.github.io/sonobe-docs)
- [KGH Fold](https://eprint.iacr.org/2025/144.pdf)

### Lookup Argument

- [Plookup](https://eprint.iacr.org/2020/315.pdf): Proofs that some witness values are part of a lookup table.
- [Plonkpp](https://eprint.iacr.org/2022/086.pdf): Integrate Plookup into Plonk.
- [Caulk](https://eprint.iacr.org/2022/621.pdf)
- [Flookup](https://eprint.iacr.org/2022/1447.pdf)
- [Baloo](https://eprint.iacr.org/2022/1565.pdf)
- [CQ](https://eprint.iacr.org/2022/1763.pdf)
- [CQlin](https://eprint.iacr.org/2023/393.pdf)
- [Lasso](https://eprint.iacr.org/2023/1216.pdf)
- [Boojum](https://github.com/matter-labs/zksync-crypto/tree/main/crates/boojum)
- [Twist and Shout](https://eprint.iacr.org/2025/105.pdf)

### Others

- [Bulletproofs](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8418611)
- [Bulletproofs++](https://eprint.iacr.org/2022/510.pdf)
