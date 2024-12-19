// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherUinits{
    uint256 public oneWei = 1 wei;
    bool public isOneWei = (oneWei ==1);


    uint256 public  OneGwei = 1 gwei;
    bool public IsOneGwei = (OneGwei == 1);

    uint256 public  OneEther = 1 ether;
    bool public IsOneEther = (OneEther == 1e18);
}
