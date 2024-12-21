// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFirstContract{
    string public hey;
    uint256 public no;

    constructor (string memory _hey, uint _no){
        hey = _hey;
        no = _no;
    }
}
