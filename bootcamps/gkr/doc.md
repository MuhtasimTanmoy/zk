# Efficient On-Chain Verifiers Using Recursive GKR Compression

**Reference:** [Notion Notes](https://encodeclub.notion.site/Efficient-Onchain-Verifiers-Using-Recursive-GKR-Compression-1756c123e77d8021aefaffa43e3ce1be)

---

### General Guidance on GKR

**Q: Should I build GKR from scratch or use Expander / Libra?**<br/>
**A:** Options:

* Build from scratch with optimizations (Libra paper) for a specific use case (e.g., Poseidon).
* Use Expander toolchain: combine GKR + Libra optimizations.
* Modify existing circuits using Expander.
* Layered circuits often reduce need for full Libra optimizations.

**Q: How does GKR recursion work?**<br/>
**A:**

* Recursive GKR compresses proofs over multiple layers of a layered circuit.
* Sumchecks of the form:

∑xF(P1(x),...,Pn(x))=eq(x,y)\sum_x F( P_1(x), ..., P_n(x) ) = eq(x, y)**x**∑F**(**P**1(**x**)**,**...**,**P**n****(**x**))**=**e**q**(**x**,**y**)

* Folding techniques reduce multiple commitments into one, enabling efficient on-chain verification.

**Q: Ideal project delivery / keywords to target?**<br/>
**A:**

* GKR + Plonk integration (lookups or deferred operations).
* Recursive proof compression.
* Poseidon-optimized GKR implementation.
* Layered circuit sumcheck proofs.


### Expander Toolchain

**Q: Issues with acircom_preprocessor in Expander?**<br/>
**A:**

* Version 0.0.3 works but some logic may not be correctly processed.
* Version 1.0.0 lacks `acircom_preprocessor`.
* Workaround: rewrite circuits from scratch in Rust in Expander.

**Q: Integration with ECC / ZKML frameworks?**<br/>
**A:**

* Some zkML frameworks support ECC (elliptic curve) operations.
* Frontend support often limited to GNARK; integration with other languages requires toolchain adaptation.

**Resources:**
* [Expander CUDA-like frontend](https://docs.polyhedra.network/expander/cuda/cuda_like_frontend)
* [Expander Compiler Collection tests](https://github.com/PolyhedraZK/ExpanderCompilerCollection/blob/zkcuda/expander_compiler/src/zkcuda/tests.rs)

---

### Experimental Ideas / Use Cases

**Q: Can GKR be used for ZK-based routing or VPN-like networks?**<br/>
**A:** Thought experiment:

* Wrap HTTP/HTTPS requests with recursive proofs.
* Partial unwrapping of proofs allows intended verifiers to respond without exposing the routing mechanism.
* Goal: randomize or hide routing while maintaining verifiable data integrity.
* Considerations: exit nodes may still see plaintext, so additional ZK “sanitization” may be needed.

**Q: Are layered circuits required for recursion?**<br/>
**A:** Yes, layered circuits naturally fit GKR recursion and compression.

---

### Implementation Notes

**Q: Re-implementing GKR for Poseidon — any advice?**<br/>
**A:**

* Focus on Poseidon-specific arithmetic operations.
* Apply Libra optimizations selectively based on circuit layers.
* Use sumcheck folding to reduce commitments for efficient on-chain verification.
* Only consult mentors when stuck after implementing a plan.

Project: [https://encodeclub.notion.site/Efficient-Onchain-Verifiers-Using-Recursive-GKR-Compression-1756c123e77d8021aefaffa43e3ce1be]()

### Expander / GKR / Quantum-Safe Notes

**Q: Are hash-based schemes quantum-safe?**<br/>
**A:** Yes, if your scheme relies purely on hash functions and no other assumptions, it is believed to be quantum-safe.

---

### UOV Signatures for Block Attestation

**Q: Can UOV signatures be used for block attestation?**<br/>
**A:** Yes. UOV public keys are degree-2 polynomials. Verification involves checking `pubkey_i(signature) = hash(message)` for all i. This verification can potentially be expressed as an AIR constraint, possibly enabling faster STARK aggregation by committing only to signatures instead of full hash chains.

**Q: Are there alternatives using multivariate crypto?**<br/>
**A:** No multivariate crypto is being considered here; lattice fold and other hash folding methods (Dan Boneh, ARC folding) are the focus.

---

### Expander Bootcamp Highlights

**Resources:**

* [Expander Bootcamp Overview](https://www.youtube.com/watch?v=03TMJo6ByRs) – Justin Drake
* [Expander Compiler Collection](https://github.com/PolyhedraZK/ExpanderCompilerCollection)
* [Expander GitHub](https://github.com/PolyhedraZK/Expander)
* [Sumcheck Builders](https://sumcheck-builders.polyhedra.network)
* [ePrint Paper](https://eprint.iacr.org/2024/2010)

**Q: Why use Expander?**<br/>
**A:**

* Easier circuit frontend than Halo2.
* Computational model supports proving statements without revealing certain aspects.
* Go-based examples for Poseidon: [main.go](https://github.com/PolyhedraZK/ExpanderCompilerCollection/blob/master/ecgo/examples/poseidon_m31/main.go)

**Use Cases / Features:**

* World settlement L2
* Data availability rollups
* Sequencing-based execution
* Fraud proof monitoring (watchtower)
* Real-time / next-slot proving
* Replacement of state trees for 10x performance in Mega ETH

---

### GKR / Sumcheck Protocol

**Q: What is GKR?**<br/>
**A:** GKR is a sumcheck protocol for arbitrary computations. It is an interactive polynomial oracle proof (IOP), not a stand-alone proof system.

**Q: What are the benefits?**<br/>
**A:**

* Delegation of large computations to untrusted provers.
* Field operations for efficiency.
* Compatible with Bulletproof or Pedersen commitments for reducing proof sizes.
* Folding reduces multiple commitments to one.

**Q: How does it differ from other commitments?**<br/>
**A:**

* Bulletproofs: Group operations (elliptic curve)
* Pedersen: Homomorphic commitments
* GKR: Field operations, polynomial-based reduction

**Q: Is GKR used in any ZKVM?**<br/>
**A:** Some experimental circuits use GNARK; program input can be expressed as field operations or arithmetic circuits.

**Q: What about recursion and folding?**<br/>
**A:** GKR supports proof recursion and folding schemes to reduce proofs over layers, improving verification efficiency.

**Q: Security assumptions?**<br/>
**A:**

* Security relies on standard algebraic assumptions (soundness of polynomial IOP).
* Weaker verifier can still securely verify large untrusted computations.
* Different from zkSNARK/STARK assumptions (no trusted setup needed for some GKR variants).

**Q: Application angle vs performance improvements?**<br/>
**A:** Valid submissions can focus on real-world applications, not just raw performance improvements.

**Q: Would we need a Solidity polynomial library?**<br/>
**A:** Possibly, if proofs or verification need to be executed on-chain.

**Q: Hyper Plonk / FPlonk?**<br/>
**A:** These are alternative polynomial commitment-based proof systems in the same space for efficient ZK proofs.
