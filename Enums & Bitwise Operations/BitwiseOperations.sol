// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserMappingStruct {
    struct User {
        string Name;
        uint Age;
    }

    mapping(address => User) public UserDetails;

    function SetUser(string memory Name, uint Age) public {
        UserDetails[msg.sender] = User(Name, Age);
    }

    function GetUser(address UserAddress) public view returns (string memory, uint) {
        return (UserDetails[UserAddress].Name, UserDetails[UserAddress].Age);
    }
}
