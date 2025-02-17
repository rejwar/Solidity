// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Caller {
    function CallFunction(address Contract, bytes memory Data) public payable returns (bytes memory) {
        (bool success, bytes memory result) = Contract.call{value: msg.value}(Data);
        require(success, "External Call Failed");
        return result;
    } 
}
