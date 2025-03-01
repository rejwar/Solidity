// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    function StoreInMemory () public  pure {
        assembly{
            let Value := 0x1234567890abcdef
            mstore(0x40, Value )
        }
    }
}
