// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Index {
    string public message;

    // Constructor to initialize the contract with an initial message
    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    // Function to set a new message
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    // Function to get the current message
    function getMessage() public view returns (string memory) {
        return message;
    }
}
