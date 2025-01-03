// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CallDataString{
    function GetStringLength( string calldata input) external  pure returns (uint){
        return bytes(input).length;
    }
}
