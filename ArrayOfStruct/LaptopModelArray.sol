// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LaptopModels{
    struct Laptop{
        string Brand;
    }

    Laptop[] public Laptops;

    function AddLaptop(string memory Brand_) public {
        Laptops.push(Laptop(Brand_));
    }
}
