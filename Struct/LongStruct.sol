// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo{
    struct Students{
    string  Name;
    uint Roll;
    bool Pass;
}

    Students public S1;

function insert(string memory Name_ , uint Roll_ , bool Pass_) public {
    S1.Name = Name_;
    S1.Roll = Roll_;
    S1.Pass = Pass_;
}

function getter() public  view returns (Students memory) {
    return S1;
}

}
