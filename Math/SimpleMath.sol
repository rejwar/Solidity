// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathematicalOperation{
    uint public score = 0;

    function AddToScore(uint points) public {
        score = score + points;
       // score += points;

    }

    function MultiplyScore(uint number)  public {
        score =score * number;
    }

    function subtractionFunction( uint point ) public {
         require(score>= points , "score cannot be negative");
         score = scoren - points;
    }

    function dividedScore(uint number) public {
        require(number>0, "cannot divine by zero");
        score = score/ number;
        
    }
}
