// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BeforeAfterExample{
    uint public data;

    modifier LogActions() {
        data =0;
        _;
        data =100;
    }

    function UpdateData() public LogActions{
        data = 50;
    }
}
