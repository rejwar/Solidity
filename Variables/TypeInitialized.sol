// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  Types{

    bool public boolean = false;

    int32 public  IntVar = -60313;

    string public str = "Geekfor Geeks";

    bytes1 public  b = " a ";

    enum MyEnum {geeks, For, Geeks,}

    function Enum() public pure returns(
        MyEnum){
            return MyEnum.Geeks;
    }
}
