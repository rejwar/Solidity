// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract FibonacciWhile{
    uint[] public Fibonacci;
    
    function GenerateFibonacci() public {
        uint a=0;
        uint b=0;

        Fibonacci.push(a);
        Fibonacci.push(b);

        uint count =2;
        while (count <10){
            uint next = a+b;

            Fibonacci.push(next);
            a=b;
            b= next;
        }
    }
}
