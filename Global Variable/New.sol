// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract TxExample {
    address public txCaller;
    
    function recordTxOrigin() public  {
        txCaller = tx.origin;
        
    }
}
