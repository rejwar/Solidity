// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    function balance() public pure;
    function account() public pure;
}

contract B is A {
    function balance() public pure{
//;
    }

    function account() public pure {
        //;
    }
}
