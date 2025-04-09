contract AdvancedMint {
    // টোকেনের মৌলিক তথ্য
    string public name;
    string public symbol;
    
    // টোকেন ব্যালেন্স স্টোরেজ
    mapping(address => uint256) public balances;
    
    // ইভেন্ট ডিফিনিশন
    event Transfer(address indexed from, address indexed to, uint256 amount);
    
    constructor(string memory _name, string memory _symbol) public {
        name = _name;
        symbol = _symbol;
    }
    
    function mint(uint256 amount) public {
        // ব্যালেন্স আপডেট
        balances[msg.sender] += amount;
        
        // ইভেন্ট এমিট
        emit Transfer(address(0), msg.sender, amount);
    }
}
