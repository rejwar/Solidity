// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract constructorTest{
    string name ;

    constructor() public {
        name = "john";
    }

    function getName () public view returns (string memory){
        return name;
    }
}
