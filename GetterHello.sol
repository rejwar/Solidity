// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld{
    string UserInput;

    function set(string memory FinalValue) public {
        UserInput = FinalValue;
    }

    function get() public view returns (string memory){
        return  UserInput;
    }
}
