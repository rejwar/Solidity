// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructExample{
    struct Book{
        string title;
        string author;
        uint256 price;
    }

    Book public myBook;

    // set book details;
    function setBook(string memory _title, string memory _author, uint256 _price ) public {
        myBook = Book (_title, _author, _price);
    }
}
