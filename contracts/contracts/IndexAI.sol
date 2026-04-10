// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IndexAI {
    event TradeExecuted(address user);

    function executeTrade(
        address[] memory tokens,
        uint256[] memory weights
    ) public {
        require(tokens.length == weights.length, "Mismatch");
        emit TradeExecuted(msg.sender);
    }
}