// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VehicleRegistry {
    struct Vehicle{
        string Make;
        string Model;
        uint Year;
    }

    Vehicle[] public Vehicles;  // Vehicles নামে অ্যারে বানান

    function AddVehicle( string memory Make_, string memory Model_, uint Year_) public {
        Vehicles.push(Vehicle(Make_,Model_,Year_));
    }

    function GetVehicle(uint Index) public view returns (string memory , string memory, uint ){
        Vehicle memory vehicle_ = Vehicles[Index];  // Vehicles ব্যবহার করুন
        return (vehicle_.Make, vehicle_.Model , vehicle_.Year);  // Vehicle_ থেকে Year ব্যবহার করুন
    }
}
