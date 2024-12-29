// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 contract RevertExample{
    function SetAge(uint age )  public pure{
        if(age<18){
            revert("Age must be at least 18");
        }
    }
    }
