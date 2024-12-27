// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariableExample{
    function ExampleFunction() public pure returns(uint){
        uint localVar = 10;

        localVar += 5;

        return localVar;
    }
}
