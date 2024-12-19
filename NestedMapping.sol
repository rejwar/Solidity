// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NestedMapping{
    mapping (address => mapping(uint =>bool )) public permission;

    function setPermissoin (address _user , uint _index , bool _hasPermission) public {
        permission[_user][_index] = _hasPermission;

    }

    function checkPermission (address _user , uint _index) public view returns (bool)
    {
        return permission[_user][_index];
    }
}
