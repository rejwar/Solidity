// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMapping{
    mapping (address => uint) public Balances;

    function SetBalance(uint Value) public {
        Balances[msg.sender] = Value;
    }

    function GetBalance(address Addr) public view returns (uint){
        return  Balances[Addr];
    }
}

