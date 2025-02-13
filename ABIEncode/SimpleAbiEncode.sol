// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example{
    function encodeData( uint x , string memory str) public pure returns(bytes memory)
    {
        return  abi.encode(x, str);
    }
}
