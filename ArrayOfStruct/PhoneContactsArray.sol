// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PhoneContacts {
    struct Contact {
        string Name;
        uint Number;
    }

    Contact[] public Contacts;

    function AddContact(string memory Name_, uint Number_) public {
        Contacts.push(Contact(Name_, Number_));
    }

    function GetContact(uint Index) public view returns (string memory, uint) {
        Contact memory contact_ = Contacts[Index];
        return (contact_.Name, contact_.Number);
    }
}
