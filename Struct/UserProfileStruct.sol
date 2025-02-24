// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfileStruct {
    struct UserProfile {
        string Name;
        uint Age;
        address Wallet;
    }

    UserProfile public User;

    function SetUser(string memory Name, uint Age, address Wallet) public {
        User = UserProfile(Name, Age, Wallet);
    }

    function GetUser() public view returns (string memory, uint, address) {
        return (User.Name, User.Age, User.Wallet);
    }
}
