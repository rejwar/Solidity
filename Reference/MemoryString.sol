// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringMemoryExample{
    string public MyString = "Blockchain";

    function GetMemoryString() public pure returns (string memory){
        string memory TempString = "Solidity";
        return TempString;
    }
}
