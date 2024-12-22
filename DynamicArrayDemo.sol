// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    // Define a struct for Employee
    struct Employee {
        uint id;
        string name;
        uint salary;
    }

    // Declare an employee variable
    Employee employee;

    // Function to add an employee
    function addEmployee() public {
        employee = Employee(1, "John", 5000);
    }

    // Function to get the employee ID
    function GetEmployeeId() public view returns (uint) {
        return employee.id;
    }
}
