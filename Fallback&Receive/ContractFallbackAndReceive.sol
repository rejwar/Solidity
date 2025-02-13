// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackExample {
    event ReceiveEther(address Sender, uint Amount);
    event FallbackCalled(address Sender, bytes Data);

    // This function will be called when the contract receives Ether with NO data
    receive() external payable {
        emit ReceiveEther(msg.sender, msg.value); // Use msg.value for amount
    }

    // This function will be called when:
    // 1. The contract receives Ether WITH data
    // 2. A non-existent function is called on the contract
    fallback() external payable {
        emit FallbackCalled(msg.sender, msg.data); // Use msg.data for data
    }
}
