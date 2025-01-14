// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRecords{
    mapping (uint=> string) public Students;

    function AddStudent(uint Id, string memory Name) public {
        Students[Id] = Name;
    }

    function GetStudents(uint Id) public view returns (string memory){
        return  Students[Id];
    }
}
