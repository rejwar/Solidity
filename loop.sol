// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract myFirstContract{
    uint []arr;
    uint num=0;

    function loop() public  returns (uint[] memory){
        while(num<5)
        {
            num++;
            arr.push(num);
        }

        return arr;

        do{ num++
        arr.push(num);


        } while (num>) ;
        return arr;


    }

}

