// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract test{
    struct Book{
        string title;
        string author;
        uint book_id;
    }

    Book book;

    function setBook() public {
        book = Book('learn Java' , 'TP' , 1);
    }

    function getBookId() public view returns(uint){
        return book.book_id;
    }
}
