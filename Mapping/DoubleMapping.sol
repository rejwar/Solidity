// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    mapping(address => uint) public balances; // Mapping name corrected
    mapping(address => mapping(address => bool)) public IsFriend;

    function examples() external {
        // Setting a balance for the sender
        balances[msg.sender] = 123;

        // Getting the balance for the sender
        uint bal = balances[msg.sender];

        // Getting the balance for another address (will return 0 if not set)
        uint bal2 = balances[address(1)];

        // Adding to the sender's balance
        balances[msg.sender] += 456;

        // Deleting the sender's balance
        delete balances[msg.sender];
    }
}
