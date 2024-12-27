// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasEfficiency{
    function AddNumber(uint a, uint b) public pure returns (uint){
        uint sum = a+b;
        return sum;
    }
}
