//Mapping

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicMapping{
    mapping (address => uint ) public balances;

    function setBalance(uint _balance ) public {
        balances[msg.sender] = _balance;
    }


    function getBalance(address _user) public view returns (uint){
        return balances[_user];
    }
}
