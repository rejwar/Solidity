pragma solidity ^0.8.0;

contract SHA256Example {
    function HashData(string memory Data_) public pure returns (bytes32) {
        return sha256(abi.encodePacked(Data_));
    }
}
