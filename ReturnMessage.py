// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ShowMessage{
    function getMessage() public pure returns (string memory)
    {
        return "hello solidity";
    }
}
