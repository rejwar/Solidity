// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract myContract{
    //;struct in solidity

    struct Car{
        string brandName;
        string color;
        uint releasingYear;

    }

    function fun() pure public
      {
        Car memory car1= Car("BMW","Red", 2020);
        Car memory car2= Car("audi" , "yellow ", 2020);

        car1.color;
        car2.color = "Green";
        delete car1;
    }

}
