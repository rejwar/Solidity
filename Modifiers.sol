// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Owner {
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    
    }

    modifier costs (uint price ) {
        if (msg.value => price){
            _;
        }
    }
}
