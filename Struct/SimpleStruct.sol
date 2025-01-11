// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{

    struct Person{
        string Name;
        uint256 Age;
    }

    Person public Person1;

    constructor(){
        Person1 = Person("Alice" , 25);
    }

    function GetPersonName() public view returns (string memory){
        return Person1.Name;
    }

    function GetPersonAge() public view returns (uint256){
        return Person1.Age;
    }
}
