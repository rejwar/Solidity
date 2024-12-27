// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenDecimalExample{
    uint8 public constant Decimals = 18;

    function SmallestUint() public pure returns(uint256){
        return 10**Decimals;
    }
}
