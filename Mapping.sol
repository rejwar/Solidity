// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract myContract{
    // Mapping in solidity 


    mapping(address => uint ) public myMap;

    function fun() public {
        myMap[msg.sender] =50;
        
        myMap[msg.sender]
        myMap[msg.sender] = 100;

        delete myMap[msg.sender]
    }
}
