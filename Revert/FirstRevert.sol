// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevertExample{
    uint public balance;

    function Deposit(uint amount) public {
        if (amount <=0){
            revert("Deposit amount must be greater than zero");
        }
        balance += amount;
    }
}
