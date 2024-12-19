// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArrayExample{
    uint[] public dynamicArray;

    function addElement(uint value) public {
        dynamicArray.push (value);
    }

    function getLength() public view returns (uint){
        return dynamicArray.length;
    }
}
