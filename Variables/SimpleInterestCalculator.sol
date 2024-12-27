// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleInterestCalculator{
    function CalculateSimp(uint principale , uint rate, uint time) public pure returns (uint){
        uint interest = (principale * rate * time);
        return interest;
    }
}
