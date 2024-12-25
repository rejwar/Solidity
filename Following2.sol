// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base{
    uint data;
    constructor(uint _data) public {
        data = _data;
    }
}

constructor Derived is Base (5) {
    constructor() public {}
}
