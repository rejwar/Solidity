// SafeMinting.sol
contract SafeMinting {
    mapping(address => uint256) public Balances;
    
    event Transfer(address indexed From, address indexed To, uint256 Amount);
    
    function SafeMint(uint256 Amount) public {
        // Check phase
        require(Amount > 0, "Invalid amount");
        
        // Effects phase
        emit Transfer(address(0), msg.sender, Amount);
        
        // Interactions phase
        Balances[msg.sender] += Amount;
    }
}
