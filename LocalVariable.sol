// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract LocalVariableExample{
    function calculateSum() public pure returns (uint){
        uint a = 5;
        uint b = 10;
        return a+b;
    }
}
