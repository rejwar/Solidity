// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Account{
    uint public Balance;

    function deposit(uint amount) public virtual;
    function withdraw(uint amount) public virtual;
}
