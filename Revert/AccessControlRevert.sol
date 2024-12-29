// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract AccessControlRevert{
        address public admin;

        constructor() {
            admin = msg.sender;
        }

        function RestrictedAction() public view{
            if(msg.sender != admin){
                revert("Access Denied : Only admin can perfrom this action ");
            }
        }
    }
