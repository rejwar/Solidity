// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractStatus{
    bool public IsActive;

    constructor(bool Status){
        IsActive = Status;
    }

    function Activate() public {
        IsActive = true;
    }

    function Deactive() public {
        IsActive = false;
    }

    function GetStatus() public view returns(bool){
        return IsActive;
    }
}
