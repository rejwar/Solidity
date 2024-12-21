// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasCostCalculator{
    uint public gasCost;

    constructor() public {
        gasCost =tx.gasprice;
    }
}
