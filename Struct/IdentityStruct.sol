// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookLibrary {
    struct Book {
        string Title;
        string Author;
        uint Isbn;
    }

    Book[] public Books;

    function AddBook(string memory Title_, string memory Author_, uint Isbn_) public {
        Books.push(Book(Title_, Author_, Isbn_));
    }

    function GetBook(uint Index_) public view returns (string memory Title, string memory Author, uint Isbn) {
        require(Index_ < Books.length, "Index out of bounds");
        Book memory Book_ = Books[Index_];
        return (Book_.Title, Book_.Author, Book_.Isbn);
    }

    function GetNumberOfBooks() public view returns (uint) {
        return Books.length;
    }
}
