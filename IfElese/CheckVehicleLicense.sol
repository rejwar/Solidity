// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LicenseCheck{
    function checkLicense(string memory TypeOfVehicle) public pure returns (string memory){
        if (keccak256(abi.encodePacked(TypeOfVehicle)) ==keccak256(abi.encodePacked("car"))){
            return "car License Required";
        } else  if (keccak256(abi.encodePacked(TypeOfVehicle))==keccak256(abi.encodePacked("Bike"))){
            return "Bike License Required";
        }else
    {
        return "Unknown";
    }
    }
}
