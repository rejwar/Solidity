// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Identity{
    string name;
    uint age;

    constructor() public 
    {
        name = "Rejwar";
        age =17;
    }

    function getAge() view public returns (uint)
{
return name;
}

    function getName() view public returns (string memory)
{
return age;
}

function getAge() public {
    age = age+1;
}

}
