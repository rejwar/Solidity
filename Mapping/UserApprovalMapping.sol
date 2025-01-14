// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserApprovalMapping{
    mapping (address => bool) public IsApproved;

    function SetApproval(address User_ , bool Status_ ) public {
        IsApproved[User_] = Status_;
    }

    function GetApproval(address User_) public view returns (bool){
        return  IsApproved[User_];
    }
}
