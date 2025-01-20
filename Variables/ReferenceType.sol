// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample{
    uint[5] public array
    = [uint (1), 2,4,5,6,7,89,90];

    struct student{
        string Name;
        string Subject;
        uint8 Marks;
    }

    student public  std1;

    function structure() public returns(
        string memory, string memory , uint){
            std1.name = "John";
            std1.Subject = "Chemistry";
            std1.Marks = 88;

            return (
                std1.Name , std1.Subject , std1.Marks);
            
        }

        mapping (address => student) result;
        address[] student_result;
}
