// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DefaultFallback{
    event Log(string message);

    fallback() external payable { 
        emit Log("Message Not found");
    }
}
