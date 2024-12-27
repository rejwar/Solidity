// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NodefaultValue{
    function UninitializedVariable() public pure returns(uint){
        uint x =10;
        return x;
    }
}
