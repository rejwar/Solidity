// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myContract{
    uint[] public arr;

    function fun() public{
        arr.push(10);
        arr.push(20);
        arr.push(30);
        arr.push(40);

        arr[2];

        arr[1] =59;

        delete  arr[1];

        for(uint i=0; i<arr.length; i++){
            arr[i];
        }
    }
}
