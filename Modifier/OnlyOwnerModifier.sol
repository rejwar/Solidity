// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnlyOwnerExample{
    address public owner;
    constructor(){
        owner =msg.sender;
    }

    modifier OnlyOwner(){
        require(msg.sender ==owner, "You are not the owner!");
_;
    }

    function DoSomething() public OnlyOwner{
        
    }
}
