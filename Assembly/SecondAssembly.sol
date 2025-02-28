uint public  data;

function SetData (uint Data_) public  {
    assembly{
        sstore(0, Data_)
    }
}

function GetData() public view returns (uint){
    assembly{
        let result := sload(0)
        mstore(0x40, result)
        return (0x40, 32)
    }
}
