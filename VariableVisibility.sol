// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VisibilityExample{
    uint public publicVariables = 100;
    uint private privateVariable =200;

    function getPrivateVariable() public view returns (uint){
        return privateVariable;
    }
}
