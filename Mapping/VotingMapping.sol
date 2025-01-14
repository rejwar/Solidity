// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem{
    mapping (address => bool) public HasVoted;

    function CastVote(address Voter , bool VoteStatus) public {
        HasVoted[Voter] = VoteStatus;
    }

    function CheckVote(address Voter) public view returns (bool){
        return  HasVoted[Voter];
    }
}
