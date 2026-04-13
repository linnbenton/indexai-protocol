# IndexAI Protocol

IndexAI is an AI-powered on-chain asset management protocol that autonomously generates, executes, and stores optimized DeFi portfolio strategies.

---

## Overview

Managing DeFi portfolios requires constant monitoring, manual rebalancing, and complex decision-making.

IndexAI removes this friction by enabling AI-generated portfolio strategies that are executed and stored directly on-chain via smart contracts.

---

## What It Does

- Generates AI-driven portfolio allocations  
- Executes trades on-chain  
- Stores portfolio state per user  
- Enables reusable on-chain strategies  
- Allows retrieval of portfolio and strategy data  

---

## How It Works

1. User connects wallet  
2. AI analyzes market conditions  
3. AI generates optimal allocation  
4. Smart contract executes transactions  
5. Portfolio and strategy data are stored on-chain  
6. Users can retrieve or reuse strategies  

---

## Architecture

- **Frontend** → Next.js  
- **Backend** → Node.js (AI + API)  
- **Smart Contracts** → Solidity (Hardhat)  

---

## HashKey Deployment (Final)

- **Network:** HashKey Chain Testnet  
- **Contract:**  
  0x36C02dA8a0983159322a80FFE9F24b1acfF8B570  

### Transactions

- **Execute Trade:**  
  https://testnet-explorer.hsk.xyz/tx/0x99245eaacc9692711f3a0d0ce1338561bfe08e94b3fc4fcc7165b12f6a1b3374  

- **Save Strategy:**  
  https://testnet-explorer.hsk.xyz/tx/0xc3771a18a3f14d7628302c480bb18929e5227c21f1653ff0dc66d9dcb95e1485  

---

## On-Chain Capabilities

- Portfolio allocations are stored per user  
- Strategies can be saved and reused  
- Data is fully retrievable via smart contract functions  

---

## Previous Deployment (Base Sepolia)

- Contract:  
  0x1622c75F23C118047825dD03C1d827797eFE98d9  

- TX:  
  https://sepolia.basescan.org/tx/0x556d89d244f9bae3b27d2cb4ef51a60a55a1e5d5bcb166d357bd74a43cf669c7  

---

## Key Innovation

- AI replaces manual portfolio management  
- Execution happens fully on-chain  
- Portfolio and strategies are persistent and reusable  
- Transparent and verifiable on-chain logic  

---

## Status

Hackathon MVP — deployed on HashKey Chain with real on-chain execution, portfolio storage, and strategy reuse.

---

## Vision

IndexAI aims to become the AI layer for on-chain asset management, enabling autonomous, reusable financial strategies across DeFi ecosystems.