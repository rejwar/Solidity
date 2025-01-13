// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMapping{
    mapping (address=> uint) public Balances;

    function SetBalance(uint Value_) public {
        Balances[msg.sender] =Value_;
    }

    function GetBalance(address Addr_) public view returns (uint){
        return Balances[Addr_];
    }
}
