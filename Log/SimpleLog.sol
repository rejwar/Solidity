// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample{
    event LogEvent(address indexed sender , uint value);

    function TriggerEvent() public payable {
        emit LogEvent(msg.sender , msg.value);
    }
}
