// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calulator{
    function getResult() public view returns(uint);
}

contract Test is Calculator{
    function getResult() public view returns(uint){
        uint a = 1;
        uint b = 2;
        uint result = a+b;
        return result;
    }
}
