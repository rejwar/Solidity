// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataLocation {
uint256[] public arr;
mapping (uint => address ) map;

struct MyStruct {
    uint256 foo;
}

mapping (uint256 => MyStruct) MyStruct;

function f() public {
    _f(arr, map, MyStruct[1]);

    MyStruct storage MyStruct = MyStruct[1];
    MyStruct memory myMemStruct = MyStruct(0);
}

function _f(
    uint256[] storage _arr;
    mapping(uint256 => address ) storage map,
    MyStruct storage _myStruct
) internal  {
    //
}

function g(uint256[] memory _arr) public returns (uint256[] memory)
{
    //
}

function h(uint256[] calldata _arr)external {}

}
