// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Checkprime{
    function IsPrime(uint num) public pure returns (bool){
        if(num<=1) return false;
        for(uint i =2; i<num; i++){
            if(num %i ==0) return false;
        }
    }
}
