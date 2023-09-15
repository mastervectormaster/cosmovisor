Cosmovisor for Blockx testnet
---
permalink: /Cosmovisor for Blockx testnet/
title: Cosmovisor for Blockx testnet
---

[Cosmovisor](https://docs.cosmos.network/main/tooling/cosmovisor) is a small process manager for Cosmos SDK application binaries that monitors the governance module for incoming chain upgrade proposals. If it sees a proposal that gets approved, cosmovisor can automatically download the new binary, stop the current binary, switch from the old binary to the new one, and finally restart the node with the new binary.

## Cosmovisor Implementation for Blockx testnet
* **Purpose**
This project is for testing purpose of Upgradability of Blockx Testnet with Cosmovisor.

* **Who will use this repo or project?**
ONLY Blockx testnet developers

## How to use this repo

1. Run **cosmovisor.sh** to start initial version of the daemon
2. Run **proposal.sh** to submit a upgrade proposal
3. Run **vote.sh** to put a vote to make the proposal accepted.

https://drive.google.com/file/d/18zx9BvBz5qFSHvi0gIRUVyekTEObx77k/view?usp=sharing
