// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleFallback{
    event LogFallback(address sender , uint amount);
    
        fallback() external payable {
            emit LogFallback(msg.sender,msg.value);
         }
    }
