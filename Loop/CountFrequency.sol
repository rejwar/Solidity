// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CountFrequency{
    uint public Frequency;

    function countFrequency(uint[] memory arr, uint num) public {
        Frequency =0;
        for (uint i =0; i<arr.length; i++){
            if(arr[i]==num){
                Frequency++;
            }
        }
    } 
}
