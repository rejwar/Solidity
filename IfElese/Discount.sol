// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Discount{
    function CalculateDiscount(uint256 amount) public pure returns(uint256){
        if(amount > 1000){
            return amount*10/100;
        }else {
            return 0;
        }
    }
}
