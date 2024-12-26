// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceStorage{
    mapping (address=> uint) public balances;

    function SetBalance(address Address, uint Balance) public {
        balances[Address] = Balance;
    }

    function getBalance( address Address) public view returns(uint){
        return balances[Address];
    }
}
