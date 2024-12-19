// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CircleArea{

    uint constant public PI = 31416;

    function calculateArea(uint radius) pure public returns (uint){
        return (PI * radius *radius) / 10000;
    }
}
