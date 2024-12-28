// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CountEvenOdd{
    uint public EvenCount;
    uint public OddCount;

    function countEvenOdd() public {
        EvenCount =0;
        OddCount =0;

        for( uint i=1 ; i<=10;i++){
            if (i%2 ==0){
                EvenCount++;
            }else{
                OddCount++;
            }
        }
    }
}
