// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingEligibility{
    function CheckEligibility(uint256 age) public pure returns (string memory){
        if (age>=18){
            return "You can give a vote";
        } else {
            return " You can't give a vote";
        }
    }
}
