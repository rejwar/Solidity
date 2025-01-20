// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressChecker{
    function IsContract(address Address) public view returns(bool){
        uint32 size;
        assembly{
            size := extcodesize(Address)
        }
        return (size >0);
    }
}
