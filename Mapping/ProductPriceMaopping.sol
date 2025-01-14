// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductPriceMapping{
    mapping (string=> uint) public productPrices;


    function SetPrice(string memory _product, uint _price) public {
        productPrices[_product] = _price;
    }

    function GetPrice(string memory _product) public view returns (uint){
        return productPrices[_product];
    }
}
