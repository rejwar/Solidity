// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherStore{
    mapping (address => uint) public Balances;

    function Deposit() public payable {
        Balances[msg.sender] += msg.value;
    }

    function Withdraw(uint amount) public {
        require(Balances[msg.sender] >= amount, "Insufficient Balance");
    payable (msg.sender).transfer(amount);
    Balances[msg.sender] -= amount;
    }

    function GetBalance() public view returns(uint){
        return Balances[msg.sender];
    }
}
