// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FactorsOfNumbers{
    uint[] public Factors;

    function FindFactors(uint num) public {
        for(uint i =1; i<=num; i++){
            if(num%i ==0){
                Factors.push(i);
            }
        }
    }
}