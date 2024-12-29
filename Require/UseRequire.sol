// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Soldity{
    function SetAge(uint age) public pure {
        require(age >0, "Age must be Positive");
    }
}
