// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedArrayExample {
    uint[3] public FixedArray = [10, 20, 30];

    // Function to get an element from the array
    function GetElement(uint Index) public view returns (uint) {
        require(Index < FixedArray.length, "Index out of bounds"); // Validate index
        return FixedArray[Index];
    }

    // Function to set an element in the array
    function SetElement(uint Index, uint Value) public {
        require(Index < FixedArray.length, "Index out of bounds"); // Validate index
        FixedArray[Index] = Value;
    }
}
