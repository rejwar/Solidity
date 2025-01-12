// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Inventory{
    struct Product{
        string Name;
        uint256 Price;
        uint256 Quantity;
    }

    Product[] public Products;

    function AddProduct (string memory Name_ , uint256 Price_ ,uint256 Quantity) public {
        Products.push(Product(Name_ , Price_ , Quantity));

    }

    function GetProduct(uint256 Index) public view returns (string memory , uint256 , uint256){
        return (Products[Index].Name,Products[Index].Price , Products[Index].Quantity);
    }
}
