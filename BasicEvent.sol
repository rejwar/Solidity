// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

event EventExample { 
    event LogMessage( string message , address sender);

    function logMessage(string memory _message) public {
        emit LogMessage(_message, msg.sender);
    }
}
