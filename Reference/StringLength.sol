// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringLength {
    function GetStringLength(string memory str ) public pure returns(uint ){
        return bytes(str).length;
    }
}


