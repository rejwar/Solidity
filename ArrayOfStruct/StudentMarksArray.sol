// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentMarks{
    struct Student{
        string Name;
        uint Marks;
    }
    Student[] public Students;

    function AddStudent(string memory Name_,uint Marks_) public {
        Students.push(Student(Name_,Marks_));
    }

    function GetStudent(uint Index) public view returns (string memory, uint ){
        Student memory Student_ = Students[Index];
        return (Student_.Name , Student_.Marks);
    }
}
