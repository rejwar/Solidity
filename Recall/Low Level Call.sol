// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {

    function SendETH(address payable To) external payable {
        (bool success,) = To.call{value: msg.value}("");
        require(success, "ETH sending failed");
    }

    function TransferERC20(address token, address to, uint amount) external {
        bytes memory payload = abi.encodeWithSignature("transfer(address,uint256)", to, amount);
        
        (bool success, ) = token.call(payload);
        require(success, "Transfer failed");
    }
}
