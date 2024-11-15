// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract myContract{
    // modifiers in solidity 

    address private owner;

    modifier onlyowner{
        require(msg.sender == owner , " This function must be accessed by the owner  ");

    _;
    }

     function sendEther (address payable receiver, uint amount) public onlyowner{
        receiver.transfer(amount);

     }

}
