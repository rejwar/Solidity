// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NestedMapping{
    mapping (address => mapping (uint => string)) public data;

    function SetData(address User , uint Id , string memory Value) public {
        data[User][Id] = Value;
    } 

    function GetData(address User ,uint Id) public view returns (string memory){
        return data[User][Id];
    }
}
