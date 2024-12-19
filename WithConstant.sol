// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract WithConstant{
    uint constant public MULTIPLIER = 10;

    function calculate(uint value) public pure returns (uint){
        return value * MULTIPLIER;
    }
}
