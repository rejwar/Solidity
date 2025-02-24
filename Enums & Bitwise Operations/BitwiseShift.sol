// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseShift {
    function LeftShift(uint8 A, uint8 ShiftBy) public pure returns (uint8) {
        return A << ShiftBy;  // বাম দিকে শিফট করা
    }

    function RightShift(uint8 A, uint8 ShiftBy) public pure returns (uint8) {
        return A >> ShiftBy;  // ডান দিকে শিফট করা
    }
}
