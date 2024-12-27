// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalculateData{
    function getRectangleArea(uint length , uint width) public pure returns(uint){
        uint area = length * width;

        return area;
    }
}
