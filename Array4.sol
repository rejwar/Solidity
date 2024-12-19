// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedArrayExample{
    uint[5] public fixedArray = [ 1,3,4,5,6];

    function getElement(uint index ) public view returns (uint){
        return fixedArray [index];
    }
}
