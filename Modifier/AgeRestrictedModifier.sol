// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeRestriction {
    uint public constant MinimumAge = 18; // Minimum age is constant

    // Modifier to restrict access based on age
    modifier OnlyAdults(uint age) {
        require(age >= MinimumAge, "You are not an adult!");
        _;
    }

    // Function to allow access to restricted area
    function EnterRestrictedArea(uint age) public OnlyAdults(age) returns (string memory) {
        return "Welcome to the restricted area!";
    }
}
