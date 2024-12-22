// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // Declare a state variable to store the data
    uint private storedData;

    // Function to set the value of storedData
    function set(uint x) public {
        storedData = x;
    }

    // Function to get the value of storedData
    function get() public view returns (uint) {
        return storedData;
    }
}
