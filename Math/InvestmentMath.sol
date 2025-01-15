// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InvestmentCalculator{
    function calculateROI(uint investment , uint returnAmount) public pure returns{
        return (returnAmount *100)/investment;
    }

    function calculateInterest(uint principal , uint rate ) public pure returns (uint){
        return (principal * rate) / 100;
    }
}
