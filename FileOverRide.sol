// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ICalculator {
    function add(uint256 a, uint256 b) external pure returns (uint256);
    function subtract(uint256 a, uint256 b) external pure returns (uint256);
}

contract Calculator is ICalculator {
    // Implement the add function with override
    function add(uint256 a, uint256 b) external pure override returns (uint256) {
        return a + b;
    }

    // Implement the subtract function with override
    function subtract(uint256 a, uint256 b) external pure override returns (uint256) {
        return a - b;
    }
}
