// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract NestedStruct{
    struct Address{
        string street;
        string city;
    }

    struct Person{
        string Name;
        uint Age;
        Address HomeAddress;
    }

    Person public person;

    function SetPerson(
        string memory Name_,
        uint Age_,
        string memory Street_,
        string memory City_
    ) public {person = Person(Name_, Age_, Address(Street_, City_));
    }
}
