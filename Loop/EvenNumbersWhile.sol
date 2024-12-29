// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenNumbersWhile{
    uint[] public EvenNumbers;

    function FindEvenNumbers(uint[] memory arr) public {
        uint i =0;
        while (i < arr.length){
            if(arr[i] %2 ==0){
                EvenNumbers.push(arr[i]);
            }
            i++;
        }
    }
}
