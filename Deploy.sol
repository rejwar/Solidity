// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract firstContract{

uint number;

constructor (uint number){
    number = _number;
}

function get() public  view  returns (uint)
{
    return number;

}

function set(uint _number ) public {
    number =_number ;
}

}
