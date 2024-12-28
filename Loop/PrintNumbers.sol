// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrintNumbers{
    uint[] public Numerbs;

    function GenerateNumber() public {
        for(uint i =1; i<=10 ; i++){
            Numerbs.push(i);
        }
    }
}
