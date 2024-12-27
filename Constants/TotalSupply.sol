// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Token{
    string public constant Name = "UnderDog";
    uint public TotalSupply = 100000;


    function GetDetails() public pure returns( string memory, uint)
    {
        return(Name,TotalSupply);
    }
}
