// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    bytes4 public  myBytes = "Hi";
    bytes3 public myFizedBytes = 0x616263;

    bytes public myDynamicBytes = "Web Dev ";

    function addByte() public {
        myDynamicBytes = abi.encodePacked(myDynamicBytes ,"Lab");

    }
    function getByte() public view returns (string memory ){
        return string(myDynamicBytes);
    }

}
