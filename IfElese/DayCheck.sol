// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DayCheck{
    function CheckDay(string memory day) public pure returns (string memory){
        if(
            keccak256(abi.encodePacked(day)) ==keccak256(abi.encodePacked("Saturday")) ||
            keccak256(abi.encodePacked(day)) ==keccak256(abi.encodePacked("Sunday"))
        ) {
            return "WEEKEND";
        } else {
            return "Weekday";
        }
    }
}
