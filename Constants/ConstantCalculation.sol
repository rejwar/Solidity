// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PriceCalculator{
    uint public constant VatRate = 15;
    uint public constant DutyRate = 5;

    function CalculateFinalPrice( uint price) public pure returns(uint){
        uint vat = (price * VatRate) / 100;
        uint duty = (price * DutyRate) / 100;

        return price + vat + duty;
    }
}
