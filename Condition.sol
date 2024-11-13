// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract firstContract{
    function fun(uint b ) public pure returns(uint){
        if(b ==20){
            return  1;
        }
        else {
            return 0;
        }
    }
}
