// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiplicationTable{
    uint[] public Table;

    function GenerateTable(uint num) public {
        for(uint i =1 ; i<=10 ; i++){
            Table.push(num*i);
        }
    }
}
