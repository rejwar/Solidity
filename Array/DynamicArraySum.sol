// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArraySum{
    uint[] public Numbers;

    function AddElement(uint Value) public {
        Numbers.push(Value);
    }

    function CalculateSum() public  view returns (uint){
        uint sum = 0;
        for( uint i = 0; i<Numbers.length; i++){
            sum += Numbers[i];
        }
        return sum;
    }
}
