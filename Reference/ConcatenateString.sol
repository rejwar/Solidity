// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConcatenateString {
    // Function to concatenate two strings
    function concatenate(string memory str1, string memory str2) public pure returns (string memory) {
        return string(abi.encodePacked(str1, str2));
    }
}
