// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myContract{
    uint public storeValue;

    constructor (uint _value)
    {
        storeValue= _value;
    }

    function getStorevalue () public view returns(uint)
    {
        return storeValue;
    }
}
