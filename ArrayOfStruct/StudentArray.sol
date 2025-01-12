// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentManagement{
    struct Student{
        string Name;
        uint RollNumber;
    }

    Student[] public  Students;

    function AddStudent(string memory Name_, uint RollNumber_) public {
        Students.push(Student(Name_ , RollNumber_));
    }

    function GetStudent(uint Index) public view returns (string memory , uint){
        Student memory Student_= Students[Index];
        return  (Student_.Name , Student_. RollNumber);
    }
}
