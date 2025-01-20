// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownership{
    address public Owner;

    constructor() {
        Owner = msg.sender;
    }

    modifier OnlyOwner() {
        require(msg.sender == Owner, "Not the Owner");
        _;
    }

    function TransferOwnership (address NewOwner) public OnlyOwner{
        require(NewOwner != address(0), "Invalid address");
        Owner = NewOwner;
    }
}
