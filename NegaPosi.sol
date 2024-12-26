// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FindNumberType{
    function checkNumberType(uint number) public pure returns (string memory){
        string memory result;

        if ( number >0){
            result = "positive";
        } else if( number < 0) {
            result = "negative";
        }else {
            result = "zero";
        }

        return result;
    }
}
