// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WithoutConstant{
    uint public multiplier = 10;

    function calculate(uint value) public view returns (uint){
        return value*multiplier;
    }
}
