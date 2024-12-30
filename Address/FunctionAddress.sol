// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressFunction {
    address payable public recipient; // Corrected spelling

    // Set the recipient address
    function setRecipient(address payable recipient_) public {
        recipient = recipient_;
    }

    // Send Ether to the recipient
    function sendEther() public payable {
        require(msg.value > 0, "Must send some ether");
        require(recipient != address(0), "Recipient address is not set");
        recipient.transfer(msg.value); // Transfer the Ether to the recipient
    }

    // Get the recipient's balance
    function getRecipientBalance() public view returns (uint) {
        return recipient.balance;
    }
}
