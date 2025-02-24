// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructExamples {
    // 1. বেসিক struct - একজন ব্যক্তির তথ্য
    struct Person {
        string name;
        uint age;
        address walletAddress;
    }

    // 2. নেস্টেড struct - একটি কোম্পানির তথ্য
    struct Company {
        string name;
        Person ceo;
        Person[] employees;
        mapping(address => Person) employeeDetails;
    }

    // 3. struct এর ভিতরে enum ব্যবহার
    enum Status { Active, Inactive, OnLeave }
    struct Employee {
        Person basicInfo;
        Status status;
        uint256 salary;
        uint256 joiningDate;
    }

    // struct ভ্যারিয়েবল ডিক্লেয়ার
    Person public owner;
    mapping(address => Person) public people;
    Person[] public personList;
    Company public myCompany;

    // 4. struct এর সাথে ইভেন্ট
    event PersonAdded(string name, uint age, address indexed walletAddress);
    event EmployeeUpdated(address indexed employeeAddress, Status newStatus);

    constructor() {
        // struct ইনিশিয়ালাইজেশন
        owner = Person("Owner", 30, msg.sender);
    }

    // 5. struct প্যারামিটার হিসেবে
    function addPerson(Person memory _person) public {
        people[msg.sender] = _person;
        personList.push(_person);
        emit PersonAdded(_person.name, _person.age, _person.walletAddress);
    }

    // 6. struct রিটার্ন করা
    function getPerson(address _addr) public view returns (Person memory) {
        return people[_addr];
    }

    // 7. struct আপডেট করা
    function updateEmployee(address _emp, Status _newStatus) public {
        Employee storage emp = myCompany.employeeDetails[_emp];
        emp.status = _newStatus;
        emit EmployeeUpdated(_emp, _newStatus);
    }

    // 8. অ্যাডভান্সড: struct আরে ম্যানিপুলেশন
    function getActiveEmployees() public view returns (Person[] memory) {
        uint count = 0;
        // প্রথমে একটিভ এমপ্লয়ির সংখ্যা গণনা
        for(uint i = 0; i < myCompany.employees.length; i++) {
            if(myCompany.employeeDetails[myCompany.employees[i].walletAddress].status == Status.Active) {
                count++;
            }
        }

        // নতুন অ্যারে তৈরি
        Person[] memory activeEmployees = new Person[](count);
        uint index = 0;
        
        // একটিভ এমপ্লয়িদের কপি
        for(uint i = 0; i < myCompany.employees.length; i++) {
            if(myCompany.employeeDetails[myCompany.employees[i].walletAddress].status == Status.Active) {
                activeEmployees[index] = myCompany.employees[i];
                index++;
            }
        }
        
        return activeEmployees;
    }
}
