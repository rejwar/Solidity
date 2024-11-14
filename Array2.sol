// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array {
    uint[] public  arr;
    uint[] public arr2;

    //fixed sized array 

    uint[10] public myFixedArray;

    function get(uint i) public view returns (uint){
        return arr[i];
    }

//solidity can return the entire array     
// But thi sfunction should be avoided for 

function getArr() public  view returns (uint[] memory){
    return arr;
}

function push(uint i) public {
    //append to array
    arr.push(i);
}

function pop() public{
    arr.pop();
}

function getlength() public  view returns (uint){
    return arr.length;
}

function remove (uint index ) public{
    delete  arr[index];
}

function examples() external{
uint[] memory a = new uint[](5);
}
}
