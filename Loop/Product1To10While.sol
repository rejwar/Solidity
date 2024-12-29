// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract production1ToWhile{
    uint public product;

    function CalculateProduct() public {
        uint i =1;
        product =1;

        while (i<=10){
            product *=i;
            i++;
        }
    }
}
