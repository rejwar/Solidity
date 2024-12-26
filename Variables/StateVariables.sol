// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateVariablesExample {
    uint256 public MyUint;
    int256 public MyInt;
    bool public MyBool;
    address public MyAddress;
    string public MyString;
    bytes32 public MyBytes32;
    bytes public MyBytes;
    uint[] public MyArray;
    mapping (address => uint256) public MyMapping;

    struct MyStruct {
        uint256 x;
        string y;
    }
    MyStruct public MyStructVariable = MyStruct(0, "");

    function setUint(uint256 _x) public {
        MyUint = _x;
    }

    function setInt(int256 _x) public {
        MyInt =  _x;
    }

    function setBool(bool _x) public {
        MyBool = _x;
    }

    function setAddress(address _x) public {
        MyAddress = _x;
    }

    function setString(string memory _x) public {
        MyString = _x;
    }

    function setBytes(bytes memory _x) public {
        MyBytes = _x;
    }

    function setBytes32(bytes32 _x) public {
        MyBytes32= _x;
    }

    function pushArray(uint _x) public {
        MyArray.push(_x);
    }

    function setMapping(address _addr, uint256 _val) public {
        MyMapping[_addr] = _val;
    }

    function setStruct(uint256 _x, string memory _y) public {
        MyStructVariable = MyStruct(_x, _y);
    }
}
