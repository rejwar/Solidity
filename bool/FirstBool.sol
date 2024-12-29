// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo{
    bool public value = true;

    function CheckEven(uint a) public pure returns (bool){
        if(a%2 ==0){
            return true;
        }
        return false;
    }
}
