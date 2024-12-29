// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertExample{
    uint public total;

    function increment(uint value) public {
        total += value;

        assert(total>=value);
    }
}
