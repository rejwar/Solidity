 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PalindromeWhile {
    function IsPalindrome(uint num) public pure returns(bool){
        uint original = num;
        uint reverse = 0;

        while (num>0){
            uint digit = num%10;
            reverse = reverse*10 +digit;
            num/=10;
        }
        return original ==reverse;
    }
}
