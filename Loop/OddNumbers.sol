// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OddNumber{
    uint[] public OddNumbers;

    function GeneratorOddNumbers() public {
        for(uint i=1; i<=10 ; i++){
            if(i %2 !=0){
                OddNumbers.push(i);
            }
        }
    }
}
