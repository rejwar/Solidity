// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringExample{
    string public MyString = "Hello , soliddity";

    function SetString(string memory NewString_) public {
        MyString = NewString_;
    }
}
