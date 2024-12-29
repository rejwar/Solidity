// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NestedIfElse{
    function Grade(uint256 Marks) public pure returns (string memory){
        if(Marks >=90 ){
            return "A";
        } else if (Marks >=80){
            return "B";
        } else if (Marks >= 70){
            return "c";
        } else {
            return "F";
        }
    }
}
