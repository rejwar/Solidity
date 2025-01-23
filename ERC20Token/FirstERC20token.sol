
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import 'https://github.com/rejwar/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract MyToken is ERC20{
    address public admin;
    constructor() ERC20 ('MyToken' , 'MTN'){
        _mint(msg.sender, 10000 * 10 * 18);
    }

    function mint(address to , uint amount) external {
        require(msg.sender == admin, 'Only admin');
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender , amount);
    }
}

