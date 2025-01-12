// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStudentList {

    struct Student{
        string Name;
        uint roll;
    }

    Student[] public Students;

    function AddStudent(string memory Name_ , uint Roll_) public {
        Students.push(Student(Name_,Roll_));
    }

}
