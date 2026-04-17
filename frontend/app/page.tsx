"use client";

import { useState } from "react";
import { ethers } from "ethers";

declare global {
  interface Window {
    ethereum?: any;
  }
}

export default function Home() {
  const [portfolio, setPortfolio] = useState<any>(null);

  const generateIndex = async () => {
    console.log("GENERATE CLICKED");

    const res = await fetch("http://127.0.0.1:5000/generate");
    const data = await res.json();

    console.log("DATA:", data);
    setPortfolio(data);
  };

  const executeTrade = async () => {
    console.log("EXECUTE CLICKED");

    if (!portfolio) {
      alert("Generate dulu");
      return;
    }

    if (!window.ethereum) {
      alert("Install MetaMask");
      return;
    }

    try {
      const accounts = await window.ethereum.request({
        method: "eth_requestAccounts",
      });

      console.log("Connected:", accounts);

      const provider = new ethers.BrowserProvider(window.ethereum);
      const signer = await provider.getSigner();

      const contractAddress = "0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512";

      const abi = [
        "function executeTrade(address[] tokens, uint256[] weights)"
      ];

      const contract = new ethers.Contract(contractAddress, abi, signer);

      const tokens = portfolio.tokens;
      const weights = portfolio.weights.map((w: number) =>
        ethers.parseUnits(w.toString(), 18)
      );

      console.log("SENDING TX...");

      const tx = await contract.executeTrade(tokens, weights);
      await tx.wait();

      alert("SUCCESS 🚀");

    } catch (err) {
      console.error(err);
      alert("TX ERROR");
    }
  };

  return (
    <main style={{ padding: 40 }}>
      <h1 className="text-4xl text-purple-500">
        Tailwind Jalan 🚀
      </h1>

      <button onClick={generateIndex}>
        Generate AI Index
      </button>

      {portfolio && (
        <div style={{ marginTop: 20 }}>
          <h3>Portfolio</h3>
          {portfolio.tokens.map((t: string, i: number) => (
            <p key={i}>
              {t} — {portfolio.weights[i]}%
            </p>
          ))}

          <button
            style={{ marginTop: 20 }}
            onClick={executeTrade}
          >
            Execute On-Chain
          </button>
        </div>
      )}
    </main>
  );
}