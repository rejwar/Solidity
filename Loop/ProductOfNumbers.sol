// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract ProductOfNumbers{

    uint public product= 1;

    function CalculateProduct() public {
        for (uint i=1; i<=10 ; i++){
            product *=i;
        }
    }
}
