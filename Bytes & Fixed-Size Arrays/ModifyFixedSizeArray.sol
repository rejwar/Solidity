// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifyFixedArray{
    uint[3] public Numbers =[5,10,15];


    function UpdateArray(uint Index, uint NewValue) public {
        require(Index < Numbers.length, " Index Out Of Range");

        Numbers[Index] = NewValue;
    }
}
