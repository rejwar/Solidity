// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserListStruct {
    struct User {
        string Name;
        uint Age;
    }

    User[] public Users;

    function AddUser(string memory Name, uint Age) public {
        Users.push(User(Name, Age));
    }

    function GetUser(uint Index) public view returns (string memory, uint) {
        require(Index < Users.length, "Invalid index");
        return (Users[Index].Name, Users[Index].Age);
    }
}
