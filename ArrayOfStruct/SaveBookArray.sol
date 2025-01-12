// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SaveBooks{
    struct Book{
        string Title;
    }

    Book[] public Books;

    function AddBook(string memory Title_) public {
        Books.push(Book(Title_));
    }
}
