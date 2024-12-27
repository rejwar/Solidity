// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableShaowding{

    uint public StateVariable = 100;

    function ShadowStateVariable() public pure returns (uint){
        uint StateVariable = 50;
        return StateVariable;
    }
}
