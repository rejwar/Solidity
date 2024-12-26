// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenStorage {
    string public TokenName;
    uint public TotalSupply;

    constructor(string memory _name, uint _totalSupply) {
        TokenName = _name;
        TotalSupply = _totalSupply;
    }

    function getTokenDetails() public view returns (string memory, uint) {
        return (TokenName, TotalSupply);
    }
}
