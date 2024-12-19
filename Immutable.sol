// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Immutable{
    address public immutable MyAddr;
    uint256 public immutable MyUint;

    constructor(uint256 _myUint){
        MyAddr = msg.sender;
        MyUint = _myUint;
    }
}
