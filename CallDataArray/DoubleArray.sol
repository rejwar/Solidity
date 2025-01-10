// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CopyArray{
    function CopyData(uint[] memory Data) public pure returns (uint[] memory){
        uint[] memory Result = new uint[] (Data.length);
        for (uint i =0; i <Data.length; i++){
            Result[i] =Data[i]*2;
        }
        return Result;
    }
}
