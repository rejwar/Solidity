// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example3{
    function ArrayLength(uint[] calldata Data) external pure returns(uint){
        return Data.length;
    }
}
