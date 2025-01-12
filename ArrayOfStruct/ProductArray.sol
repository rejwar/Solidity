// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


        struct Product{
            string Name;
            uint price;
            uint Quantity;
        }

        contract Store{
            Product[] public Products;

                function AddProduct(string memory Name_ , uint Price_, uint Quantity_) public {
                    Products.push(Product(Name_, Price_,Quantity_));
                }
        }
