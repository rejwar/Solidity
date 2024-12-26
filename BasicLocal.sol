// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariableExample{
    function CalculateSum() public pure returns (uint){
        uint num1 = 10;
        uint num2 =20;

        uint sum = num1+num2;
        return sum;
    }
}
