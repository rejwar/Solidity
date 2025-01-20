// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Receiver{
    event Received(address, uint);

    receive() external payable { 
        emit Received(msg.sender , msg.value);
    }
}

contract Sender{
    function SendEther(address payable  receiver) public payable {
        require(receiver != address(0), "Invalid address");
        receiver.transfer(msg.value);
    }
}
