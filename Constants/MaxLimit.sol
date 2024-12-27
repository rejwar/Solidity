// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaxTransferLimit{
    uint public constant MaxTransferLimit = 5000;

    function Transfer(uint amount) public pure returns (string memory){
        if(amount > MaxTransferLimit){
            return "Transfer amount exceeds max limit";
        }

        return "Transfer Successful!";
    }
}
