// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract PrimeNumbers{

    uint[] public primes;

    function IsPrime(uint num) internal pure returns(bool){
        if(num <=1) return false;
        for(uint i=2; i<num; i++){
            if(num % i ==0) return false;
        }
        return true;
    }

    function FindPrime() public {
        for(uint i=1 ; i<=10; i++){
            if(IsPrime(i)){
                primes.push(i);
            }
        }
    }
}
