// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MultiAccountBalances{
    mapping (address => mapping (uint => uint)) public accountBalances;

    function SetBalance(address _user , uint accoutId , uint _balance) public {
        accountBalances[_user][accoutId] = _balance;
    }

    function GetBalance(address _user , uint _accountId) public view returns (uint){
        return accountBalances[_user] [_accountId];
    }

    }
