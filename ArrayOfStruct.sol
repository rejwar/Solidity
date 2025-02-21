// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayOfStruct{
    struct Person{
        string name;
        uint age;
    }

    Person[] public People;

    function AddPerson(string memory Name_ , uint Age_) public {
        People.push(Person(Name_,Age_));
    }

    function GetPerson(uint Index) public view returns (string memory , uint){
        Person memory Person_ = People[Index];
        return (Person_.name, Person_.age);
    }

    function GetTotalPeople() public view returns(uint){
        return People.length;
    }
}
