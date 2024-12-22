// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract Test{
    string[] array;

    function push(string calldata _text) external{
        array.push(_text);
    }

    function get() external view returns (string[] memory){
    return array;
}
}
