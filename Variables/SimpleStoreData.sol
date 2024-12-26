x// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    uint public StoredData;

    function set(uint x) public {
        StoredData = x;
    }

    function get() public view returns(uint){
        return StoredData;
    }
}
