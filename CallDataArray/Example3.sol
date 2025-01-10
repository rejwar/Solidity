// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example2{
    function FindMax(uint[] calldata Data) external pure returns (uint){
        uint max = Data[0];
        for (uint i =1; i<Data.length; i++){
            if(Data[i] >max){
                max =Data[i];
            }
        }
        return max;
    }
}
