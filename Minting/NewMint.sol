// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HashFunctions {
    function keccak256Hash(string memory data) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(data));
    }

    function sha256Hash(string memory data) public pure returns (bytes32) {
        return sha256(abi.encodePacked(data));
    }

    function sha3Hash(string memory data) public pure returns (bytes32) {
        return sha3(abi.encodePacked(data));
    }

    function ripemd160Hash(string memory data) public pure returns (bytes20) {
        return ripemd160(abi.encodePacked(data));
    }
}
