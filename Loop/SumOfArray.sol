// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumOfArray{
    uint public sum;

    function CalculateSum(uint[] memory arr) public {
        sum=0;
        for(uint i=0; i< arr.length; i++){
            sum+=arr[i];
        }
    }
}
