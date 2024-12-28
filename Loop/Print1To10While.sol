// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Print1To10While{
    uint[] public Numbers;

    function PrintNumbers() public {
        uint i =1;
        while (i<=10){
            Numbers.push(i);
            i++;
        }
    }
}
