// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Comparison{
    uint public MinimumAge =10;
    uint public MaximumAge = 100;

    function IsAdult( uint Age) public view returns (bool){
        return Age <= MaximumAge;
    }
}
