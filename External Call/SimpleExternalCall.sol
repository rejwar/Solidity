
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface TargetContract{
    function TargetFunction( uint256 Value) external returns (bool);
    }

    contract Mycontract{
        function CallTarget(address TargetAddress , uint256 Value) public  returns (bool){
            TargetContract TC = TargetContract( TargetAddress);
            return TC.TargetFunction(Value);
        }
    }
