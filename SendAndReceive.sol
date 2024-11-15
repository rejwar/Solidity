// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract myContract{
function sendEther ( address payable receiver, uint amount ) public {
    receiver. transfer(200);
}
    function receivedEther() public  payable
    {  
    uint receivedAmmount  = msg.value ;
    }
}
