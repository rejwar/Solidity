 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingAccount is Account{
    uint public InterestRate;

    function Deposit (uint amount) public override {
        balance += amount;
    }
    //..
}

contract CurrentAccount is Account{
//..
}
