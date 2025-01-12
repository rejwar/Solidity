// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CityPopulation{
    struct City{
        uint Population;
    }

    City[] public Cities;

    function AddCity(uint Population_) public {
        Cities.push(City(Population_));
    }
}
