// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataLocationExample{
    string[] public names;

function addName(string memory _name) public {
    names.push(_name);
}

    }
