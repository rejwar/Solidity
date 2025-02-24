// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedSizeArray{

    uint[5] public Numbers = [10,20,30,40,50];

    function GetIndexValue(uint Index) public view returns (uint){
        require(Index < Numbers.length, "Invalid Index");
        return Numbers[Index];
    }
}


