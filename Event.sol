// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract myContract{
    // event in solidity

    event NewOffer(string offer);



    function offer() public  {
        emit NewOffer("This is the new offer for you ");
    }
}
