// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WhileTest {
    uint result = 0;

    function sum() public returns (uint) {
        for (uint i = 0; i < 10; i++) {
            if (i == 4) {
                continue; // Skip the iteration where i == 4
            }

            if (i == 5) {
                break; // Exit the loop when i == 5
            }

            result += i; // Add the value of i to result
        }

        return result;
    }
}
