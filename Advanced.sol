// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Define the IToken interface
interface IToken {
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract TokenSender {
    address public tokenAddress;

    // Constructor to set the token contract address
    constructor(address _tokenAddress) {
        tokenAddress = _tokenAddress;
    }

    // Function to send tokens
    function sendToken(address recipient, uint256 amount) public returns (bool) {
        require(recipient != address(0), "Invalid recipient address");
        require(amount > 0, "Amount must be greater than zero");

        // Call the transfer function of the token contract
        bool success = IToken(tokenAddress).transfer(recipient, amount);
        require(success, "Token transfer failed");

        return true;
    }
}
