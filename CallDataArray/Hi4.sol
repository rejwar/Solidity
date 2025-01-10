// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example4{
    function FindMin(uint[] calldata Data) external pure returns (uint){
        uint Min = Data[0];
        for(uint i=1 ; i<Data.length;i++){
            if(Data[i] <Min){
                Min = Data[i];
            }
        }
        return Min;
    }
}
