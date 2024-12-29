// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaskPeriority{
    function CheckPeriority(uint256 priority) public pure returns(string memory){
        if (priority ==1){
            return "High Periority";
        } else  if (priority ==2){
            return "Maeium Priority";
        } else if (priority ==3){
            return "Low Priority";
        } else {
            return "Invalid Priority";
        }
    }
}
