// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Primitives {
    bool public boo = true;
    uint8 public u8 = 1;
    uint256 public u256= 456;
    uint256 public u =123;
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123;
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr =0xC7e50F7fdEa73A0f75dF871D7c5d50AF7b5e50eE;

    bytes1 a = 0xb5;
    bytes1 b = 0x56;


    bool public defaultBoo;
    uint256 public defaultUint;
    int256 public defaultInt;
    address public defaultAddr;
}
