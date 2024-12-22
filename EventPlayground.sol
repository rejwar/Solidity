
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IndexedEventExample {
    event UserActivity(address indexed user, string action, uint256 timestamp);

    function logActivity(string memory _action) public {
        emit UserActivity(msg.sender, _action, block.timestamp);
    }
}
