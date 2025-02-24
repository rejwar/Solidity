// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserRoleEnum{

        enum Role { Guest , User , Admin} 

        Role public UserRole; 

        function SetRole(uint RoleIndex ) public {
            require (RoleIndex <= uint(Role.Admin), "Invalid Roel");
            UserRole = Role(RoleIndex);
        }

        function GetRole() public  view returns (Role){
            return UserRole;
        }
}
