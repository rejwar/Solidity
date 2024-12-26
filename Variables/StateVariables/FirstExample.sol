// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract MyContract{
    uint public age;

    constructor(uint _initialAge){
        age = _initialAge;
    }

    function SetAge(uint _newAge) public {
        age = _newAge;
    }

    function getAge() public view returns (uint){
        return age;
    }
}