// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingWithStruct{
    struct UserInfo{
    string Name;
    uint Age;
}

mapping (address => UserInfo) public UserProfiles;

function SetProfile(address User_ , string memory Name_ , uint Age_) public {
    UserProfiles[User_] = UserInfo(Name_ , Age_);
}

function GetProfile(address User_) public view returns (string memory , uint){
    UserInfo memory Profile = UserProfiles[User_];
    return (Profile.Name , Profile.Age);
}
}
