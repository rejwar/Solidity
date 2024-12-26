// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FindMax{
    function GetMaxValue(uint[] memory numbers) public pure returns(uint){
        uint max= numbers[0];

        for(uint i=1; i<numbers.length; i++){
            if(numbers[i] >max){
                max = numbers[i];
            }
        }

        return max;
    }
}
