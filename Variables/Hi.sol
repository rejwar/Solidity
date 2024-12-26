// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ListStorage{
    uint[] public numbers;

    function AddNumber(uint Number) public {
        numbers.push(Number);
    }

    function GetNumber(uint Index)public view returns(uint){
        return numbers[Index];
    }

    function GetCount() public view returns(uint){
        return numbers.length;
    }
}
