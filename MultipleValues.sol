// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test{
    function getResult() public view returns(uint product , uint sum){
        uint a =1;
        uint b = 2;
        product = a*b ;
        sum = a+b;
    }
}
