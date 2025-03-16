// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModuleOperation{
    function AddModule(uint256 x , uint256 y , uint256 k) public  pure returns (uint256){
        return addmod(x, y, k);
    }

    function mulModulo(uint256 x , uint256 y , uint256 k) public pure returns( uint256){
        return mulmod(x, y, k); 
           }
}
