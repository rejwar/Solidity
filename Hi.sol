// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SolidityTest{
    uint age ;
    constructor() public {
        age =60;
    }

    function checkAge() public view returns (string memory){
        if (age >60){
            return "60";
        }
        else{
            return "less than 60";
        }
        return "default";
    }
}

