// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarModels{
    struct Car{
        string Model;
    }

    Car[] public Cars;

    function AddCar(string memory Model_) public {
        Cars.push(Car(Model_));
    }
}
