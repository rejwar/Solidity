// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract RevertExample{
    function TestRevert(uint256 x) public pure{
        if(x <10){
            assembly{
                mstore(0x80, "Value is too loow ")
                revert(0x80, 20)
            }
        }
    }
}
