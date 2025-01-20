// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloGeeks{
    uint256 a ;
    function set(uint x) public {
        a = x;
    }

    function get() public view returns(uint){
        return a;
    }
}
