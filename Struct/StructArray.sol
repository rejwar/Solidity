// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructArray {
    struct Person {
        string Name;
        uint Age; 
    }

    Person[] public People;

    function AddPerson(string memory Name_, uint Age_) public {
        People.push(Person(Name_, Age_));
    }

    function GetPerson(uint Index) public view returns (string memory, uint) {
        require(Index < People.length, "Index out of bounds");
        Person memory Person_ = People[Index];
        return (Person_.Name, Person_.Age);
    }
}
