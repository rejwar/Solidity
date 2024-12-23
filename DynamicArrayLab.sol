// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    function testArray() public pure {
        uint len = 7;

        // Dynamic array of uint
        uint[] memory a = new uint[](len);

        // Dynamic array of bytes
        bytes memory b = new bytes(len);

        // Check lengths
        assert(a.length == len);
        assert(b.length == len);

        // Assign a value in the uint array
        a[6] = 8;
        assert(a[6] == 8);

        // Static array of uint
        uint[3] memory c = [uint(1), 2, 3];
        assert(c.length == 3);
    }
}
