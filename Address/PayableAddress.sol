// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressExample{
    address public MyAddress;

    address payable public MyPayableAddress;

    function SetAddress(address Address_) public {
        MyAddress = Address_;
    }

    function SetPayableAddresss(address payable PayableAddress_) public {
        MyPayableAddress = PayableAddress_;
    }
}
