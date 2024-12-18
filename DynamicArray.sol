// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArrayExample{
    uint[] public dynamicArray;

    function addElement(uint _value) public {
        dynamicArray.push(_value);
    }
}
