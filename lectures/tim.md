# Tim Roughgarden

Course: [Foundations of Blockchains](https://www.youtube.com/playlist?list=PLEGCF-WLh2RLOHv_xUGLqRts_9JxrckiA)

## **1. Digital Signature Scheme**

A signature scheme consists of three algorithms:

1. **Key Generation (KeyGen)**
2. **Signing (Sign)**
3. **Verification (Verify)**

Used for authenticity + integrity in distributed systems and consensus protocols.

---

# **2. State Machine Replication (SMR) & Consensus**

Consensus ensures all honest nodes agree on the same sequence of operations.

## **2.1 Tendermint BFT**

Key properties:

* **Consistency (Safety)** — nodes never commit conflicting blocks
* **Eventual Liveness** — the protocol eventually commits new blocks

Model: **Partially synchronous**

### **Assumptions**

* Permissioned network
* Known node set
* PKI + secure digital signatures
* Partially synchronous network
* ≥ 1 honest node (basic)

Fault model:

* Crash faults
* Omission faults
* Byzantine faults

### **Validity + Agreement**

* **Validity** — committed value must be proposed by an honest node
* **Agreement** — all honest nodes commit the same block

---

# **3. Classical Protocols**

## **3.1 Dolev–Strong Protocol**

For Byzantine Broadcast.

Properties:

* **Validity**
* **Agreement**

Assumes:

* Permissioned nodes
* PKI
* Synchronous network
* At least one honest node

---

# **4. Impossibility & Possibility Results**

## **4.1 FLP Impossibility**

In an *asynchronous* setting, **no deterministic protocol** can guarantee both:

* Safety
* Liveness
  with even **1 Byzantine fault**.

Focus shifts:

* **Favor safety:** BFT protocols → may halt
* **Favor liveness:** Longest-chain PoW → can reorganize

## **4.2 Why 33%?**

To tolerate **f** Byzantine faults:

```
Need: #honest > #adversarial * 2
i.e. f < (n – f) / 2
→ n ≥ 3f + 1
→ Fault tolerance = 1/3
```

Thus **BFT consensus works only if f < n/3**.

---

# **5. Asynchronous Setting**

Modules:

* SMR
* Byzantine Broadcast
* Byzantine Agreement

Goals:

* **Termination** (eventual liveness)
* **Agreement** (safety)
* **Validity**

Under partial synchrony:

* **Safety** always
* **Liveness** after **Global Stabilization Time (GST)**

---

# **6. Tendermint Deep Dive**

Paper: *The Latest Gossip on BFT Consensus*

Key concepts:

* **Block certificate** — signatures from ≥ 2/3 validators
* **Proof of liveness**
* Always consistent
* Eventually live

Improvements explored:

* Can we trade *some* safety for *always-on* liveness (HotStuff, Casper)?

Related protocols:

* **Diem/Libra BFT**
* **HotStuff**
* **Casper FFG / CBC**

---

# **7. Longest-Chain Protocols (Bitcoin, etc.)**

Properties:

* No deterministic finality in partial synchrony
* Probabilistic finality
* Random leader election
* Common prefix property
* Liveness via mining

### **Proof of Work**

* Find hash < target τ
* Bitcoin **does not use clocks**
* Difficulty adjustment ensures ~10 min block times

### **Attacks**

* Longer-chain attack even with low hashpower (rare but possible)
* **Selfish mining**

  * Keep private chain
  * Modeled via Markov chain
  * Expected ~10.5 blocks wasted/discarded

Revenue sources:

* Block rewards
* Transaction fees
* **MEV** (Miner Extractable Value)

---

# **8. Proof-of-Stake & Leader Election**

### **Leader election methods**

* Weighted round robin
* VRF (Verifiable Random Function)

  * Unique signatures → unpredictable but verifiable randomness
* VDF (Verifiable Delay Function)

### **Chains & Protocols**

* Solana, Cosmos → give up leader secrecy
* Algorand → VRF + BFT finality
* Cardano → Longest-chain PoS

### **Double signing in PoS**

Validators must sign:

* 2/3 + 2/3 for one block
* To attack, must double-sign or equivocate

---

# **9. Auctions and Fees**

### **Auction models**

* First-price
* Second-price
* EIP-1559 (base fee + priority fee)

---

# **10. Three Pillars of Math**

* **Definitions**
* **Theorems**
* **Proofs**
