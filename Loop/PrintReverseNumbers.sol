// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReversePrint{
    uint[] public numbers;

    function GenerateReverseNumbers() public {
        for(uint i=10; i>=1 ; i--){
            numbers.push(i);
        }
    }
}
