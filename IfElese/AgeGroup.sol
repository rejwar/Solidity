// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeGroup{
    function GetAgeGroup(uint256 age) public pure returns (string memory){
        if(age<13){
            return "Child";
        } else if (age <20) {
            return "Teenage";
        } else if(age <60){
            return "Adult";
        } else {
            return "Senior";
        }
    }
}
