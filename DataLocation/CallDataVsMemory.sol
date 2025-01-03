// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CallDataVsMemory{
    function ProcessMemory(uint[] memory Numbers) public pure returns (uint){
        Numbers[0] = 100;
        return Numbers[0];
    }

    function ProcessCallData(uint[] calldata Numbers) public pure returns(uint){
        return Numbers[0];
    }
}
