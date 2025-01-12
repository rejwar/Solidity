// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserEmails{
    struct User{
        string Emails;
    }

    User[] public users;

    function AddUsers(string memory Emails_) public {
        users.push(User(Emails_));
    }
}
