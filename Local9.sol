// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract VariablesContractTest{
    uint age;
    constructor() public {
        age = 10;
    }

    function add() public view returns(uint){
        uint localVariable1 = 12;
        uint localVariable2 = 2;
        uint sum = localVariable1 + localVariable2;
        return sum;
    }
}
