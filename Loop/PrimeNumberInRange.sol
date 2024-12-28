// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeNumbersInRange{
    uint[] public primes;

    function IsPrime(uint num) internal  pure returns(bool){
        if(num<=1) return false;
        for(uint i= 2; i*i <= num; i++){
            if(num%i== 0) return false;
        }
        return true;
    }

    function FindPrimes(uint n) public {
        for (uint i =2; i<=n; i++){
            if(IsPrime(i)){
                primes.push(i);
            }
        }
    }
}
