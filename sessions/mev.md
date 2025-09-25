# MEV Resources

## Videos & Talks

- [MEV on ETH2: MEV-boost, PBS, Danksharding... How do the pieces fit together? - Vitalik Buterin (EF)](https://www.youtube.com/watch?v=OD54WfVuDWw&t=262s)
- [What is SUAVE? FlashBots Phil Daian and Andrew Miller explain](https://youtu.be/j3ZM2ZdUWXU)
- [Interview with a Searcher - with MEV Senpai and Hasu](https://www.youtube.com/watch?v=6jfSlDvH77k)
- [Block building after the Merge by Alex Stokes | Devcon Bogotá](https://www.youtube.com/watch?v=KP5ppCRH0iM)
- [MEV Crash Course | Maximal Extractable Value | PBS | Master MEV Bot | Searcher, Builder &amp; Propose](https://youtu.be/hVWLOdruHhw)
- [Tomasz Stanczak on MEV in Ethereum (MEV Burn, ePBS and SUAVE)](https://www.youtube.com/watch?v=7N8a2f7h8Mw)
- [MEV Blocker | Flashbots net](https://www.youtube.com/watch?v=7MSEGx8-0jk&t=13s)

## Tools & Platforms

- [Optimistic Etherscan](https://optimistic.etherscan.io)
- [Titan Builder](https://www.titanbuilder.xyz)
- [Payload Data](https://payload.de/data/19168784)
- [mevscanner.com](https://mevscanner.com)

## MEV Concepts

### MEV Types

- Liquidation
- Arbitrage
- Sandwich

### MEV Attacks

- Front running
- Back running
- Sandwich Attack
  - Works on high slippage
  - Poisoned sandwich
- Arbitrage
- Time bandit attack

### PBS (Proposer-Builder Separation)

- Out-of-protocol PBS
- Enshrined PBS

### MEV Boost

- Execution layer acts as block proposer
- Flow: Searcher → Builder → Relay → MEV Boost
- Proposer / Validator: Execution client

### Searcher Requirements

- Low latency
- RPC service (slow or via Alchemy)
- Node setup
  - 32 ETH stake, sufficient RAM, strong hardware
- Tools:
  - Blocknative (mempool data, min latency)
  - revm

### Node Implementations

- Geth
- Erigon
- Nethermind

### Eigen

- Pepc
- SUAVE
