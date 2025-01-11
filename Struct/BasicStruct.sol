// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicStruct{
    struct Person{
        string Name;
        uint Age;
    }

    Person public Person_;

    function SetPerson (string memory Name_ , uint Age_) public {
        Person_ = Person(Name_, Age_);
    }
}
