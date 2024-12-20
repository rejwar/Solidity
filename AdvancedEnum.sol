// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting{
    enum VoteStatus{NotStarted,OnGoing,Ended}

    VoteStatus public VoteStatus;

    constructor(){
        VoteStatus = VoteStatus.NotStarted;
    }

    function StartVoting() public {
        require(VoteStatus == VoteStatus.NotStarted, "Voting already started or ended");
        VoteStatus = VoteStatus.OnGoing;
    }

    function EndVoting() public {
        require (voteStatus == VoteStatus.OnGoing , "Voting not started or already ended");
        VoteStatus = VoteStatus.Ended;
    }

    function isVotingOngoing() public view returns(bool){
        return VoteStatus == VoteStatus.OnGoing;
    }
}
