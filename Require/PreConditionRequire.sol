// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PreCondition{
    function Withdraw(uint amount) public {
        require(amount <= address(this).balance, "Insufficient Balance");
    }
}
