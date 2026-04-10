require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.8.20",
  networks: {
    hashkey: {
      url: "https://testnet.hsk.xyz",
      accounts: [process.env.PRIVATE_KEY],
      chainId: 133
    }
  }
};