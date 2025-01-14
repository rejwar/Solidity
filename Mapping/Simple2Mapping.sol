// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMapping{

    mapping(address =>uint ) public Balances;

    function UpdateBalance(address User_ ,uint Amount) public {
        Balances[User_] = Amount;
    }


    function GetBalance (address User_) public view returns (uint){
        return Balances[User_];
    }
}
