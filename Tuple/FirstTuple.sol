// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TupleExample{
    function GetStudentInfo() public pure returns (string memory , uint , bool){
        return  ("Alice" , 21, true);
    }
}
