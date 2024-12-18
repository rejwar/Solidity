// Global Variables 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract GlobalVariableExample{
    function getGlobalVariables () public view returns (address, uint, uint){
        return(msg.sender ,block.timestamp , block.number);
    }
}
