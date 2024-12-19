// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImmutableWithArguments {
    uint public immutable variables;
    address public immutable DEPLOYER;

    constructor (uint _maxSupply) {
        variables = _maxSupply;
        DEPLOYER = msg.sender;
    }

    function getDetails() public view returns (uint, address) {
        return (variables, DEPLOYER);
    }
}
