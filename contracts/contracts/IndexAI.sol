// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IndexAI {
    event TradeExecuted(address user);

    // 🔥 NEW: simpan portfolio user
    mapping(address => address[]) public userTokens;
    mapping(address => uint256[]) public userWeights;

    function executeTrade(
        address[] memory tokens,
        uint256[] memory weights
    ) public {
        require(tokens.length == weights.length, "Mismatch");

        // 🔥 SIMPAN DATA
        userTokens[msg.sender] = tokens;
        userWeights[msg.sender] = weights;

        emit TradeExecuted(msg.sender);
    }

    // 🔥 NEW: ambil portfolio user
    function getPortfolio(address user)
        public
        view
        returns (address[] memory, uint256[] memory)
    {
        return (userTokens[user], userWeights[user]);
    }
}