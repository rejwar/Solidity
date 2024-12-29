// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaxInArrayWhile{
    uint public MaxNumber;

    function FindMax(uint[] memory arr) public {
        require (arr.length>0 ,"Array Must not be empty");
        MaxNumber = arr[0];

        uint i=1;
        while (i<arr.length){
            if(arr[i] > MaxNumber){
                MaxNumber = arr[i];
            }

            i++;
        }
    }
}



