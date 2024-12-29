// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumOfArrayWhile{
    uint public sum;

    function CalculateSum(uint[] memory arr) public {
        sum =0;
        uint i = 0;

        while (i<arr.length){
            sum+= arr[i];
            i++;
        }
    }
}
