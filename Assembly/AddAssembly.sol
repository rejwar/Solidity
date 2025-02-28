// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssemblyAdd {
    function add(uint a, uint b) public pure returns (uint) {
        assembly {
            let result := add(a, b) // যোগফল বের করা
            mstore(0x40, result) // মেমরিতে যোগফল স্টোর করা
            return(0x40, 32) // মেমরি থেকে যোগফল রিটার্ন করা
        }
    }
}
