// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract GlobalVariableExample {
    address public  sender ;
    uint public  value;
    uint public timestamp;
    uint public BlockNumber;
    address public origin;

    function setVariables() public  payable  {
        sender = msg.sender;
        timestamp = block.timestamp;
        BlockNumber = block.number;
        origin = tx.origin;
    }
}
