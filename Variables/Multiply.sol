// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiplyNumbers{
    function multiply(uint x ,uint y) public pure returns (uint){
        uint result = x * y;
        return result;
    }
}
