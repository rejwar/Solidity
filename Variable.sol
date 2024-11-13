contract FirstContract{
    // variable visibility in solidity

    uint public  privateVar;
    function privateVar() public view returns(uint){

    }

    function fun() public view returns (uint){
        uint sum = privateVar +10;
    }

}

contract secondConrtract{
    function funNew() public  view returns (uint){
        uint mult = privateVar *10;
    } 
}
