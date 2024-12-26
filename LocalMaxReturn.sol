// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariables{
    function FindMax (uint a, uint b ) public pure returns(uint)
    {
        uint max;
        {

        max = a * b ;
    }
    return max;
}
}
