// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArrayRemove{

    uint[] public Numbers;


    function AddElement(uint Value) public {
        Numbers.push(Value);
    }

    function RemoveElement(uint Index) public {
        require(Index < Numbers.length, "Index out of Bounds");
        for(uint i = Index; i<Numbers.length-1; i++){
            Numbers[i] = Numbers[i+1];
        }

        Numbers.pop();
    }

    function GetArray() public view returns(uint[]memory){
        return Numbers;
    }
}
