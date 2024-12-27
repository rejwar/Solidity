// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract ConstantAddressExample{
    address public constant Owner = 0xC7e50F7fdEa73A0f75dF871D7c5d50AF7b5e50eE;

    function isOwner() public view returns(bool){
        return msg.sender == Owner;
    }
}
