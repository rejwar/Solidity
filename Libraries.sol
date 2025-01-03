// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

library Search{
    function IndexOf(uint[] storage self , uint value) public view returns (uint){
        for (uint i =0; i<self.length; i++) if (self[i]==value)return i;
        return uint(-1);
    }
}

contract Test{
    uint[] data;
    constructor() public  {
        data.push(10);
        data.push(20);
        data.push(30);
        data.push(40);
    }
    
function isValuePresent() external view returns (uint){
    uint value = 4;

    uint index = Search.IndexOf(data, value);
    return index;
}
}
