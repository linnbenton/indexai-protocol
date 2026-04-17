// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IndexAI {
    event TradeExecuted(address user);

    // ===== USER PORTFOLIO =====
    mapping(address => address[]) public userTokens;
    mapping(address => uint256[]) public userWeights;

    // ===== STRATEGY STORAGE =====
    uint public strategyCount;

    mapping(uint => address[]) public strategyTokens;
    mapping(uint => uint256[]) public strategyWeights;

    // ===== EXECUTE TRADE =====
    function executeTrade(
        address[] memory tokens,
        uint256[] memory weights
    ) public {
        require(tokens.length == weights.length, "Mismatch");

        userTokens[msg.sender] = tokens;
        userWeights[msg.sender] = weights;

        emit TradeExecuted(msg.sender);
    }

    // ===== GET USER PORTFOLIO =====
    function getPortfolio(address user)
        public
        view
        returns (address[] memory, uint256[] memory)
    {
        return (userTokens[user], userWeights[user]);
    }

    // ===== SAVE STRATEGY =====
    function saveStrategy(
        address[] memory tokens,
        uint256[] memory weights
    ) public {
        require(tokens.length == weights.length, "Mismatch");

        strategyTokens[strategyCount] = tokens;
        strategyWeights[strategyCount] = weights;

        strategyCount++;
    }

    // ===== GET STRATEGY =====
    function getStrategy(uint id)
        public
        view
        returns (address[] memory, uint256[] memory)
    {
        return (strategyTokens[id], strategyWeights[id]);
    }
}