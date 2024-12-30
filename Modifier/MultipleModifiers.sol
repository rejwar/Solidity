// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultipleModifier {
    uint public Value =0;

    modifier GreaterThanTen (uint Value_){
        require(Value_ >10 , "VAlue must be greater than 10");
        _;
    }

    modifier LessThanFifty(uint Value_){
        require(Value_ <50 , "Value must be less than 50");
        _;
    }

    function SetValue(uint Value_) public GreaterThanTen (Value_) LessThanFifty (Value_) {
        Value =Value_;
    }
}
