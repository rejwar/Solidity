// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageMemoryCalldata {
    struct User {
        string Name;
        uint Age;
    }

    User public StoredUser;

    function SetStorageUser(string memory Name, uint Age) public {
        StoredUser = User(Name, Age);
    }

    function GetStorageUser() public view returns (string memory, uint) {
        return (StoredUser.Name, StoredUser.Age);
    }

    function UpdateUserMemory(User memory TempUser) public pure returns (string memory, uint) {
        return (TempUser.Name, TempUser.Age);  // শুধুমাত্র ফাংশনের মধ্যে ব্যবহৃত হবে
    }

    function UpdateUserCalldata(User calldata TempUser) external pure returns (string memory, uint) {
        return (TempUser.Name, TempUser.Age);  // শুধুমাত্র External Calls-এর জন্য
    }
}
