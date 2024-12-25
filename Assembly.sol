// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Sum {
    // Function to calculate sum using inline assembly
    function SumUsingInLineAssembly(uint[] memory _data) internal pure returns (uint o_sum) {
        for (uint i = 0; i < _data.length; ++i) {
            assembly {
                o_sum := add(o_sum, mload(add(add(_data, 0x20), mul(i, 0x20))))
            }
        }
    }
}

contract Test {
    using Sum for uint[];

    uint[] data;

    // Constructor to initialize the array
    constructor() {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    // Function to return the sum of the array
    function sum() external view returns (uint) {
        return data.SumUsingInLineAssembly();
    }
}
