// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumOfNumbers{
    uint public sum;

    function CalculateSum() public {
        for( uint i=1; i<=10 ; i++)
        {
            sum +=i;
        }
    }
}
