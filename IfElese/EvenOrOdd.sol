// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenOdOdd{
    function CheckEvenOrOdd(uint256 Number) public pure returns (string memory){
        if( Number % 2== 0)
        {
            return "Even Number";
        }else{
            return "Odd Number";
        }
    }
}
