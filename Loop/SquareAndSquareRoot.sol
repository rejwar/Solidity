// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SquareAndSquareRoot{

    struct Result{
        uint Number;
        uint Square;
    }

    Result[] public Results;

    function CalculateSquares() public {
        for(uint i=1; i<=10; i++){
            Results.push(Result(i,i*i));
        }
    }

}
