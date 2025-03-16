pragma solidity ^0.8.0;

contract RIPEMD160Example {
    function HashData(string memory Data_) public pure returns (bytes20) {
        return ripemd160(abi.encodePacked(Data_));
    }
}
