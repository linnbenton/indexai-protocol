# IndexAI Protocol

**Autonomous execution layer for AI-driven DeFi strategies.**

IndexAI is an on-chain asset management protocol that not only generates portfolio strategies using AI, but also executes them directly via smart contracts.

No manual trading. No off-chain bots. Fully on-chain.

---

## Overview

Managing DeFi portfolios requires constant monitoring, manual rebalancing, and complex decision-making.

IndexAI removes this friction by enabling AI-generated strategies that are **stored, reusable, and executed entirely on-chain**.

---

## What It Does

- Generates AI-driven portfolio allocations  
- Stores strategies on-chain per user  
- Executes trades via smart contracts  
- Enables reusable strategy logic  
- Allows full on-chain data retrieval  

---

## Strategy Lifecycle

End-to-end on-chain execution:

1. User connects wallet  
2. AI generates portfolio allocation  
3. Strategy is stored on-chain  
4. Smart contract executes trades  
5. Portfolio state is updated and retrievable  

---

## Architecture

- **Frontend** → Next.js  
- **Backend** → Node.js (AI + API)  
- **Smart Contracts** → Solidity (Hardhat)  

---

## 🔗 Live Demo

https://linnbenton.github.io/indexai-protocol/

---

## 🔗 HashKey Deployment

- **Network**: HashKey Chain Testnet  
- **Contract**: `0x36C02dA8a0983159322a80FFE9F24b1acfF8B570`

### On-chain Proof

- **Save Strategy**  
https://testnet-explorer.hsk.xyz/tx/0xc3771a18a3f14d7628302c480bb18929e5227c21f1653ff0dc66d9dcb95e1485  

- **Execute Trade**  
https://testnet-explorer.hsk.xyz/tx/0x523569d792921fe0a5673090be90564aa31d9a198ef5c7cda4b41f16e330b1da  

This demonstrates a full on-chain lifecycle: **strategy storage + execution within the same contract**.

---

## On-Chain Capabilities

- Per-user portfolio storage  
- Strategy persistence & reuse  
- Fully queryable on-chain data  

---

## ⚡ Why IndexAI

- Not just signals → **execution layer**  
- Not off-chain bots → **smart contract native**  
- Not manual → **AI-driven automation**  

---

## Previous Deployment (Base Sepolia)

- Contract: `0x1622c75F23C118047825dD03C1d827797eFE98d9`  
- TX: https://sepolia.basescan.org/tx/0x556d89d244f9bae3b27d2cb4ef51a60a55a1e5d5bcb166d357bd74a43cf669c7  

---

## Status

Hackathon MVP — live on HashKey Chain with:
- on-chain execution  
- strategy storage  
- reusable portfolio logic  

---

## Vision

IndexAI aims to become the **AI execution layer for DeFi**, enabling autonomous, reusable, and risk-aware strategies across on-chain ecosystems.