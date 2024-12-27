// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo{
    uint public num;

    function setter(uint _num) public {
        num = _num;
    }

    function getter() public view returns(uint){
        return num;
    }

    function random() public pure returns (uint){
        uint abc;
        abc = 7;

        return abc;
    }
}
