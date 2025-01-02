 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArrayBasic {
    uint[] public Numbers;

    function AddElement(uint Value) public {
        Numbers.push(Value);
    }

    function GetArrayLength() public view returns(uint){
        return Numbers.length;
    }

    function GetElement(uint Index) public view returns (uint){
        require (Index <Numbers.length, "Index out of Bounds");
        return Numbers[Index];
    }
}
