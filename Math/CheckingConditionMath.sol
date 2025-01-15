// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Comparison{
    uint public MinimumAge =10;
    uint public MaximumAge = 100;

    function IsAdult( uint Age) public view returns (bool){
        return Age <= MaximumAge;
    }

    function IsValidAge (uint Age) public view returns (bool){
        return Age >= MinimumAge  ||  Age < MaximumAge;
    }

    //checking conditions 

    function GetAgeGroup(uint Age) public view returns(string memory){

      if (Age <13){
        return "child";
    } else if(Age<20){
        return "Teenager";
        }
    }else{
    return "Adult";
    }
}
