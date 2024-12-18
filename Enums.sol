// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumExample {
    enum Status {Pending, Shiped , Delivered}
    Status public  currentStatus;

    function setStatus(Status _status) public {
        currentStatus = _status;
    }
}
