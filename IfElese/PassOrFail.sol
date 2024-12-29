// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract PassOrFail{
    function GetResult(uint256 marks) public pure returns (string memory){
        if (marks >= 40){
            return "Pass";
        } else {
            return "Fail";
        }
    }
}
