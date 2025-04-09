pragma solidity ^0.8.0;

contract MintingExample {
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    function mint(address recipient, uint256 amount) public {
        totalSupply += amount; // নতুন tokens যোগ করা
        balances[recipient] += amount; // recipient এর ব্যালেন্স আপডেট
    }
}
