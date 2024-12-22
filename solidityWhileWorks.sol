// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract whileTest {
    uint8 i =0;
    uint8 result = 0;

    function sum(

    ) public returns (uint data){
        do{
            i++;
            result = result+i;
        }
        while (i<3);
        return result;
    }
}
