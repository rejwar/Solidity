// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConstantExchangeRate{
    uint public constant ExchangeRate = 75;

    function calculateUSD(uint etherAmount) public pure returns(uint){
        return etherAmount*ExchangeRate;
    }
}
