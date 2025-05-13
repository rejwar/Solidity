// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MsgExample {
    address public sender;
    uint public value;
    bytes public data;
    bytes4 public signature;

    function receiveEther() public  payable {
        sender = msg.sender;
        value = msg.value;
        data = msg.data;
        signature = msg.sig;
    }
}
