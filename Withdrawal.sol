// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    address payable public richest;
    uint public mostSent;

    // Constructor to initialize the contract
    constructor() payable {
        richest = payable(msg.sender); // Set the deployer as the initial richest
        mostSent = 0; // Initialize mostSent to 0
    }

    // Function to become the richest by sending more Ether
    function becomeRichest() public payable returns (bool) {
        if (msg.value > mostSent) {
            // Transfer Ether to the current richest
            (bool success, ) = richest.call{value: msg.value}("");
            require(success, "Transfer failed.");

            // Update the richest and mostSent
            richest = payable(msg.sender);
            mostSent = msg.value;
            return true;
        } else {
            return false;
        }
    }
}
