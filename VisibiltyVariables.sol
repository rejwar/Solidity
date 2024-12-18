// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VisibilityExample{
    uint public publicVariable = 100;
    uint public  privateVariables = 200;

    function getPrivateVariable () public view returns(uint){
        return privateVariables;
    }
}
