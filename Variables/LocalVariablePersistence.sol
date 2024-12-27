// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariabePersistence{
    function FirstCall() public pure returns(uint){
        uint counter = 10;
        return counter;
    }

    function SecondCall() public pure returns(uint){
        uint counter =20;
        return counter;
    }
}
