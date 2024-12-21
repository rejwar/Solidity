// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Animal{
    function eat() public virtual returns(bytes32);
}
