// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example{
    function SumArray(uint[] calldata Data) external pure returns(uint){
        uint sum= 0;
        for(uint i=0; i<Data.length;i++){
            sum += Data[i];
        }
    }
}
