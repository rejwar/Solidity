// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract LocalVariableStorage{
    function StoreInMemory() public pure returns(string memory){
        string memory TempData = "I am stored in Memory";
        return TempData;
    }
}
