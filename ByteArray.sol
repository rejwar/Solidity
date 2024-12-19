// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  ByteArray{
    bytes public data;

    function addBytes (bytes1 b) public {
        data.push(b);

    }

    function getLength() public view returns (uint){
        return data.length;
    }
}
