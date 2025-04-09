// ReentrancyProtectedMinting.sol
contract ReentrancyProtectedMinting {
    mapping(address => uint256) public Balances;
    mapping(address => bool) private Locked;
    
    modifier NoReentrancy() {
        require(!Locked[msg.sender], "Reentrancy attempt detected");
        Locked[msg.sender] = true;
        _;
        Locked[msg.sender] = false;
    }
    
    function Mint(uint256 Amount) public NoReentrancy {
        // State changes protected against reentrancy
        Balances[msg.sender] += Amount;
    }
}
