// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract C {
    uint private data;
    uint public info;

    // Constructor to initialize 'info'
    constructor() {
        info = 10;
    }

    // Private function to increment a value
    function increment(uint a) internal pure returns (uint) {
        return a + 1;
    }

    // Public function to update 'data'
    function updateData(uint a) public {
        data = a;
    }

    // Public function to get 'data'
    function getData() public view returns (uint) {
        return data;
    }

    // Internal function to compute sum
    function compute(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}

contract E is C {
    uint private result;
    C private c;

    // Constructor to initialize contract C
    constructor() {
        c = new C();
    }

    // Function to compute the result
    function getComputedResult() public {
        result = compute(3, 5);
    }

    // Function to get the result
    function getResult() public view returns (uint) {
        return result;
    }

    // Function to get 'info' from contract C
    function getData() public view returns (uint) {
        return c.info;
    }
}
