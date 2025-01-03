
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoragePointer{
    uint[] public Numbers;

    function ModifyStorage(uint Index , uint Value) public {
        uint[] storage Pointer = Numbers;
        Pointer[Index] = Value;
    }
    
    function AddElement(uint Value) public {
        Numbers.push(Value);
    }

    function GetNumbers() public view returns (uint[] memory){
        return Numbers;
    }
}
