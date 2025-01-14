// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserFriendMapping{
    mapping (address => address[]) public friends;

    function AddFriend(address _user , address _friend) public {
        friends[_user].push[_friend];
    }

    function GetFriends(address _user ) public view returns (address[] memory){
        return  friends[_user];
    }
}
