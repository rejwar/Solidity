// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArrayMax{
    uint[] public Numbers;

    function AddElement(uint Value) public {
        Numbers.push(Value);
    }

    function FindMax() public view returns (uint){
        require (Numbers.length>0,"Array is empty");
        uint max = Numbers[0];
        for(uint i = 1; i<Numbers.length;i++){
            if(Numbers[i] >max){
                max= Numbers[i];
            }
        }
    }
}
