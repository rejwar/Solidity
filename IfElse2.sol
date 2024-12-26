// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ifelseExample{
    function checkEvenOdd(uint number) public pure returns (string memory){
        string memory result;

        if ( number % 2==0){
            result = "even";
        } else {
            result ="odd";
        }
        return result;
    }
}
