// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentScoreMapping{
    mapping (uint => uint) public StudentScore;

    function StudentScore(uint StudentId, uint _score) public {
        StudentScore[_studentId] = _score;
    }

    function GetScore(uint _studentId) public view returns (uint){
        return  StudentScore(_studentId);
    }
}
