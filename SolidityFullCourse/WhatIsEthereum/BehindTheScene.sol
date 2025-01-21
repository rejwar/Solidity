// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Inbox{
    string public Message;


    function Inbox(string InitializedMessage) public {
        Message = InitialMessage;
    }

    function SetMessage(string NewMessage) public{
        Message = NewMessage;
    }
}
