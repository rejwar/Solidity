// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Payment{
    event PaymentReceived(address indexed from , uint256 amount);

    function MakePayment () public payable {
        require(msg.value >0, "Payment must be greater than zero");
        emit PaymentReceived(msg.sender ,msg.value);
    }
}
