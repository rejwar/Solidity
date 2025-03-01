// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ContractSize{
    function GetCodeSize( address Addr) public view returns (uint){
        assembly{
            let size := extcodesize(Addr)
            mstore (0x40, size)
            return (0x40, 32)  
        }
    }
}
