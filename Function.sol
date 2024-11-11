pragma ^0.8.0;

contract FirstContract{

uint age;

function getAge() public view returns(unit){
    return age;
}


function setAge(uint _age) public {
    age = _age;
}
}
