// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductOfNumbers{
    uint public Product;

    function CalculateProduct() public {
        Product =1;
        for(uint i =1; i<=10 ; i++){
            Product *=i;
        }
    }

}
