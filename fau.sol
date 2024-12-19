pragma solidity ^0.8.0;

contract ConditionalWrite{
    uint public MyNumber ;

    function SetMyNumber(uint _value) public{
        require (_value > 10 , "Value must be greater than 10");

        MyNumber = _value;
    }
}
