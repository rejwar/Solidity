// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base{
    uint data; 
    constructor (uint _data) public {
        data = _data;
    }
}

contract Derived is Base{
    constructor (uint _info) Base (_info * _info) public {}
}
