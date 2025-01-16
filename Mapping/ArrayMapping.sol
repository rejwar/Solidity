// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingToArray{
mapping (address => uint[]) public UserTransactions;

function AddTransaction(address User_ , uint Amount_ ) public {
UserTransactions[User_].push(Amount_);
}

function GetTransaction(address User_) public view returns (uint[] memory){
    return  UserTransactions[User_];
}
}
