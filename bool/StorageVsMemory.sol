// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageMemoryExample {
    bool public StoredValue;

    function SetStoredValue(bool _value) public {
        StoredValue = _value;
    }

    function GetMemoryValue(bool _value) public pure returns (bool){
        return _value;
    }
}
