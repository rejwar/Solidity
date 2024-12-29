// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LargeNumber{
    function FindLargest(uint256 a , uint256 b , uint256 c) public pure returns (uint256){
        if (a>b && a>c){
            return  a;
        }else if(b>c){
            return b;
        }else {
            return c;
        }
    }
}
