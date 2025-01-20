// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract balanceChecker{
    function CheckBalance(address Address_) public view returns(uint){
        return  Address_.balance;
   }
}
