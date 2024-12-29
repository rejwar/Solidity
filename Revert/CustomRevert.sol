// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControl{
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function RestrictedFunction() public view {
        if(msg.sender != owner){
            revert("Access Denied : Only the owner can call this function");
        } 
    }
}
