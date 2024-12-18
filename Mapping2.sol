// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    mapping (address => uint ) public balances;

    function setBalance (uint _amount) public {
        balances [msg.sender] = _amount;
    }

}
