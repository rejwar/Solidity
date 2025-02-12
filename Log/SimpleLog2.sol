// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackExample2{
    event LogEvent( address indexed sender, uint amount);


    fallback() external payable { 

    emit LogEvent(msg.sender , msg.value);
}
}
