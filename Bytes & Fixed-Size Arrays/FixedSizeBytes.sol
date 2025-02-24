// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedSizeBytes {
    bytes32 public Data1 = "Blockchain";  // Fixed 32-byte array
    bytes4 public Data2 = 0x12345678;  // Fixed 4-byte array

    function GetFirstByte() public view returns (bytes1) {
        return Data1[0]; // প্রথম বাইট রিটার্ন করবে
    }
}
