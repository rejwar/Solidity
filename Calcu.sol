// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Calculator {
    function GetResult() external view returns(uint);
}

contract Test is Calculator {
    constructor() public {}
    function GetResult() external view returns(uint){
        uint a = 1;
        uint b = 2;
        uint result = a+b;
        return result;
    }
}
