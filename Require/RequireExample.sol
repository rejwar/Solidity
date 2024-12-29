// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireExample{
    function CheckNumber(uint Number) public pure returns (string memory){
        require(Number>10 , "Number Must be greater than 10");
        return "Number is vaild !";
    }
}
