// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringConstants{
    string constant public MESSAGE = "Welcome to solidity";

    function getMessage() public pure returns(string memory){
        return MESSAGE;
    }
}
