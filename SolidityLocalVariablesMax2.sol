// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariablewithCondition{
    function FindMax(uint a, uint b) public pure returns(uint){
        uint max;

        if(a>b){
            max = a;
        } else {
            max = b;
        }

        return max;
    }
}
