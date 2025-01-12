// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract EmployeeAge{
    struct Employee{
        uint Age;
    }

    Employee[] public  Employees;

    function AddEmployee(uint Age_) public {
        Employees.push(Employee(Age_));
    }
}
