
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForLoopExample{
    uint public sum;

    function CalculateSum() public {
        sum = 0;

        for (uint i= 0 ; i<=5; i++){
            sum+=i;
        }
    }
}
