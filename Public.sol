// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract test {

function callAddMod() public pure returns(uint){
    return addmod(4, 5, 6);
}

function callMulMod() public pure returns (uint){
    return mulmod(4, 5, 8);
}
}
