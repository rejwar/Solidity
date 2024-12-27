// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariableTemporary{
    function TemporaryValue() public pure returns (uint){
        uint temp = 42;
        return temp;
    }
}
