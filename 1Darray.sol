// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdvancedArray{
    uint[] public numbers;

    function setNumbers() public {
        numbers.push(1);
        numbers.push(2);
    }

    function modifyInMemory() public view returns (uint[] memory){
        uint[] memory tempArray = numbers;
        tempArray[0] = 42;
        return tempArray;
    }
}
