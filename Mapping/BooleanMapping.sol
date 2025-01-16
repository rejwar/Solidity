// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingToBool{
    mapping (address => bool) public HasVoted;

    function Vote(address User_) public {
        require(!HasVoted[User_] , "User has already voted");
        HasVoted[User_] = true;
    }

    function CheckVote(address User_) public view returns (bool) {
        return HasVoted[User_];
    }
}
