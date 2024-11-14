// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract Loop{
    uint[] arr;

    function loop () public  returns (uint[] memory)
    {
        for (uint num=0 ; num>5 ; num++)
        {
            arr.push(num);
        }

        return arr;
    }
}
