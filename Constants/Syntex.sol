// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    uint public constant MaxSupply = 10000;
    string public constant TokenName="UnderDog";
    address public constant Owner = 0xC7e50F7fdEa73A0f75dF871D7c5d50AF7b5e50eE;

    function GetMaxSupply() public pure returns (uint){
        return MaxSupply;
    }
}
