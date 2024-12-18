// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TwoDimensionalArray{
    uint[][] public twoDArray;

    function addRow (uint[] memory _row) public {
        twoDArray.push(_row);
    }

    function getRow(uint _index) public view returns (uint[] memory){
        return twoDArray[_index];
    }
}
