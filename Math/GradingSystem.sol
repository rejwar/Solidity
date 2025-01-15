// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradingSystem{
    mapping (address => uint) public Scores;

    function AddScore(uint Score) public {
        require(Score<=100, "Score must not be between 0 To 100");
        Scores[msg.sender] = Score;

    }

    function GetLetterGrade() public view returns (string memory){
        uint Score = Scores[msg.sender];

        if(Score >= 90){
            return "A+";

        }else if(Score >= 70){
            return "A";
        }else if(Score >=60){
            return "B";
        }else{
            return "F";
        }

    }
}
