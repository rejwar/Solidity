// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaxRates{
    uint public constant SalesTax = 10;
    uint public constant ImportDuty = 20;

    function calculateTotalTax (uint price) public pure returns(uint){
        uint SalesTax = (price * SalesTax) / 100;
        uint ImportDuty = (price * ImportDuty) /20;
        return SalesTax + ImportDuty;
    }
}
