// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecisionMaking{
    function CheckValue(uint value) public pure returns ( string memory){
        if(value>10){
            return "Greater Than 10";
        } else{
            return "10 or less";
        }
    }
}
