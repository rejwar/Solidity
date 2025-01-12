// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookContract {

    struct Book {
        string Title;
        string Author;
        uint PublicationYear;
    }

    Book[] public Books; // কনট্র্যাক্টের মধ্যে বুকে স্টোরেজ ডিক্লেয়ার

    function AddBook(string memory Title_, string memory Author_, uint Year_) public {
        Books.push(Book(Title_, Author_, Year_));
    }

    function GetBook(uint Index) public view returns (string memory, string memory, uint) {
        require(Index < Books.length, "Invalid index");
        Book memory book = Books[Index];
        return (book.Title, book.Author, book.PublicationYear);
    }
}
