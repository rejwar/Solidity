// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumFrom1To20{

    uint public sum;

    function CalculateSum() public {
        sum=0;
        for(uint i=1; i<=20;i++){
            sum+=i;
        }
        
    }
}
