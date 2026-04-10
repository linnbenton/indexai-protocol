// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IndexAI {

    struct Allocation {
        address[] tokens;
        uint256[] weights;
        uint256 timestamp;
    }

    mapping(address => Allocation) public portfolios;

    event TradeExecuted(address user);

    function executeTrade(
        address[] memory tokens,
        uint256[] memory weights
    ) public {
        require(tokens.length == weights.length, "Mismatch");

        portfolios[msg.sender] = Allocation({
            tokens: tokens,
            weights: weights,
            timestamp: block.timestamp
        });

        emit TradeExecuted(msg.sender);
    }

    function getMyPortfolio() public view returns (Allocation memory) {
        return portfolios[msg.sender];
    }
}