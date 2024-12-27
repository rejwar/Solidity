// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo{
    uint public num;

    function setter(uint Num) public {
        num = Num;
    }

    function getter() public view returns(uint){
        return num;
    }
}
