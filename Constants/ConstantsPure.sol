// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken{
    uint public constant InitialSupply = 10000;

    function GetSupply() public pure returns(uint){
        return InitialSupply;
    } 
}
