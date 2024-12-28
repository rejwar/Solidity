// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SquarePrint{
    uint[] public numbers;

    function GenerateSquareNumbers() public {
        for(uint i=1; i<=10 ; i++){
            numbers.push(i*i);
        }
    }
}
