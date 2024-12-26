// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnHunter{
    uint public num;

    function set(uint Number) public{
        num = Number;
    }

    function getNumber() public view returns(uint){
        return num;
    }
}
