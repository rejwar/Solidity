
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample{
    uint[5] public fixedArray = [ 1,2,3,4,5,6,7];


    //Dynamic size array
    uint[] public dynamicArray;

    function addElement(uint _value) public {
        dynamicArray.push(_value);
    }

    function getLength() public view returns (uint){
        return dynamicArray.length;
            }

            function popElement() public {
                dynamicArray.pop();
            }
}
