// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentGradeSystem {
    
    function CalculateAvg(uint num1, uint num2, uint num3) public pure returns (uint) {
        return (num1 + num2 + num3) / 3;
    }

    function gradeCheck(uint avg) public pure returns (string memory) {
        if(avg >= 80 && avg <= 100) { 
            return "A+";
        } 
        else if(avg >= 40 && avg <= 79) {
            return "A";
        } 
        else if(avg >= 33 && avg <= 39) { 
            return "B";
        } 
        else {
            return "Fail";
        }
    }

    function didPass(uint avg, uint attendance) public pure returns (bool) {
        return (avg >= 33 && attendance >= 20);
    }
}
