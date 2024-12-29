// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BoolCheck{
    function IsEven(uint Number) public pure returns (bool){
        return Number%2 ==0;
    }
}
