// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructGrading{
    struct Student{
        string Name;
        uint Roll;
        uint Marks;
    }

    mapping (uint => Student ) public Students;
    uint public StudentCount;


    function AddStudent(string memory Name_ , uint Roll_ , uint Marks_) public {
        require( Marks_ <= 100, " Marks can't excessed 100");
        StudentCount++;
        Students[Roll_] = Student(Name_, Roll_ , Marks_);
    }

    function GetGrade(uint Roll_) public  view returns (string memory){
        require (Students[Roll_]. Roll == Roll_, "Student Not found");

        uint Marks = Students[Roll_].Marks;
        if(Marks >= 90) return  "A+";         if(Marks >= 80) return  "A";
       else  if(Marks >= 70) return  "B";
      else   if(Marks >= 60) return  "C";
      else  if(Marks >= 50) return  "D";
     else   return  "F";
    }

    function GetStudent(uint Roll_) public view returns (string memory , uint , uint , string memory){
        require(Student[Roll_].Roll == Roll_, "Student Not found ");

        Student  memory Stud = Students[Roll_];
        return  (Stud. Name , Stud.Roll, Stud.Marks , GetGrade(Roll_));
    }

}
