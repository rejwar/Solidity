// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Student {
    string Name;
    uint RollNumber;
    uint Age;
}

contract Studentrecord {
    Student[] public Students;

    function AddStudent(string memory Name_, uint RollNumber, uint Age_) public {
        Student memory NewStudent = Student(Name_, RollNumber, Age_); // RollNumber_ -> RollNumber
        Students.push(NewStudent);
    }
}
