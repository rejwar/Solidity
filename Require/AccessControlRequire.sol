// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControl{
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function OnlyOwnerFunction() public view{
        require(msg.sender == owner , "Caller is not the owner");
    }
}
