// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract CallDataExample {
    function ProcessArray(uint[] calldata data) external pure returns (uint){
        uint sum =0;
        for (uint i=0; i <data.length; i++){
            sum += data[i]; 
        }
    }
}
