// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariableScope{
    function calculate(uint a ,uint b) public pure returns(uint){
        uint result = a+b;
        return result;
    }
    function anotherFunction() public pure returns(string memory){
        return" Result variable is not accessible here";
    }
}
