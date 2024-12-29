// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElseExamaple{
    function CheckNumber(int256 Number) public pure returns(string memory){
        if(Number>0){
            return "Positive";
        } else if (Number<0){
            return "Negative";
        }
        else{
            return "Zero";
        }
    }
}
