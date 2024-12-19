// type constant <variable_name> = <value>

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConstantsExample{
    uint constant MyConstant = 100;

    function GetConstant() public pure returns (uint){
        return MyConstant;
    }
}
