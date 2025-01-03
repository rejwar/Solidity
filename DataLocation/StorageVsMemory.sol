// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageVsMemory{
    uint[] public Numbers;

    function AddToStorage(uint Numb) public {
        Numbers.push(Numb);
    }

    function ModifyWithMemory() public view returns(uint[] memory){
        uint[] memory TempNumbers = Numbers;
        TempNumbers[0] =999;
        return TempNumbers;
    }
}
