// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StaticArrayTest{
    string[3] numbers = ["one" , "two" , "three"];

    function GetNumbers() external {
        string[3] memory MyNumbers = ["one", "two" ,"three"];
    }
}
