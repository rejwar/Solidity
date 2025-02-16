// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeWithdrawl{
    mapping ( address => uint256  ) public Balances;

    function deposit() public payable {
        Balances [msg.sender] += msg.value;
    } 

    function withdraw ( uint256 Amount) public {
        require( Balances[msg.sender] >= Amount , "Innsufficient Balance ");

        Balances[msg.sender] -= Amount;

        (bool success , ) = msg.sender .call { value: Amount}("");
        require(success , "Transfer failed");
    }
}
