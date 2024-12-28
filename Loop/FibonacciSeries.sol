// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FibonacchiSeries{
    uint[] public Fibonacci;

    function GenerateFibonacci(uint n) public {
        uint a =0;
        uint b =1;
        Fibonacci.push(a);
        Fibonacci.push(b);
        for(uint i =2; i<n; i++){
            uint next = a+b;
            Fibonacci.push(next);
            a=b;
            b = next;
        }
    }
}
