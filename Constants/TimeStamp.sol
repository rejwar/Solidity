// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImmutableVsConstant{
    uint public constant MaxLimit= 1000;

    uint public immutable StartTime;

    constructor() {
        StartTime = block.timestamp;
    }
}
