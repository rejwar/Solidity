// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeSalaries{
    mapping (string => uint) public Salaries;

    function SetSalary(string memory EmployeeName, uint Salary) public {
        Salaries[EmployeeName] = Salary;
    } 

    function GetSalary(string memory EmployeeName) public view returns (uint){
        return Salaries[EmployeeName];
    }
}
