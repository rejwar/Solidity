pragma solidity ^0.8.0;

contract SecureContract {
    mapping(address => uint256) public balances;

    function withdraw(uint256 _amount) public {
        // Checks
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        // Effects
        balances[msg.sender] -= _amount;

        // Interactions
        (bool success, ) = msg.sender.call{value: _amount}("");
        require(success, "Transfer failed");
    }
}
