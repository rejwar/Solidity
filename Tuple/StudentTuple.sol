// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TupleDestructing {
    // This function returns a tuple containing student information
    function GetStudentInfo() public pure returns (string memory, uint, bool) {
        return ("Alice", 21, true);
    }

    // This function uses tuple destructuring to get student name and age
    function UseTuple() public pure returns (string memory, uint) {
        (string memory name, uint age, ) = GetStudentInfo();
        return (name, age);
    }
}
