// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract whileTest {
    uint8 i = 0;
    uint8 result = 0;

    function sum(

    )public returns (uint data){
        while (i<3){
            i++;
            result = result+i;
        }
        return result;
    }
}
