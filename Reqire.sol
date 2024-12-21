// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    bytes4 public  myBytes = "Hi";
    bytes3 public myFizedBytes = 0x616263;

    bytes public myDynamicBytes = "Web Dev ";
    uint256 public counter = 1;
    address public sender;

    function addByte() public {
        myDynamicBytes = abi.encodePacked(myDynamicBytes ,"Lab");

    }
    function getByte() public view returns (string memory ){
        return string(myDynamicBytes);
    }

    function incrementNumber() public {
         counter = counter+1;
    }

    function getAddress() public view returns (address){
        return address (this);
    }

    function sendEther(address payable recipient) public payable {
        require(msg.value > 0,"no ether sent ");
        //continue
    }

}
