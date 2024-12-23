// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test{
    address public owner = msg.sender;
    uint public creationTime = now;

    modifier onlyBy(address _account)
    {
        require(
            msg.sender == _account,
            "sender not authorized"
        );
        _;
    }

    function changeOwner(address _newOwner) public onlyBy (owner){
        owner = _newOwner;
    }
    modifier costs(uint _amount),
    "not enough Ether provided"
}
