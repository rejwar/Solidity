// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    uint age;

    // Constructor to initialize the age variable
    constructor() {
        age = 60;
    }

    // Function to check the age
    function checkAge() public view returns (string memory) {
        if (age > 60) {
            return "greater than 60";
        } else {
            return "less than or equal to 60";
        }
    }
}
