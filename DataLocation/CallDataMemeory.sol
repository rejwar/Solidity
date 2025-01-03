// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageExample{
    uint public MyNumber;

    function SetNumber (uint Number) public {
        MyNumber = Number;
    }

    function GetNumber() public view returns(uint){
        return MyNumber;
    }
}
