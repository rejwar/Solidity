// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OrderStatus {
    enum Status {Pending, Shipped, Delivered, Canceled}

    Status public CurrentStatus;

    constructor(){
        CurrentStatus = Status.Pending;
    }

    function SetStatus (Status _status) public {
        CurrentStatus = _status;
    }

    function GetStatus() public view returns (uint) {
        return uint (CurrentStatus);
    }
}
