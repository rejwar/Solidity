// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract SimpleExample{
    event LogReceive(address sender, uint amount);

    receive() external payable {
        emit LogReceive(msg.sender , msg.value);
     }
}
