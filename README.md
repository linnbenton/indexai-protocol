# IndexAI Protocol

**AI-powered on-chain execution layer for DeFi.**

Most DeFi tools stop at signals.  
IndexAI goes further — it executes.

IndexAI generates portfolio strategies using AI and executes them directly via smart contracts, enabling fully autonomous, on-chain portfolio management.

No manual trading. No off-chain bots. Just execution.

---

## Overview

Managing DeFi portfolios requires constant monitoring, manual rebalancing, and complex decision-making.

IndexAI removes this friction by generating strategies and executing them fully on-chain — turning passive insights into active execution.

---

## What It Does

- Generates AI-driven portfolio allocations  
- Stores strategies on-chain per user  
- Executes trades via smart contracts  
- Enables reusable strategy logic  
- Allows full on-chain data retrieval  

---

## How to Use

1. Connect wallet  
2. Generate AI portfolio  
3. Save strategy on-chain  
4. Execute strategy via smart contract  
5. View transaction in explorer  

---

## Strategy Lifecycle

User connects wallet → AI generates allocation → strategy stored on-chain → smart contract executes → portfolio updated and retrievable.

---

## Architecture

- Frontend → Next.js  
- Backend → Node.js (AI + API)  
- Smart Contracts → Solidity (Hardhat)  

---

## 🔗 Live Demo

https://linnbenton.github.io/indexai-protocol/

---

## 🔗 HashKey Deployment

- Network: HashKey Chain Testnet  
- Contract: 0x36C02dA8a0983159322a80FFE9F24b1acfF8B570  

> Note: HashKey Testnet currently runs on zkSync-based infrastructure.  
> Transactions may appear on GenLayer explorer due to underlying network architecture.

---

## On-chain Proof

**Save Strategy**  
https://testnet-explorer.hsk.xyz/tx/0xc3771a18a3f14d7628302c480bb18929e5227c21f1653ff0dc66d9dcb95e1485  

**Execute Trade**  
https://testnet-explorer.hsk.xyz/tx/0x523569d792921fe0a5673090be90564aa31d9a198ef5c7cda4b41f16e330b1da  

This demonstrates a full on-chain lifecycle: strategy storage and execution within the same contract.

---

## On-Chain Capabilities

- Per-user portfolio storage  
- Strategy persistence and reuse  
- Fully queryable on-chain data  

---

## Why IndexAI

- Not just signals → execution layer  
- Not off-chain bots → smart contract native  
- Not manual → AI-driven automation  

---

## Previous Deployment (Base Sepolia)

- Contract: 0x1622c75F23C118047825dD03C1d827797eFE98d9  
- TX: https://sepolia.basescan.org/tx/0x556d89d244f9bae3b27d2cb4ef51a60a55a1e5d5bcb166d357bd74a43cf669c7  

---

## Status

Hackathon MVP — live on HashKey Chain with:

- on-chain execution  
- strategy storage  
- reusable portfolio logic  

---

## Vision

IndexAI aims to become the AI execution layer for DeFi, enabling autonomous, reusable, and risk-aware strategies across on-chain ecosystems.