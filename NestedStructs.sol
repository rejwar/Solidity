// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NestedStruct{
    struct Student {
        string name ;
        uint256 rollNo;
        Grade grades;
    }

    struct Grade {
        uint256 math;
        uint256 science;
    }

    Student public students;
     
     function setsStudent (string memory _name ,uint256 _rollNo , uint256 _math , uint256 _science ) public {
        students = Student (_name , _rollNo , Grade (_math , _science));
     }
}
