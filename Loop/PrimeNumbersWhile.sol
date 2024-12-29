// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeNumberwhile{
    uint[] public Primes;

    function IsPrime(uint num) internal pure returns(bool){
        if(num <=1) return false;

        uint i=2;
        while (i*i <= num){
            if(num%i==0){
                return false;
            }
            i++;
        }
        return true;
    }

    function findPrimesBelow100() public {
        uint num =2;
        while(num <100){
            if(IsPrime(num)){
                Primes.push(num);
            }
            num++;
        }
    }
}
