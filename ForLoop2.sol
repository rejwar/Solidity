// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract whileTest{
    uint result = 0;

    function sum() public returns (uint data){
        for(uint i=0; i<10;i++){
            result =result +i;
        }
        return result;
    }
}
