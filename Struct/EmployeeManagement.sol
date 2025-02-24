// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeManagement {
    struct Employee {
        string Name;
        uint Salary;
        string Department;
    }

    mapping(uint => Employee) public Employees; // Employee ID => Employee Struct
    uint public EmployeeCount;

    function AddEmployee(string memory _Name, uint _Salary, string memory _Department) public {
        EmployeeCount++;
        Employees[EmployeeCount] = Employee(_Name, _Salary, _Department);
    }

    function GetEmployee(uint _EmployeeId) public view returns (string memory, uint, string memory) {
        require(_EmployeeId > 0 && _EmployeeId <= EmployeeCount, "Invalid Employee ID!");
        Employee memory Emp = Employees[_EmployeeId];
        return (Emp.Name, Emp.Salary, Emp.Department);
    }
}
