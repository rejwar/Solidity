// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FindEvenNumber{
    uint[] public EvenNumbers;

    function GetEvenNumbers(uint[] memory arr) public {
        for (uint i =0 ; i<arr.length;i++)
        {
            if(arr[i] %2 ==0){
                EvenNumbers.push(arr[i]);
            }
        }
    }
}
