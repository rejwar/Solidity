// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TextConstant{

    string constant public MESSAGE = " Ethereum Rocks! ";

    function getMessage() public pure returns (string memory){
        return MESSAGE;
    }
}
