// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Caller {
    address public LibraryAddress;

    constructor(address LibraryAddress_) {
        LibraryAddress = LibraryAddress_;
    }

    function DelegateCallFunction(bytes memory Data) public {
        (bool success, ) = address(LibraryAddress).delegatecall(Data);
        require(success, "DelegateCall failed");
    }
}
