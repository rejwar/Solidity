// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FindMaxInArray{
    uint public MaxNumber;

    function FindMax(uint[] memory arr) public {
        require(arr.length>0,"Array Must not be empty");
        MaxNumber = arr[0];

        for (uint i =1; i<arr.length;i++){
            if(arr[i]>MaxNumber){
                MaxNumber = arr[i];
            }
        }
    }
}
