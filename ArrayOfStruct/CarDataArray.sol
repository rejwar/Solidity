// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarRegistry{
    struct Car{
        string Brand;
        string Model;
        uint Year;
    }

    Car[] public Cars;

    function AddCar(string memory Brand_ , string memory Model_ , uint Year_) public {
        Cars.push(Car(Brand_ , Model_ , Year_));
    } 

    function GetCar(uint Index) public  view returns (string memory , string memory , uint ){
        Car memory Car_ = Cars[Index];
        return (Car.Brand , Car.Model, Car.Year);
    }
}
