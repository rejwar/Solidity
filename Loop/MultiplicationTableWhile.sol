// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MultiplicationTableWhile{
    uint[] public Table;

    function GenerateTable(uint num) public {
        uint i =1;
        while (i <=10){
            Table.push(num*1);
              i++;      
                    }
    }
}
