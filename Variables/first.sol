// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    uint256 public storeDate;

    function set(uint256 x) public {
        storeDate = x;
    }

    function get() public view returns(uint256){
        return storeDate;
    }
}
