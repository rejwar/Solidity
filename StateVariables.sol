// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateVariableExample{

    uint public  stateVariable = 10;

    function setVariable(uint _value) public  {
        stateVariable = _value; 
    }
}
